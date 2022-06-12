--[[
		JarLore Command Script V 0.75
		LocalScript based admin
		Made by jarredbcv and Canary

		~ChangeLogs~
		;Replaced old kick with bypass

]]--
--hue
version = 0.7
wait(.1)
script.Parent=nil
local lp = game.Players.LocalPlayer
admins = {}
local pt = {}
local pt2 = {}
local pt3 = {}
local rad = math.rad
local pi = math.pi
local cf = CFrame.new
local ca = CFrame.Angles
local mr = math.random
local count = 0
local bcount = 0
local mode = "origin"
local bc = BrickColor.new
local slct = 0
local speed = 1
local guit = {}
local send = cf()
local as = 4
local events = {}
local fragdeb = false
local ignore = {}
local armloop = false
local grab = nil
local gdist = -5
local tim = 0
local c2timer = 0
local banned = {}
local cmds = {}
local clogs = {}
local bet = "!"

--[["The best ever!"]]--

local lerp = function(a,b,c)
    return a+(b-a)*c
end

local clerp = function(c1,c2,t)
		return c1:lerp(c2,t)
end

local ClrLerp = function(Mesh,Clr2,Step)
	Clr1 = Mesh.VertexColor
	Mesh.VertexColor = Vector3.new(lerp(Clr1.X,Clr2.X,Step),lerp(Clr1.Y,Clr2.Y,Step),lerp(Clr1.Z,Clr2.Z,Step))
end

local GetDiscoColor = function(hue)
  local section = hue % 1 * 3
	local secondary = 0.5 * math.pi * (section % 1)
  if section < 1 then
    return Vector3.new(1, 1 - math.cos(secondary), 1 - math.sin(secondary))
  elseif section < 2 then
  	return Vector3.new(1 - math.sin(secondary), 1, 1 - math.cos(secondary))
  else
    return Vector3.new(1 - math.cos(secondary), 1 - math.sin(secondary), 1)
  end
end

local new = function(Object, Parent, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	return Object
end

local intable = function(tab, obj)
	for _, v in ipairs(tab) do
		if v == obj then
			return _
		end
	end
	return 0
end

local so = function(id,par,lo,pi,tm)
  spawn(function()
    local s = new("Sound",par,{Looped=lo;Pitch=pi;SoundId = "http://roblox.com/asset/?id="..id})
    wait() -- tnx anti
    s:play()
    s.Volume=.8
    game.Debris:AddItem(s,tm)
	end)
  return s
end

local Lightning = function(Start,End,Times,Offset,Color,Thickness)
  local magz = (Start - End).magnitude
  local curpos = Start
  local trz = {-Offset,Offset}
  for i=1,Times do
    local li = new("Part",workspace,{Size=Vector3.new(Thickness,Thickness,magz/Times);BrickColor=bc('White');CanCollide=false;Anchored=true})
    local m = new("SpecialMesh",li,{MeshId='rbxassetid://9856898';Scale=Vector3.new(Thickness*2,Thickness*2,magz/Times*2);TextureId='http://www.roblox.com/asset/?id=55687933';VertexColor = Color})
    local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
    local trolpos = cf(curpos,End)*cf(0,0,magz/Times).p+ofz
    if Times == i then
      local magz2 = (curpos - End).magnitude li.Size = Vector3.new(Thickness,Thickness,magz2)
      li.CFrame = cf(curpos,End)*cf(0,0,-magz2/2)
    else
      li.CFrame = cf(curpos,trolpos)*cf(0,0,magz/Times/2)
    end
    curpos = li.CFrame*cf(0,0,magz/Times/2).p
    game.Debris:AddItem(li,.3)
    Spawn(function()
      for i=1,10 do
        game:service"RunService".RenderStepped:wait()
        li.Transparency = li.Transparency+.1
      end
      li:Destroy()
    end)
  end
end
lp:GetMouse().KeyDown:connect(function(k)
	k = k:lower()
	if string.byte(k) == 49 and textbox then
		textbox:CaptureFocus()
	end
end)
local explosion = function(col1,col2,cfr,sz,rng)
	local a = new("Part",workspace,{Size=Vector3.new(1,1,1);CanCollide=false;Anchored=true})
	local a2 = new("Part",workspace,{Size=Vector3.new(1,1,1);CanCollide=false;Anchored=true})
	local a3 =	new("Part",workspace,{Size=Vector3.new(1,1,1);CanCollide=false;Anchored=true})
	v1,v2,v3=sz.x,sz.y,sz.z
	local m = new("SpecialMesh",a,{MeshId='rbxassetid://1185246';Scale=Vector3.new(v1,v2,v3);TextureId='http://www.roblox.com/asset/?id=55687933';VertexColor = col1})
	local m2 = new("SpecialMesh",a2,{MeshId='rbxassetid://9856898';Scale=Vector3.new(v1/3*2,v2/3*2,v3/3*2);TextureId='http://www.roblox.com/asset/?id=55687933';VertexColor = col2})
	local m3 = new("SpecialMesh",a3,{MeshId='rbxassetid://9856898';Scale=Vector3.new(v1/3*2,v2/3*2,v3/3*2);TextureId='http://www.roblox.com/asset/?id=55687933';VertexColor = col2})
	a.CFrame=cfr
	a2.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())
	a3.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())
	for i,v in pairs(workspace:children()) do
  	if v:IsA("Model") and v:findFirstChild("Humanoid") then
    	if v:findFirstChild("Head") and v:findFirstChild("Torso") then
      if (v:findFirstChild("Torso").Position - a.Position).magnitude < rng and v.Name ~= lp.Character.Name then
        	v:BreakJoints()
      	end
    	end
  	end
	end
	game.Debris:AddItem(a,.6)
	game.Debris:AddItem(a2,.6)
	game.Debris:AddItem(a3,.6)
	Spawn(function()
  	while true do
    	game:service"RunService".RenderStepped:wait()
    	if a.Transparency >= 1 then a:Destroy() a2:Destroy() a3:Destroy() break end
      m.Scale=m.Scale+Vector3.new(.1,0.1,0.1)
      m2.Scale=m2.Scale+Vector3.new(.1,0.1,0.1)
      m3.Scale=m3.Scale+Vector3.new(.1,0.1,0.1)
      a2.CFrame=a2.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))
      a3.CFrame=a3.CFrame*CFrame.Angles(-math.rad(2),-math.rad(2),-math.rad(2))
      a.Transparency=a.Transparency+0.05
      a2.Transparency=a2.Transparency+0.05
      a3.Transparency=a3.Transparency+0.05
    end
  end)
end

local frag = function(hit)
	local t = {}
	local A = {-1, 1}
	if hit.Name ~= "Base" and hit.Name ~= "adpart" and hit.Parent ~= lp.Character and hit.Parent.Parent ~= lp.Character and fragdeb ~= true then
		so("201858024",ch.Torso,false,math.random(7,11)/10,4)
		fragdeb = true
		hit:BreakJoints()
		local X, Y, Z = 0, 0, 0
		for x = 1, 2 do
			if hit.Size.X > 1 then
				X = hit.Size.X/2
			end
			for y = 1, 2 do
				if hit.Size.Y > 1 then
					Y = hit.Size.Y/2
				end
				for z = 1, 2 do
					if hit.Size.Z > 1 then
						Z = hit.Size.Z/2
					end
					local obj = Vector3.new(X*A[x],Y*A[y],Z*A[z])
					if intable(t, obj) == 0 and (X ~= 0 or Y ~= 0) and (X ~= 0 or Z ~= 0)  and (Y ~= 0 or Z ~= 0) then
						table.insert(t, obj)
					end
				end
			end
		end
		if #t > 0 then
			local h = hit:clone()
			local par = hit.Parent
			hit:Destroy()
			hit = h:clone()
			for _, v in ipairs(t) do
				local n = hit:clone()
				--n.FormFactor = "Custom"
				n.Size = hit.Size/2
				local x,y,z = hit.CFrame:toEulerAnglesXYZ()
				n.CFrame = CFrame.new(v/2)*CFrame.Angles(x,y,z) +hit.Position
				n.Rotation = hit.Rotation
				n.Velocity = Vector3.new(0,0,0)
				n.RotVelocity = Vector3.new(0,0,0)
				n.Parent = par
				if n.Size.X <= 1 or n.Size.Z <= 1 then n.Anchored = false;n:BreakJoints();n.Velocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10)) spawn(function() for i=1,10 do wait() n.Transparency=n.Transparency+.1 end n:Destroy() end) end
				n:BreakJoints()
			end
		end
	end
	wait()
	fragdeb = false
end

local notif = function(txt)
	for i,v in pairs(guit) do
		v.Position = v.Position - UDim2.new(0,0,0.03,0)
	end
	local notif = new("TextLabel",notificationbin,{TextWrapped = true;TextStrokeTransparency = 0;BorderSizePixel = 2;TextScaled = true;BackgroundColor3 = Color3.new(0, 0, 0);BackgroundTransparency = 0.5;Size = UDim2.new(0.2, 0, 0.02, 0);TextColor3 = Color3.new(1, 1, 1);BorderColor3 = Color3.new(1, 1, 1);Text = "{Notification}:"..txt;Position = UDim2.new(0.395, 0, 0.942, 0);TextXAlignment = Enum.TextXAlignment.Left})
	so("205318910",lp.PlayerGui,false,1)
	table.insert(guit,notif)
	spawn(function() wait(5)
		for i=1,20 do wait()
			notif.BackgroundTransparency = notif.BackgroundTransparency +.05
			notif.TextTransparency = notif.TextTransparency +.05
			notif.TextStrokeTransparency = notif.TextStrokeTransparency +.05
		end
		notif:Destroy()
		table.remove(guit,1)
	end)
end

local function getPlayer(name)
	local nameTable = {}
	name=name:lower()
	if name == "me" then
		nameTable[#nameTable+1]=admin
	elseif name == "others" then
		for i,v in pairs(gPlayers:GetChildren()) do
            if v:IsA'Player'then
                if v.Name~=admin then
                    nameTable[#nameTable+1]=v.Name
                end
            end
		end
	elseif name == "all" then
		for i,v in pairs(gPlayers:GetChildren()) do
            if v:IsA'Player'then 
                nameTable[#nameTable+1]=v.Name
            end
		end
	else
		for i,v in pairs(gPlayers:GetChildren()) do
			local lname = v.Name:lower()
			local i,j = lname:find(name)
			if i == 1 then
				return {v.Name}
			end
		end
	end
	return nameTable
end

local makeg = function()
	local jlgui = new("ScreenGui",lp.PlayerGui,{Name="JL_gui"})
	local frame = new("Frame",jlgui,{Size = UDim2.new(0.2, 0, 0.025, 0);BorderColor3 = Color3.new(1, 1, 1);Position = UDim2.new(0.395, 0, 0.97, 0);BorderSizePixel = 2;BackgroundTransparency = 0.5;BackgroundColor3 = Color3.new(0, 0, 0)})
	local textlabel = new("TextLabel",frame,{TextStrokeTransparency = 0;BorderSizePixel = 0;BackgroundColor3 = Color3.new(0, 0, 0);BackgroundTransparency = 0.9;Size = UDim2.new(0.2, 0, 1, 0);TextColor3 = Color3.new(1, 1, 1);Text = "Execute >";TextXAlignment = Enum.TextXAlignment.Right})
	textbox = new("TextBox",frame,{TextStrokeTransparency = 0;BackgroundColor3 = Color3.new(0, 0, 0);Position = UDim2.new(0.201, 0, 0, 0);Size = UDim2.new(0.785, 0, 1, 0);BackgroundTransparency = 0.9;Text = "Press [R-CTRL] to focus";TextColor3 = Color3.new(1, 1, 1);TextXAlignment = Enum.TextXAlignment.Left})
	local frame_2 = new("Frame",frame,{Size = UDim2.new(0.2, 0, 1, 0);BorderColor3 = Color3.new(1, 1, 1);Position = UDim2.new(1.02, 0, 0, 0);BorderSizePixel = 2;BackgroundTransparency = 0.5;BackgroundColor3 = Color3.new(0, 0, 0)})
	textlabel_2 = new("TextLabel",frame_2,{TextStrokeTransparency = 0;BorderSizePixel = 0;BackgroundColor3 = Color3.new(0, 0, 0);BackgroundTransparency = 0.9;Size = UDim2.new(1, 0, 1, 0);TextColor3 = Color3.new(1, 1, 1);BorderColor3 = Color3.new(0, 0, 0);Text = "FPS:n/a"})
	local frame_3 =	new("Frame",frame,{Size = UDim2.new(0.2, 0, 1, 0);BorderColor3 = Color3.new(1, 1, 1);Position = UDim2.new(-.222, 0, 0, 0);BorderSizePixel = 2;BackgroundTransparency = 0.5;BackgroundColor3 = Color3.new(0, 0, 0)})
	local textlabel_3 = new("TextLabel",frame_3,{TextStrokeTransparency = 0;BorderSizePixel = 0;BackgroundColor3 = Color3.new(0, 0, 0);BackgroundTransparency = 0.9;Size = UDim2.new(1, 0, 1, 0);TextColor3 = Color3.new(1, 1, 1);BorderColor3 = Color3.new(0, 0, 0);Text = "JarLore V"..version})
	notificationbin = Instance.new("Folder", jlgui,{Name="Notification_bin"})
	listbin = Instance.new("Folder", jlgui,{Name="List_bin"})
	textbox.FocusLost:connect(function()
		local msg = textbox.Text
		speaker = lp
		local usedACommand=false
		for i,v in pairs(cmds) do
			if msg:lower():match(bet..v.Usage:lower()..'% ?') and usedACommand==false then
				usedACommand=true
				local Run, Error = ypcall(function()
					spawn(function()
						v.Function(lp.Name,msg:lower():match(bet..v.Usage:lower()..'%>?(.+)')or'')
					end)
				end)
				if Error then
					notif(Error)
				end
			end
		end
		textbox.Text = "Press [R-CTRL] to focus"
	end)
end
		lp.Chatted:connect(function(a)
		speaker = lp
		local msg = a
		local usedACommand=false
		for i,v in pairs(cmds) do
			if msg:lower():match(bet..v.Usage:lower()..'% ?') and usedACommand==false then
				usedACommand=true
				local Run, Error = ypcall(function()
					spawn(function()
						v.Function(speaker.Name,msg:lower():match(bet..v.Usage:lower()..'%>?(.+)')or'')
					end)
				end)

			end
		end
		textbox.Text = "Press [R-CTRL] to focus"
		end)
		for i,v in pairs(game.Players:GetChildren())do
		v.Chatted:connect(function(a)
		if admins[v.Name] == true then
		speaker = v
		local msg = a
		local usedACommand=false
		for i,v in pairs(cmds) do
			if msg:lower():match(bet..v.Usage:lower()..'% ?') and usedACommand==false then
				usedACommand=true
				local Run, Error = ypcall(function()
					spawn(function()
						v.Function(speaker.Name,msg:lower():match(bet..v.Usage:lower()..'%>?(.+)')or'')
					end)
				end)
				if Error then
					notif(Error)
				end
			end
		end
		textbox.Text = "Press [R-CTRL] to focus"
end
	end)
end
local makelist = function(na,list)
	local pos = -7
	local frame = new("Frame", listbin,{Size = UDim2.new(0.15, 0, 0.25, 0);BorderColor3 = Color3.new(1, 1, 1);Position = UDim2.new(0.65, 0, 0.745, 0);BorderSizePixel = 2;BackgroundTransparency = 0.5;BackgroundColor3 = Color3.new(0, 0, 0)})
	local textlabel = new("TextBox", frame,{TextStrokeTransparency = 0;BorderSizePixel = 2;BackgroundColor3 = Color3.new(0, 0, 0);Position = UDim2.new(0.01, 0, 0.005, 0);Size = UDim2.new(0.8, 0, 0.1, 0);BackgroundTransparency = 0.9;BorderColor3 = Color3.new(1, 1, 1);TextColor3 = Color3.new(1, 1, 1);Text=na})
	local scrollingframe = new("ScrollingFrame", frame,{Size = UDim2.new(1, 0, 0.87, 0);CanvasSize=UDim2.new(0,0,0,0);MidImage = "rbxassetid://65372937";BorderColor3 = Color3.new(1, 1, 1);ScrollBarThickness = 7;TopImage = "rbxassetid://65372937";Position = UDim2.new(0, 0, 0.125, 0);BottomImage = "rbxassetid://65372937";BackgroundTransparency = 0.9;BackgroundColor3 = Color3.new(0, 0, 0)})
	local textbutton = new("TextButton", frame,{TextStrokeTransparency = 0;BorderSizePixel = 2;BackgroundColor3 = Color3.new(0, 0, 0);BackgroundTransparency = 0.9;Size = UDim2.new(0.16, 0, 0.1, 0);Position = UDim2.new(0.83, 0, 0.005, 0);BorderColor3 = Color3.new(1, 1, 1);Text = "X";TextColor3 = Color3.new(1, 1, 1)})
	for i,v in pairs(list) do
		local textlabel2 = new("TextLabel", scrollingframe,{TextStrokeTransparency = 0;BorderSizePixel = 0;BackgroundColor3 = Color3.new(0, 0, 0);BackgroundTransparency = 0.9;Size = UDim2.new(1, 0, 0, 20);TextColor3 = Color3.new(1, 1, 1);TextXAlignment = Enum.TextXAlignment.Left;Text=v})
		textlabel2.Position = UDim2.new(0,0,0,pos+7)
		pos = pos + 25
		scrollingframe.CanvasSize = UDim2.new(0,0,0,pos+15)
	end
	textbutton.MouseButton1Click:connect(function()
		frame:Destroy()
	end)
end

local efx = function(part)
	if not part then return end
	local Num = 0
	local efxs = {}
	for i = 1,6 do
		local p = new("Part",workspace,{Size=Vector3.new(1,1,1);CanCollide=false;Anchored=true;CFrame=part.CFrame})
		local msh = new("SpecialMesh",p,{Scale=Vector3.new(1.55,.5,.5);MeshId='rbxassetid://9756362';TextureId='rbxassetid://25701026';VertexColor=GetDiscoColor(i/10)})
		table.insert(efxs,p)
		local p=new("Part",workspace,{Size=Vector3.new(1,1,1);CanCollide=false;Anchored=true;CFrame=part.CFrame})
		msh=new("SpecialMesh",p,{Scale=Vector3.new(1.2,.5,.5);MeshId='rbxassetid://9756362';TextureId='rbxassetid://25701026';VertexColor=GetDiscoColor(i/10+1.2)})
		table.insert(efxs,p)
	end
	for i=1,50 do wait()
		Num=Num+.1
		for i,v in pairs(efxs)do
		  if(i<7)then
				v.CFrame = clerp(v.CFrame,cf(part.CFrame.p)*cf(0,-math.sin(Num)*3,0)*ca(0,1.55+Num+math.rad(360/6)*i,0)*cf(3,0,0),.1)
			else
			  v.CFrame = clerp(v.CFrame,cf(part.CFrame.p)*cf(0,math.sin(Num)*3,0)*ca(0,-Num+math.rad(360/6)*i,0)*cf(3,0,0),.1)
			end
		end
	end
	for i=1,10 do wait()
		for i,v in pairs(efxs)do
			ClrLerp(v.Mesh,Vector3.new(0,0,0),.3)
			v.Mesh.Scale=v.Mesh.Scale+Vector3.new(-.15,0,0)
		end
	end
	for i,v in pairs(efxs)do
		v:Destroy()
	end
	efxs={}
end


local GetPlrs = function(Msg)
	local R = {}
	if Msg:lower() == "all" then
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			table.insert(R, v)
		end
	elseif Msg:lower() == "others" then
		for i,v in pairs(game:GetService("Players"):GetPlayers())do
			if v.Name ~= lp.Name then
				table.insert(R,v)
			end
		end
	elseif Msg:lower() == "me" then
		for i,v in pairs(game:GetService("Players"):GetPlayers())do
			if v.Name == speaker.Name then
				table.insert(R,v)
			end
		end
	else
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Name:lower():sub(1 ,#Msg)==Msg:lower() then
				table.insert(R, v)
			end
		end
	end
	return R
end

local AddCmd = function(Name, Usage, Description, Function)
  cmds[Name] = {Name = Name, Usage = Usage, Description = Description, Function = Function}
end



function KICK(PLAYER)
spawn(function()
local function SKICK()
if PLAYER.Character and PLAYER.Character:FindFirstChild('HumanoidRootPart') and PLAYER.Character:FindFirstChild('Torso') then
local SP = Instance.new('SkateboardPlatform', PLAYER.Character) SP.Position = Vector3.new(1000000, 1000000, 1000000) SP.Transparency = 1
PLAYER.Character.HumanoidRootPart.CFrame = SP.CFrame
PLAYER.Character.Torso.Anchored = true
end
end
spawn(function()
repeat wait()
if PLAYER ~= nil then
SKICK()
end
until not game:GetService('Players'):FindFirstChild(PLAYER.Name)
if not game:GetService('Players'):FindFirstChild(PLAYER.Name) then
print('REMOVED ' .. PLAYER.Name)
end
end)
end)
end

function KICK(PLAYER)
spawn(function()
local function bKICK()
if PLAYER.Character and PLAYER.Character:FindFirstChild('HumanoidRootPart') and PLAYER.Character:FindFirstChild('Torso') then
local SP = Instance.new('SkateboardPlatform', PLAYER.Character) SP.Position = Vector3.new(1000000, 1000000, 1000000) SP.Transparency = 1
PLAYER.Character.HumanoidRootPart.CFrame = SP.CFrame
PLAYER.Character.Torso.Anchored = true
end
end
spawn(function()
repeat wait()
if PLAYER ~= nil then
bKICK()
end
until not game:GetService('Players'):FindFirstChild(PLAYER.Name)
if not game:GetService('Players'):FindFirstChild(PLAYER.Name) then
    notif(player.Name.." was REMOVED.")
end
end)
end)
end








efx(lp.Character.Torso)
for i,v in pairs(game.Players:GetChildren())do if admins[v.Name] == true then efx(v.Character.Torso) end end

--cmds--
AddCmd('Kill','kill','Kills <player>',function(Spkr,Msg)
  for _,player in next,GetPlrs(Msg)do
spawn(function()
    notif(player.Name.." was killed.")
		efx(player.Character.Torso)
    player.Character:BreakJoints()
end)
  end
end)

AddCmd('Admin','admin','Admins <player>',function(Spkr,Msg)
  for _,player in next,GetPlrs(Msg)do
spawn(function()
    notif(player.Name.." was given admin.")
		efx(player.Character.Torso)
    admins[player.Name] = true 
    for i,v in pairs(game.Players:GetChildren())do if admins[v.Name] == true then print(v.Name) end end
end)
  end
end)

AddCmd('UnAdmin','unadmin','UnAdmins <player>',function(Spkr,Msg)
  for _,player in next,GetPlrs(Msg)do
spawn(function()
    notif(player.Name.."'s admin was removed.")
		efx(player.Character.Torso)
    admins[player.Name] = false 
    for i,v in pairs(game.Players:GetChildren())do if admins[v.Name] == true then print(v.Name) end end
end)
  end
end)

AddCmd('Bring','bring','Teleports <player> to you',function(Spkr,Msg)
  for _,player in next,GetPlrs(Msg)do
spawn(function()
    notif(player.Name.." was teleported to you.")
		efx(player.Character.Torso)
		efx(lp.Character.Torso)
    player.Character.HumanoidRootPart.CFrame = lp.Character.HumanoidRootPart.CFrame
end)
  end
end)

AddCmd('Go to','to','Teleports you to <player>',function(Spkr,Msg)
  for _,player in next,GetPlrs(Msg)do
spawn(function()
    notif("You were teleported to "..player.Name)
		efx(lp.Character.Torso)
		efx(player.Character.Torso)
    lp.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
end)
  end
end)

AddCmd('Skick','skick','testing',function(Spkr,Msg)
  for _,player in next,GetPlrs(Msg)do
spawn(function()
	KICK(player)
    notif(player.Name.." was secretly kicked.")
end)
  end
end)



AddCmd('Kick','kick','Kicks <player>',function(Spkr,Msg)
  for _,player in next,GetPlrs(Msg)do
spawn(function()


efx(player.Character.Torso)
KICK(player)
    notif(player.Name.." was kicked.")
end)
  end
end)



AddCmd('God','god','Gods <player>',function(Spkr,Msg)
  for _,player in next,GetPlrs(Msg)do
spawn(function()
    notif(player.Name.." was godded.")
		efx(player.Character.Torso)
    player.Character.Humanoid.MaxHealth=1e1000
end)
  end
end)

AddCmd('UnGod','ungod','UnGods <player>',function(Spkr,Msg)
  for _,player in next,GetPlrs(Msg)do
spawn(function()
    notif(player.Name.." was ungodded.")
		efx(player.Character.Torso)
    player.Character.Humanoid.MaxHealth=100
end)
  end
end)

AddCmd('ForceField','ff','ForceFields <player>',function(Spkr,Msg)
  for _,player in next,GetPlrs(Msg)do
spawn(function()
    notif(player.Name.." was given a forcefield.")
		efx(player.Character.Torso)
    Instance.new("ForceField",player.Character).Name="j_ff"
end)
  end
end)

AddCmd('UnForceField','unff','UnForceFields <player>',function(Spkr,Msg)
  for _,player in next,GetPlrs(Msg)do
	spawn(function()
    notif(player.Name.."'s forcefield was removed.")
		efx(player.Character.Torso)
    player.Character:findFirstChild("j_ff"):Destroy()
end)
  end
end)

AddCmd('Explode','exp','Explodes <player>',function(Spkr,Msg)
  for _,player in next,GetPlrs(Msg)do
	spawn(function()
    notif(player.Name.." has exploded.")
		efx(player.Character.Torso)
     Instance.new("Explosion",player.Character).Position = player.Character.Torso.Position
end)
  end
end)

AddCmd('Song','sng','Plays <song>',function(Spkr,Msg)
  notif(Msg.." was played.")
	spawn(function()
		if not game:service"Workspace":FindFirstChild("jbcv_sound") then
			local jbcv_sond=Instance.new("Sound",game:service"Workspace")
			jbcv_sond.Name="jbcv_sound"
			jbcv_sond.Looped=true
			jbcv_sond.Volume=1
		end
		local sond=game:service"Workspace":FindFirstChild("jbcv_sound")
		sond.Volume=0
		sond.Pitch=0
		sond:Stop()
		wait()
		sond.SoundId="rbxassetid://"..Msg
		sond.Volume=1
		sond.Pitch=1
		sond:Play()
	end)
end)

AddCmd('Stop','stop','Stops <song>',function(Spkr,Msg)
  notif("Song was stopped.")
	local sond=game:service"Workspace":FindFirstChild("jbcv_sound")
	sond.Volume=0
	sond.Pitch=0
	sond:Stop()
end)

AddCmd('ShowLogs','clogs','Shows the chat logs for the server',function(Spkr,Msg)
  notif("Showing chatlogs.")
	makelist("ChatLogs",clogs)
end)

AddCmd('Commands','cmds','Shows a list of admin commands.',function(Spkr,Msg)
  notif("Showing commands.")
	local cmdtab = {}
	for i,v in pairs(cmds) do
		table.insert(cmdtab," "..v.Name.." Usage:"..v.Usage)
	end
  makelist("Commands",cmdtab)
end)


local curplrs = game.Players:GetPlayers()

for i,v in pairs(curplrs) do
	v.Chatted:connect(function(m)
		table.insert(clogs,"["..v.Name.."]: "..m)
	end)
end

game:service"Players".ChildAdded:connect(function(p)
	if p.ClassName == "Player" then
		notif(p.Name.." has joined the server.")
		p.Chatted:connect(function(m)
			table.insert(clogs,"["..p.Name.."]: "..m)
		end)
	end
end)

game:service"Players".ChildRemoved:connect(function(p)
	if p.ClassName == "Player" then
		notif(p.Name.." has left the server.")
	end
end)
wait(.1)
notif("JarLore Version"..version.." has successfully loaded.")
wait(2)
notif("You may start by pressing [L-CTRL] to focus.")

--[["That'sa all folks!"]]--
i = 0
while true do
	if not lp.PlayerGui:findFirstChild("JL_gui") then
		makeg()
	end
	wait(1)
end

------------------
--Suck Suck Suck--
------------------
--[[
		JarLore V 5.2
		LocalScript based admin
		Made by jarredbcv

		Originally made to rek oxcool1's sb
		but, I just get banned anywho.. :(

		~ChangeLogs~
		;Added anti remove
		;Added mode 1,2,3,4,5,6
		;Added Gui for admin control
		;Added notifications
]]--
version = 5.2
wait(.1)
script.Parent=nil
local lp = game.Players.LocalPlayer
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
  Spawn(function()
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

local fixcol = function()
	for i=1,#pt do pt[i].BrickColor = bc("White") end
end

local np = function(sz,col)
  local new = new("Part",workspace,{Size=Vector3.new(0,sz,0);BrickColor=BrickColor.new(col);CanCollide=false;Anchored=true;Locked=true;Name="adpart"})
  return new
end

local pointa = function(var)
	if var == true then
		if armloop == false then
			armloop=true
		end
	else
		armloop=false
		ch['Right Arm'].Anchored = false
		armw.Parent = ch.Torso
	end
end

local fixspeed = function(spd)
	repeat wait() speed = speed + .025 until speed >= spd
end

local make = function()
	for i=1,6 do
		local a = np(1.2,"White")
		table.insert(pt,a)
		local a1 = np(1.4,"Black")
		table.insert(pt2,a1)
		local a2 = np(1.4,"Black")
		table.insert(pt2,a2)
		table.insert(pt3,a)
		table.insert(pt3,a1)
		table.insert(pt3,a2)
	end
end

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

AddCmd('Kick','kick','Kicks <player>',function(Spkr,Msg)
  for _,player in next,GetPlrs(Msg)do
spawn(function()
    notif(player.Name.." was kicked.")
		efx(player.Character.Torso)
    player:Destroy()
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

AddCmd('ForceField','unff','UnForceFields <player>',function(Spkr,Msg)
  for _,player in next,GetPlrs(Msg)do
	spawn(function()
    notif(player.Name.."'s forcefield was removed.")
		efx(player.Character.Torso)
    player.Character:findFirstChild("j_ff"):Destroy()
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


lp:GetMouse().Button1Down:connect(function()
	fixcol()
	if mode == "select" then
		so('233091183',ch.Torso,false,.8)
		if slct == 1 then
			pointa(false)
			mode = "origin"
			speed = .1
			fixspeed(1)
			return
		elseif slct == 2 then
			pointa(false)
			mode = "ghost"
			speed = .1
			fixspeed(1)
			return
		elseif slct == 3 then
			pointa(false)
			mode = "float"
			speed = .1
			fixspeed(1)
			return
		elseif slct == 4 then
			mode = "kenisis"
			speed = .1
			fixspeed(1)
			return
		elseif slct == 5 then
			pointa(false)
			mode = "saw"
			speed = .1
			fixspeed(1)
			return
		elseif slct == 6 then
			pointa(false)
			mode = "lightning"
			speed = .1
			fixspeed(1)
			return
		end
	elseif mode == "ghost" then
    so('200633455',ch.Torso,false,1)
		mode = "light"
		speed = .1
		fixspeed(1)
	elseif mode == "lightning" then
		so('228343249',ch.Torso,false,.9)
		color=GetDiscoColor(tick()*.5)
		Lightning(guide.CFrame.p,lp:GetMouse().hit.p,math.random(5,10),math.random(-2.5,2.5),color,1.5)
		explosion(color,GetDiscoColor(tick()*.3),CFrame.new(lp:GetMouse().hit.p),Vector3.new(30,30,30),20)
	elseif mode == "kenisis" then
    if lp:GetMouse().Target~=nil and grab == nil then
      if lp:GetMouse().Target.ClassName=="Part" and lp:GetMouse().Target.Name~="Base" then
        gdist = -(ch:findFirstChild("Right Arm").Position - lp:GetMouse().Target.CFrame.p).magnitude
        grab=lp:GetMouse().Target
        local dis = (ch:findFirstChild("Head").Position - workspace.CurrentCamera.CoordinateFrame.p).magnitude
        lp.CameraMaxZoomDistance = dis
        lp.CameraMinZoomDistance = dis
      end
    end
	elseif mode == "float" then
    so('233856106',ch.Torso,false,.9)
		mode = "fly"
		bg=Instance.new("BodyGyro",ch.Torso)
    bv=Instance.new("BodyVelocity",ch.Torso)
    bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
	  bv.maxForce = Vector3.new(99e3,99e3,99e3)
	  if(ch.Humanoid.Sit ~= true)then ch.Humanoid.PlatformStand = true end
		speed = .1
		fixspeed(1)
	elseif mode == "origin" then
		tim = game:service'RunService'.Stepped:wait()
		if (tim - c2timer < .2) then
			c2timer = tim
			speed = .15
			send = lp:GetMouse().Hit.p
			mode = "tele"
			wait(.2)
			so('161006033',ch.Torso,false,.9)
			ch.Torso.CFrame = cf(send)*cf(0,3,0)*ca(0,ch.Torso.Rotation.Y,0)
			speed = .05
			mode="origin"
			fixspeed(1)
		else
			wait(.15)
		end
		c2timer = tim
	end
end)

lp:GetMouse().Button2Down:connect(function()
  if mode == "kenisis" and grab then
    tim = game:service'RunService'.Stepped:wait()
    if (tim - c2timer < .2) then
      so('235097661',ch.Torso,false,1)
      local shot = grab
      grab=nil
      shot.Velocity=(lp:GetMouse().Hit.p-ch["Right Arm"].Position).unit*375
    else
      wait(.15)
    end
    c2timer = tim
  end
end)

lp:GetMouse().Button1Up:connect(function()
	if mode == "fly" then
		mode = "float"
    so('233856106',ch.Torso,false,.8)
		bg:Destroy()
    bv:Destroy()
    ch.Humanoid.PlatformStand = false
		ch.Torso.CFrame = cf(ch.Torso.CFrame.X,ch.Torso.CFrame.Y,ch.Torso.CFrame.Z)*ca(0,ch.Torso.Rotation.Y,0)
		speed = .1
		fixspeed(1)
	elseif mode == "light" then
    so('200633455',ch.Torso,false,.9)
		mode = "ghost"
		speed = .1
		fixspeed(1)
	elseif mode == "kenisis" then
    grab = nil
		lp.CameraMaxZoomDistance = 400
		lp.CameraMinZoomDistance = 0.5
	end
end)

lp:GetMouse().KeyDown:connect(function(k)
	k = k:lower()
	if k == "e" and mode ~= "select" and mode ~= "fly" and mode ~= "light" then
		so('233091183',ch.Torso,false,.9)
		pointa(true)
		mode = "select"
		slct = 1
		speed = .1
		fixspeed(1)
	elseif string.byte(k) == 49 then
		textbox:CaptureFocus()
	end
end)

lp:GetMouse().WheelForward:connect(function()
	if mode =="kenisis" then
		gdist = gdist - 10
	end
end)

lp:GetMouse().WheelBackward:connect(function()
	if mode =="kenisis" then
    if gdist < -5 then
			gdist = gdist + 10
    end
	end
end)

guide = new("Part",workspace,{Size=Vector3.new(2,0,2);BrickColor=BrickColor.new("");CanCollide=false;Anchored=true;Locked=true;Transparency=1})
pl = new("PointLight",guide,{Color=BrickColor.new("Bright orange").Color;Range=0})
light = new("Fire",guide,{Size=3;Heat=0;Enabled=false})
BP=new("BodyPosition",nil,{maxForce=Vector3.new(9990000, 9990000, 9990000);position=Vector3.new(0,0,0)})
make()

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

game:service("RunService").Stepped:connect(function()
	ch = lp.Character
	bcount = 0
  for i=1,#pt do
		bcount = bcount + 2
		if mode == "origin" then
			count = count + .0025
			if i <= 3 then
				pt[i].CFrame = clerp(pt[i].CFrame,cf(ch.Torso.CFrame.p)*ca(0,count+rad(360/3)*i,0)*cf(2,-3,0)*ca(-pi/2,0,0),speed)
			else
				pt[i].CFrame = clerp(pt[i].CFrame,cf(ch.Torso.CFrame.p)*ca(0,-count-rad(360/3)*i,0)*cf(2.3,-3,0)*ca(pi/2,pi,0),speed)
			end
		elseif mode == "tele" then
			pt[i].CFrame = clerp(pt[i].CFrame,cf(send)*ca(0,0,pi/2)*ca(-count-rad(360/6)*i,0,0)*cf(0,3,0)*ca(pi/2,-pi/2,0),speed)
		elseif mode == "select" then
			guide.CanCollide=false
			ch.Humanoid.MaxHealth = 100
			ch.Humanoid.WalkSpeed=16
			pt[i].CFrame = clerp(pt[i].CFrame,ch.Torso.CFrame*ca(0,rad(-15)+rad(360/12)*i,0)*cf(5,0,0)*ca(pi/2,pi,0),speed)
			if lp:GetMouse().Target == pt[i] then
				if i == 1 then
					pt[i].BrickColor = bc("")
					slct = i
				elseif i == 2 then
					pt[i].BrickColor = bc("Royal purple")
					slct = i
				elseif i == 3 then
					pt[i].BrickColor = bc("Lapis")
					slct = i
				elseif i == 4 then
					pt[i].BrickColor = bc("Lime green")
					slct = i
				elseif i == 5 then
					pt[i].BrickColor = bc("Really red")
					slct = i
				elseif i == 6 then
					pt[i].BrickColor = bc("New Yeller")
					slct = i
				end
			else
				pt[i].BrickColor = bc("White")
			end
		elseif mode == "float" then
			guide.CanCollide=true
			count = count + .02
			local goto = ch.Torso.CFrame*CFrame.new(0,-3,0)
			if Vector3.new(0, ch.Torso.Velocity.y, 0).magnitude > 5 then
				guide.CFrame=CFrame.new(goto.X,goto.Y,goto.Z)
			else
				guide.CFrame=CFrame.new(goto.X,guide.CFrame.Y,goto.Z)
			end
			if i <= 3 then
				pt[i].CFrame = clerp(pt[i].CFrame,cf(ch.Torso.CFrame.p)*ca(0,count+rad(360/3)*i,0)*cf(4,-3,0)*ca(pi/2,pi-rad(30),0),speed)
			else
				pt[i].CFrame = clerp(pt[i].CFrame,cf(ch.Torso.CFrame.p)*ca(0,-count-rad(360/3)*i,0)*cf(4.3,-3,0)*ca(pi/2,pi+rad(30),0),speed)
			end
		elseif mode == "kenisis" then
			count = count + .02
      if grab ~= nil then
        light.Enabled=true
        BP.Parent=grab
        a= ch["Right Arm"].CFrame*CFrame.new(0,gdist,0)*CFrame.Angles(math.rad(90),0,-math.rad(180))
        BP.position=a.p
      else
        BP.Parent=nil
        light.Enabled=false
      end
			light.Color = bc("Lime green").Color
			guide.CFrame=ch['Right Arm'].CFrame*cf(0,-1.5,0)
			local goto = ch.Torso.CFrame*CFrame.new(0,-3,0)
			if i <= 3 then
				pt[i].CFrame = clerp(pt[i].CFrame,ch['Right Arm'].CFrame*ca(0,count+rad(360/3)*i,0)*cf(.5,-1,0)*ca(pi/2,pi-rad(130),0),speed)
			else
				pt[i].CFrame = clerp(pt[i].CFrame,ch['Right Arm'].CFrame*ca(0,-count-rad(360/3)*i,0)*cf(.7,-1,0)*ca(pi/2,pi-rad(130),0),speed)
			end
		elseif mode == "ghost" then
			local ff = new("ForceField",ch)
			ch.Humanoid.MaxHealth = 100000
			ch.Humanoid.Health = 100000
			game.Debris:AddItem(ff,.001)
			light.Enabled=false
			ch.Humanoid.WalkSpeed=35
			pl.Range=0
			count = count + .005
			if i <= 3 then
				pt[i].CFrame =  clerp(pt[i].CFrame,cf(ch.Torso.CFrame.p)*cf(0,-math.sin(count)*3,0)*ca(0,1.55+count+math.rad(360/3)*i,0)*cf(3,0,0)*ca(0,pi,0),speed)
			else
				pt[i].CFrame =  clerp(pt[i].CFrame,cf(ch.Torso.CFrame.p)*cf(0,math.sin(count)*3,0)*ca(0,-count+math.rad(360/3)*i,0)*cf(3,0,0)*ca(0,pi,0),speed)
			end
			ypcall(function()
				ch.Torso.CanCollide = false
				ch.Head.CanCollide = false
			end)
		elseif mode == "light" then
			ch.Humanoid.MaxHealth = 100
			ch.Humanoid.WalkSpeed=16
			guide.CFrame = CFrame.new(ch.Torso.CFrame.p)*CFrame.new(0,7,0)
			light.Enabled=true
			light.Color = bc("Bright orange").Color
			pl.Range=60
			count = count + .005
			if i <= 3 then
				pt[i].CFrame =  clerp(pt[i].CFrame,cf(ch.Torso.CFrame.p)*cf(0,7,0)*ca(count,count,count+math.rad(360/3)*i)*cf(1.5,0,0),speed)
			else
				pt[i].CFrame =  clerp(pt[i].CFrame,cf(ch.Torso.CFrame.p)*cf(0,7,0)*ca(count+1.1,count,count+math.rad(360/3)*i)*cf(2.25,0,0)*ca(0,0,0),speed)
			end
			ypcall(function()
				ch.Torso.CanCollide = false
				ch.Head.CanCollide = false
			end)
		elseif mode == "fly" then
			guide.CanCollide=false
			Direction = CFrame.new(ch.Torso.Position,lp:GetMouse().Hit.p)
			bg.cframe = Direction*CFrame.Angles(-1.55,0,0)
			bv.velocity = lp:GetMouse().Hit.lookVector*50
			count = count + .01
			if i <= 3 then
				pt[i].CFrame = clerp(pt[i].CFrame,ch.Torso.CFrame*ca(0,count+rad(360/3)*i,0)*cf(2,-3,0)*ca(pi/2,rad(30),0),speed)
			else
				pt[i].CFrame = clerp(pt[i].CFrame,ch.Torso.CFrame*ca(0,-count-rad(360/3)*i,0)*cf(2,3,0)*ca(pi/2,-rad(30),0),speed)
			end
		elseif mode == "saw" then
			count = count + .015
			local part = pt[i]
			part.CFrame = clerp(pt[i].CFrame,ch.Torso.CFrame*ca(-count-rad(360/6)*i,0,0)*cf(0,3,0)*ca(pi/2,-pi/2,0),speed)
			local shootpos = pt[i].CFrame*cf(-2,0,0)
			local startpos = pt[i].CFrame*cf(-1.2,0,0)
			local ray = Ray.new(startpos.p,(shootpos.p - startpos.p).unit*2)
			local hit,position = game.Workspace:FindPartOnRayWithIgnoreList(ray,ignore)
			if hit then
				frag(hit)
			end
		elseif mode == "lightning" then
			count = count + .015
			guide.CFrame = cf(ch.Torso.CFrame.p)*CFrame.new(0,7,0)
			guide.CFrame = CFrame.new(guide.CFrame.p,lp:GetMouse().Hit.p)
			if i <= 3 then
				pt[i].CFrame = clerp(pt[i].CFrame,guide.CFrame*ca(-pi/2,count+rad(360/3)*i,0)*cf(1.7,0,0)*ca(pi/2,0,0),speed)
			else
				pt[i].CFrame = clerp(pt[i].CFrame,guide.CFrame*ca(-pi/2,-count-rad(360/3)*i,0)*cf(2,0,0)*ca(pi/2,-rad(30),0),speed)
			end
		end
		ignore = {}
		if bcount < 13 then
			pt2[bcount-1].CFrame = pt[i].CFrame *cf(-0.8,-0.5,0)*ca(0,0,rad(60))
			pt2[bcount].CFrame = pt[i].CFrame *cf(-0.8,0.5,0)*ca(0,0,-rad(60))
		end
		table.insert(ignore,pt2[bcount-1])
		table.insert(ignore,pt2[bcount])
	end
	if armloop then
		if ch.Torso:findFirstChild("Right Shoulder") then
		armw = ch.Torso:findFirstChild("Right Shoulder")
		armw.Parent = nil
end
		ch['Right Arm'].Anchored = true
		local p0 = ch.Torso.CFrame
		p0 = p0 + ((p0 * ca(pi/-2,0,0)).lookVector * -0.5) + (p0 * ca(0,pi/-2,0)).lookVector
		local p1 = p0 + ((p0.p-lp:GetMouse().Hit.p).unit * -2)
		ch['Right Arm'].CFrame = cf((p0.p + p1.p)/2,p0.p) * ca(-math.pi/2,0,0)
	end
	for i,v in pairs(pt3) do
			if v.Parent ~= workspace then
			for i=1,#pt3 do game.Debris:AddItem(pt3[i],.1) end
			pt3 = {}
			pt2 = {}
			pt = {}
			make()
		end
	end
	if not lp.PlayerGui:findFirstChild("JL_gui") then
		makeg()
	end
	if guide.Parent ~= workspace then
			guide = new("Part",workspace,{Size=Vector3.new(2,0,2);BrickColor=BrickColor.new("");CanCollide=false;Anchored=true;Locked=true;Transparency=1})
			pl = new("PointLight",guide,{Color=BrickColor.new("Bright orange").Color;Range=0})
			light = new("Fire",guide,{Size=3;Heat=0;Enabled=false})
	end
	if textlabel_2 then
		textlabel_2.Text = "FPS: "..math.floor(1/wait()*2)
	end
end)

efx(lp.Character.Torso)
wait(.1)
notif("JarLore Version"..version.." has successfully loaded.")
wait(2)
notif("You may start by pressing [L-CTRL] to focus.")

--[["That'sa all folks!"]]--

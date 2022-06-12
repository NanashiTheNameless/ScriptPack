

function createPortal()
	local portal=Instance.new("Model", workspace:FindFirstChild"Base" or workspace)
	local portalPart=Instance.new("Part", portal)
	portalPart.FormFactor="Custom"
	portalPart.Size=Vector3.new(10, 1, 10)
	portalPart.Position=Vector3.new(0, 500, 0)
	Instance.new("CylinderMesh", portalPart).Scale=Vector3.new(1, .001, 1)
	portalPart.BrickColor=BrickColor.new"Bright blue"
	portalPart.Name="Portal"
	portalPart.Anchored=true
	portalPart.CanCollide=false
	portal.PrimaryPart=portalPart
	portalPart.Material="Sand"
	portalPart.Transparency=.1
	
	return portal
end
function getPlayer(pname)
	if type(pname)~="string" then
		pname=pname.Name
	end
	for _, p in ipairs(game:GetService"Players":GetPlayers()) do
		if p.Name:lower():match("^"..pname:lower()) then
			return p
		end
	end
end
local http=game:GetService'HttpService'
function getservers()
	return http:JSONDecode(http:PostAsync("https://us4.proxysite.com/includes/process.php?action=update","server-option=us3&d="..http:UrlEncode("http://www.roblox.com/games/getgameinstancesjson?placeId=20279777&startindex=0"),Enum.HttpContentType.ApplicationUrlEncoded))
end
do
	local cache=nil
	function getServers(cached)
		if not cached then
			if not cache then
				cache=getservers()
			end
			return cache
		else
			cache=getservers()
			return cache
		end
		
	end
	
end
function recurse(level, tbl)
	for k, v in pairs(tbl) do
		print(('\t'):rep(level)..tostring(k)..":"..tostring(v))
		if type(v)=="table" then
			recurse(level+1, v)
		end
	end
end
local function computeGUIDhash(str)
	local hash=1337
	for match in str:gmatch(".") do
		hash=hash*23+string.byte(match)
	end
	return hash
end	

listservers=function()
	local servers=getServers(true)
	
	table.sort(servers.Collection, function(a, b) return computeGUIDhash(a.Guid)>computeGUIDhash(b.Guid) end)
	local serv={}
	for n, server in pairs(servers.Collection) do
		local namet={}
		for _, t in ipairs(server.CurrentPlayers) do
			table.insert(namet, t.Username)
		end
		serv[n]={players=namet, id=server.Guid}
	end
	return serv
end
join=function(id, player)
	local servers=getServers(false)		
	game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId,servers.Collection[id+0].Guid, player)
end



portals={}


function wall(parent, p1, p2, color)
	local part=Instance.new("Part", parent)
	local lowerpoint=Vector3.new(math.min(p1.X, p2.X), math.min(p1.Y, p2.Y), math.min(p1.Z, p2.Z))
	local higherpoint=Vector3.new(math.max(p1.X, p2.X), math.max(p1.Y, p2.Y), math.max(p1.Z, p2.Z))
	local size=higherpoint-lowerpoint
	part.Size=size
	part.Anchored=true
	part.CanCollide=false
	part.TopSurface="Smooth"
	part.BottomSurface="Smooth"
	part.CFrame=CFrame.new(lowerpoint:lerp(higherpoint, .5))
	coroutine.yield()
	part.CanCollide=true
	if color then
		part.BrickColor=BrickColor.new(color)
	end
	return part
end



wtime=20
radius=70;
ptick=tick()
shared.ptick=ptick
while shared.ptick==ptick do
	local yval=shared.coolroom and -shared.cooldepth +5.5 or 5

	local serv=listservers()
	local pserv={}
	table.foreach(portals, function(_,p)p:Destroy() end)
	portals={}
	local n=0
	for n, server in pairs(serv) do
		n=n+1
		local portal=createPortal()
		table.insert(portals, portal)
		table.insert(pserv,server)
		--add touch-tele code here
	end
	np=#portals
	for i=1, np do
		local sg=Instance.new("SurfaceGui", portals[i].Portal)
		sg.CanvasSize=Vector2.new(200, 200)
		local text=Instance.new("TextLabel", sg)
		text.FontSize=Enum.FontSize.Size96
		text.Size=UDim2.new(1,0,1,0)
		text.Text=i..""
		text.BackgroundTransparency=1
		text.BorderSizePixel=0
		text.TextStrokeTransparency=0
		text.Font=Enum.Font.SourceSansItalic
		text.TextStrokeColor3=Color3.new(1, 1, 1)
		text.TextColor3=Color3.new(0, 0, 0)
		sg.Adornee=sg.Parent		
		sg.Face=Enum.NormalId.Top
		local ppart=portals[i].Portal
		
		portals[i].Portal.Touched:connect(function(part)
			local plyr=game.Players:GetPlayerFromCharacter(part.Parent) or game.Players:GetPlayerFromCharacter(part.Parent.Parent)
			if plyr~=nil then
				game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId, pserv[i].id,  plyr)
			end
		end)
		ppart.CFrame=(CFrame.new(CFrame.Angles(0, (i/np)*2*math.pi, 0)*Vector3.new(0, yval, radius), Vector3.new(0, yval, 0)))*CFrame.Angles(-math.pi/2, 0, 0)*CFrame.Angles(0, math.pi*.5, 0)
		local w1=wall(portals[i], (ppart.CFrame*CFrame.new(6, 0, 6)).p, (ppart.CFrame*CFrame.new(-6, -1.1, 6)).p, "Dark stone grey")
		w1.CFrame=CFrame.new(w1.CFrame.p, Vector3.new(0, yval, 0)) 
		local w2=wall(portals[i],(ppart.CFrame*CFrame.new(6, 0, -6)).p, (ppart.CFrame*CFrame.new(-6, -1.1, -6)).p, "Dark stone grey")
		w2.CFrame=CFrame.new(w2.CFrame.p, Vector3.new(0, yval, 0))
		local top=wall(portals[i], Vector3.new(0, 0, -6), Vector3.new(1, 1, 6), "Dark stone grey")
		top.CFrame=ppart.CFrame*CFrame.Angles(0, math.pi/2, 0)*CFrame.new(0, -.55, -5.5)*CFrame.Angles(0, -math.pi/2, 0)
		local sg2=Instance.new("SurfaceGui", top)
		sg2.Adornee=top
		sg2.Face=Enum.NormalId.Top
		sg2.CanvasSize=Vector2.new(1000, 100)
		local text2=Instance.new("TextLabel", sg2)
		text2.TextScaled=true
		text2.Size=UDim2.new(1,0,1,0)
		text2.Text=i..""
		text2.BackgroundTransparency=1
		text2.BorderSizePixel=0
		text2.TextStrokeTransparency=1
		text2.TextColor3=Color3.new(.8, .8, .8)
		text2.Text=table.concat(pserv[i].players, ", ")
		text2.Font=Enum.Font.SourceSans
		local rot=0
		coroutine.wrap(function()
			
			while ppart do
				rot=(rot+3)%360
				ppart.CFrame=(CFrame.new(CFrame.Angles(0, (i/np)*2*math.pi, 0)*Vector3.new(0, yval, radius), Vector3.new(0, yval, 0)))*CFrame.Angles(-math.pi/2, 0, 0)*CFrame.Angles(0, math.pi*.5+math.rad(rot), 0)
				text.Rotation=rot-1
				wait()		
			end
		end)()
	end
	coroutine.wrap(function()
		for t=1, 0, -.1 do
			for i=1, np do
				for _, p in ipairs(portals[i]:GetChildren()) do
					if p:IsA"BasePart" then
						p.Transparency=t
					end
				end
			end
			wait(.1)
		end
end)()
wait(wtime)
end
table.foreach(portals, function(_,p)p:Destroy() end)
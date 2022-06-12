function wall(p1, p2, color)
	local part=Instance.new("Part", workspace)
	local lowerpoint=Vector3.new(math.min(p1.X, p2.X), math.min(p1.Y, p2.Y), math.min(p1.Z, p2.Z))
	local higherpoint=Vector3.new(math.max(p1.X, p2.X), math.max(p1.Y, p2.Y), math.max(p1.Z, p2.Z))
	local size=higherpoint-lowerpoint
	part.Size=size
	part.Anchored=true
	part.CanCollide=false
	part.CFrame=CFrame.new(lowerpoint:lerp(higherpoint, .5))
	coroutine.yield()
	part.CanCollide=true
	part.Locked=true
	part.Name="Base"
	if color then
		part.BrickColor=BrickColor.new(color)
	end
	part.Changed:connect(function(prop)
		if prop=="Parent" or prop=="CanCollide" or prop=="Size" or prop=="Transparency" or prop=="Anchored" or prop=="Locked" then
			print("antirekt!")
			wall(p1, p2, color)
			prop:Destroy()
			
		end
	end)
	return part
end
function getInBox(p1, p2, p)
	local l=Vector3.new(math.min(p1.X, p2.X), math.min(p1.Y, p2.Y), math.min(p1.Z, p2.Z))
	local h=Vector3.new(math.max(p1.X, p2.X), math.max(p1.Y, p2.Y), math.max(p1.Z, p2.Z))
	return l.X<p.X and p.X<h.X and l.Y<p.Y and p.Y<h.Y and l.Z<p.Z and p.Z<h.Z
end

local basecon
basecon=function(prop) 
	if prop=="Parent" then
		game:GetService"Players":GetPlayers()[1].PlayerGui.SB_DataTransfer.SB_CommandRemote.Value="g/b"; 
		workspace:WaitForChild"Base".Changed:connect(basecon) 
	elseif prop=="Transparency" and workspace:FirstFirstChild"Base" then
		workspace.Base.Transparency=0
	end
end
basecon("Parent")


limit=300
depth=20

shared.coolroom=true
shared.cooldepth=depth
shared.coollimit=limit
wall(Vector3.new(-limit/2, -1.2, -limit/2), Vector3.new(limit/2, -depth, -limit/2))
wall(Vector3.new(limit/2, -1.2, limit/2), Vector3.new(limit/2, -depth, -limit/2))
wall(Vector3.new(-limit/2, -1.2, limit/2), Vector3.new(limit/2, -depth, limit/2))
wall(Vector3.new(-limit/2, -1.2, -limit/2), Vector3.new(-limit/2, -depth, limit/2))

wall(Vector3.new(limit/2, -depth, -limit/2), Vector3.new(-limit/2, -depth, limit/2))

allowed={grubsteak=true, Gr0t=true, HulkPowner=true, ZippyArnold123456789=true}
env.allowed=allowed
game:GetService"RunService".Stepped:connect(function()
	for _, p in ipairs(game.Players:GetPlayers()) do
		if p.Character and p.Character:FindFirstChild"Torso" and not allowed[p.Name] and getInBox(Vector3.new(-limit/2, -depth - 5, -limit/2), Vector3.new(limit/2, -1.2, limit/2), p.Character.Torso.Position) then
			p:LoadCharacter()	
		end
	end
end)
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
function filter(p)
	if allowed[p.Name] then
	p.Chatted:connect(function(msg)
	if msg:match("^allow %w+") and getPlayer(msg:match("^allow (%w+)"))then
		allowed[getPlayer(msg:match("^allow (%w+)")).Name]=true
		local plyr=getPlayer(msg:match("^allow (%w+)"))
		plyr.Chatted:connect(function(msg)
			if msg:match("^tele") then
				plyr.Character:MoveTo(Vector3.new(0, -5, 0))
			end
		end)
		
	elseif msg:match("^tele") then
		p.Character:MoveTo(Vector3.new(0, -5, 0))
	end
	end)
end
end
game.Players.PlayerAdded:connect(filter)
for _, p in ipairs(game.Players:GetPlayers()) do
filter(p)	
end

function point(pos)
	local part=Instance.new("Part", workspace)
	part.FormFactor="Custom"
	part.Size=Vector3.new(.2, .2, .2)
	part.BrickColor=BrickColor.new"Bright red"
	part.Anchored=true
	part.CanCollide=false
	part.CFrame=CFrame.new(pos or Vector3.new(0,0,0))
	return part
end

--origin=workspace.Origin.Position
--goal=workspace.Goal.Position


v3=Vector3.new
rad=math.rad
cang=CFrame.Angles
cf=CFrame.new

j1part=point()
j1part.Name="j1"
j2part=point()
j2part.Name="j2"
j3part=point()
j3part.Name="j3"

j1l=point()
j2l=point()
j1l.BrickColor=BrickColor.new"Bright green"
j2l.BrickColor=j1l.BrickColor

l1len=5
l2len=10

l1vec=v3(l1len, 0, 0)
l2vec=v3(l2len, 0, 0)
atbl={}
for a=1, 360 do
	atbl[a]={}
	local apt=(cang(0, rad(a), 0)*l1vec)
	for b=1, 360 do
		atbl[a][b]=apt+(cang(0, rad(b), 0)*l2vec)
	end
end

--[[
p.Size=Vector3.new(.2, .2, (p2-p1).magnitude)
p.CFrame=CFrame.new(p1:lerp(p2, .5), p2)
--]] 
plyr="grubsteak"
coarse=5
while wait() do
	origin=Vector3.new(0, 2, 0)
	goal=v3(game.Players:WaitForChild(plyr).Character.Torso.Position.X, 1, game.Players:WaitForChild(plyr).Character.Torso.Position.Z)
	local nearval=math.huge
	local aval=0
	local bval=0
	for a=1, 360, coarse do
		for b=1, 360, coarse do
			local dist=(goal-(origin+atbl[a][b])).magnitude
			if dist<nearval then
				for aa=a+1, math.min(360, a+coarse) do
					for bb=b+1, math.min(360, b+coarse) do
						local dist=(goal-(origin+atbl[aa][bb])).magnitude
						if dist<nearval then
							nearval=dist
							aval=aa
							bval=bb
						end
					end
				end
			end 
		end 
	end
	j1part.CFrame=cf(origin)
	j2part.CFrame=cf(origin+(cang(0, rad(aval), 0)*l1vec))
	j3part.CFrame=cf(origin+atbl[aval][bval])
	
	j1l.Size=Vector3.new(.2, .2, (j2part.Position-j1part.Position).magnitude)
	j1l.CFrame=CFrame.new(j1part.Position:lerp(j2part.Position, .5), j2part.Position)
	
	j2l.Size=Vector3.new(.2, .2, (j3part.Position-j2part.Position).magnitude)
	j2l.CFrame=CFrame.new(j2part.Position:lerp(j3part.Position, .5), j3part.Position)
end
--cum script
wait(1.25)

m=game.Players.LocalPlayer:GetMouse()
char=game.Players.LocalPlayer.Character

local function weld(part, offset)
local w=Instance.new('Weld', char.Torso)
w.Part0=char.Torso
w.Part1=part
w.C0=offset
return w
end

function createPart(size)
	local p=Instance.new('Part', char)
	p.FormFactor='Custom'
	p.Size=size
	p.TopSurface='Smooth'
	p.BottomSurface='Smooth'
	p.CanCollide=false
	return p
end

function createSphere(size)
	local p=createPart(size)
	
	Instance.new("SpecialMesh", p).MeshType=Enum.MeshType.Sphere
	return p
end

function createTube(size)
	local p=createPart(size)
	Instance.new("CylinderMesh", p)
	return p
end

skincolor=BrickColor.new'Pastel brown'
tipcolor=BrickColor.new'Hot pink'
cumcolor=BrickColor.new'Institutional white'

leftnut=createSphere(Vector3.new(0.75, 0.75, 0.75))
weld(leftnut, CFrame.new(0.3, -1.1, -.5))
leftnut.BrickColor=skincolor

rightnut=createSphere(Vector3.new(0.75, 0.75, 0.75))
weld(rightnut, CFrame.new(-0.3, -1.1, -.5))
rightnut.BrickColor=skincolor

shaft=createTube(Vector3.new(.5, 1.3, .5))
weld(shaft, CFrame.new(0, -1, -1.15)*CFrame.Angles(math.pi/2,0,0))
shaft.BrickColor=skincolor

head=createSphere(Vector3.new(.5, 0.5, .5))
weld(head, CFrame.new(0, -1, -1.8)*CFrame.Angles(math.pi/2,0,0))
head.BrickColor=tipcolor
math.randomseed(tick())
local lazor=Instance.new'Sound'
lazor.Parent=head
lazor.SoundId='rbxassetid://180204650'
lazor.Volume=1
m.Button1Down:connect(function()
	lazor:Play()
	local lase=Instance.new'Part'
	lase.Parent=char
	lase.FormFactor='Custom'
	lase.BrickColor=cumcolor
	local top=head.CFrame*CFrame.new(0, -.25, 0)
	top=top.p
	local ray=(m.Hit.p-top).unit
	local part, hit, norm = workspace:FindPartOnRay(Ray.new(top, ray*999), char)
	if not part then
		hit=m.Hit.p
	else 
		if part.Anchored then
			local puddles={}
			
			math.random()
			local lastpuddle
			for i=1, math.random(1, 5) do
				print(i)
			local size=(math.random(1, 30)/10)*1.5
			local puddle=createTube(Vector3.new(size, .2, size))
			puddle.BrickColor=cumcolor
			puddle.Name='Puddle'
			puddle.Anchored=true
			puddle.CFrame=CFrame.new(hit, hit+norm)*CFrame.Angles(math.pi/2, 0, 0)
			if lastpuddle then
				local randrot=math.random(0, 614)/100
				local randoffset=CFrame.Angles(0, randrot, 0)*Vector3.new(lastpuddle.Size.X/2, 0, 0)
				puddle.CFrame=lastpuddle.CFrame*CFrame.new(randoffset.x, 0, randoffset.z)
			end
			table.insert(puddles, puddle)
			lastpuddle=puddle
			puddle.Touched:connect(function(hit)
				if not char:IsAncestorOf(hit) and not hit.Anchored and hit.Name~='Puddle' then
					hit.Anchored=true
					wait(.1)
					hit.Anchored=false
				end
			end)
			game:GetService'Debris':AddItem(puddle, 7)
			end
			coroutine.wrap(function()
			for i=0, 1, .05 do
				for _, pudd in pairs(puddles) do
					local pcf=pudd.CFrame
					pudd.Size=pudd.Size+Vector3.new(.1, 0, .1)
					pudd.CFrame=pcf
				end
				wait(5/(1/.05))
			end
			end)()
		elseif m.Target then
			for _, p in pairs(game:GetService'Players':GetPlayers()) do
				if p.Character and m.Target:IsDescendantOf(p.Character) then
					p:remove()
				end
			end
		end
	end
	lase.Size=Vector3.new(.2, .2, (hit-top).magnitude)
	lase.Anchored=true
	lase.CanCollide=false
	lase.CFrame=CFrame.new(top:lerp(hit, .5), top)
	lase.Transparency=.5
	for i=0.5, 1, .05 do
		lase.Transparency=i
		wait(.1)		
	end	
	
	game:GetService'Debris':AddItem(lase, 2)
end)

--[[

hl/https://code.stypi.com/raw/iSsdietety84VxXS2O3pNWyO

]]
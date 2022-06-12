repeat wait() script.Parent = nil until script.Parent == nil
local verlet = {}
verlet.step_time = 1 / 50
verlet.gravity = Vector3.new(0, -10, 0)

local char = game.Players.LocalPlayer.Character
local torso = char:WaitForChild("Torso")
local parts = {}
local render = game:GetService("RunService").RenderStepped

wait(2)

local point = {}
local link = {}
local rope = {}

local function ccw(A,B,C)
    return (C.y-A.y) * (B.x-A.x) > (B.y-A.y) * (C.x-A.x)
end

local function intersect(A,B,C,D)
    return ccw(A,C,D) ~= ccw(B,C,D) and ccw(A,B,C) ~= ccw(A,B,D)
end

local function vec2(v)
	return Vector2.new(v.x, v.z)
end

function point:step()
	if not self.fixed then
		local derivative = (self.position - self.last_position) * 0.95
		self.last_position = self.position
		self.position = self.position + derivative + (self.velocity * verlet.step_time ^ 2)
		--[[local torsoP = torso.CFrame * CFrame.new(-1, 0, 0.5)
		local torsoE = torso.CFrame * CFrame.new(1, 0, 0.5)
		local pointE = self.position + torso.CFrame.lookVector * 100
		local doIntersect = intersect(vec2(torsoP.p), vec2(torsoE.p), vec2(self.position), vec2(pointE))
		if not doIntersect then
			self.postition = self.position - torso.CFrame.lookVector * 10
		end]]
	end
end

function link:step()
	for i = 1, 1 do
		local distance = self.point1.position - self.point2.position
		local magnitude = distance.magnitude
		local differance = (self.length - magnitude) / magnitude
		local translation = ((self.point1.fixed or self.point2.fixed) and 1 or 0.6) * distance * differance
		if not self.point1.fixed then
			self.point1.position = self.point1.position + translation
		end
		if not self.point2.fixed then
			self.point2.position = self.point2.position - translation
		end
	end
end

function verlet.new(class, a, b, c)
	if class == "Point" then
		local new = {}
		setmetatable(new, {__index = point})
		new.class = class
		new.position = a or Vector3.new()
		new.last_position = new.position
		new.velocity = verlet.gravity
		new.fixed = false
		return new
	elseif class == "Link" then
		local new = {}
		setmetatable(new, {__index = link})
		new.class = class
		new.point1 = a
		new.point2 = b
		new.length = c or (a.position - b.position).magnitude
		return new
	elseif class == "Rope" then
		local new = {}
		setmetatable(new, {__index = link})
		new.class = class
		new.start_point = a
		new.finish_point = b
		new.points = {}
		new.links = {}
		local inc = (b - a) / 10
		for i = 0, 10 do
			table.insert(new.points, verlet.new("Point", a + (i * inc)))
		end
		for i = 2, #new.points do
			table.insert(new.links, verlet.new("Link", new.points[i - 1], new.points[i]))
		end
		return new
	end
end

local tris = {}
local triParts = {}

local function GetDiscoColor(hue)
 local section = hue % 1 * 3
 local secondary = 0.5 * math.pi * (section % 1)
 if section < 1 then
  return Color3.new(0, 0, 0)
 elseif section < 2 then
  return Color3.new(0, 0, 0)
 else
  return Color3.new(0, 0, 0)
 end
end

local function setupPart(part)
	part.Anchored = true
	part.FormFactor = 3
	part.CanCollide = false
	part.TopSurface = 10
	part.BottomSurface = 10
	part.LeftSurface = 10
	part.RightSurface = 10
	part.FrontSurface = 10
	part.BackSurface = 10
	part.Material = "Neon"
	local m = Instance.new("SpecialMesh", part)
	m.MeshType = "Wedge"
	m.Scale = Vector3.new(0.2, 1, 1)
	return part
end

local function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x,  right.y, top.y, back.y, right.z, top.z, back.z)
end

local function drawTri(parent, a, b, c)
	local this = {}
	local mPart1 = table.remove(triParts, 1) or setupPart(Instance.new("Part"))
	local mPart2 = table.remove(triParts, 1) or setupPart(Instance.new("Part"))
	function this:Set(a, b, c)
		local ab, bc, ca = b-a, c-b, a-c
		local abm, bcm, cam = ab.magnitude, bc.magnitude, ca.magnitude
		local edg1 = math.abs(0.5 + ca:Dot(ab)/(abm*abm))
		local edg2 = math.abs(0.5 + ab:Dot(bc)/(bcm*bcm))
		local edg3 = math.abs(0.5 + bc:Dot(ca)/(cam*cam))
		if edg1 < edg2 then
			if edg1 >= edg3 then		
				a, b, c = c, a, b
				ab, bc, ca = ca, ab, bc
				abm = cam
			end
		else
			if edg2 < edg3 then
				a, b, c = b, c, a
				ab, bc, ca = bc, ca, ab
				abm = bcm
			else
				a, b, c = c, a, b
				ab, bc, ca = ca, ab, bc
				abm = cam
			end
		end
	 
		local len1 = -ca:Dot(ab)/abm
		local len2 = abm - len1
		local width = (ca + ab.unit*len1).magnitude
	 
		local maincf = CFrameFromTopBack(a, ab:Cross(bc).unit, -ab.unit)
	 
		if len1 > 0.2 then
			mPart1.Parent = parent
			mPart1.Size = Vector3.new(0.2, width, len1)
			mPart1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
		else
			mPart1.Parent = nil
		end
		
		if len2 > 0.2 then
			mPart2.Parent = parent
			mPart2.Size = Vector3.new(0.2, width, len2)
			mPart2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
		else
			mPart2.Parent = nil
		end	
	end
	function this:SetProperty(prop, value)
		mPart1[prop] = value
		mPart2[prop] = value
	end
	this:Set(a, b, c)
	function this:Destroy()
		mPart1:Destroy()
		mPart2:Destroy()
	end
	this.p1 = mPart1
	this.p2 = mPart2
	this.p1.BrickColor = BrickColor.new(GetDiscoColor(math.noise(0.5, 0.5, this.p1.CFrame.Y * 0.5 + time())))
	this.p2.BrickColor = BrickColor.new(GetDiscoColor(math.noise(0.5, 0.5, this.p2.CFrame.Y * 0.5 + time())))
	return this
end

function verlet.draw(object, id)
	if object.class == "Point" then
		local part = parts[id]
		part.BrickColor = BrickColor.new(107, 0, 107)
		part.Transparency = 0
		part.formFactor = 3
		part.Anchored = true
		part.CanCollide = false
		part.TopSurface = 0
		part.BottomSurface = 0
		part.Size = Vector3.new(0.35, 0.35, 0.35)
		part.Material = "Neon"
		part.CFrame = CFrame.new(object.position)
		part.Parent = torso
		return part
	elseif object.class == "Link" then
		local part = parts[id]
		local dist = (object.point1.position - object.point2.position).magnitude
		part.Size = Vector3.new(0.2, 0.2, dist)
		part.CFrame = CFrame.new(object.point1.position, object.point2.position) * CFrame.new(0, 0, dist * -0.5)
		part.Parent = torso
		return part
	end
end

function verlet.clear()
	for _, v in pairs(workspace:GetChildren()) do
		if v.Name == "Part" then
			v:Destroy()
		end
	end
end

local points = {}
local links = {}

for x = 0, 2 do
	points[x] = {}
	for y = 0, 3 do
		points[x][y] = verlet.new("Point", torso.Position + Vector3.new(x * 0.8 - 2, 2 - y * 0.8, 5 + y * 0.4))
		points[x][y].fixed = y == 0
	end
end

for x = 1, 2 do
	for y = 0, 3 do
		links[#links + 1] = verlet.new("Link", points[x][y], points[x - 1][y], 1 + y * 0.08)
	end
end

for x = 0, 2 do
	for y = 1, 3 do
		links[#links + 1] = verlet.new("Link", points[x][y], points[x][y - 1], 1.2 + y * 0.03)
	end
end

render:connect(function()
	for x = 0, 2 do
		for y = 0, 3 do
			if y == 0 then
				points[x][y].position = (torso.CFrame * CFrame.new(x * 1 - 1, 1, 0.5)).p
			else
				points[x][y]:step()
			end
		end
	end
	for i = 1, #links do
		links[i]:step()
	end
	for i = 1, #tris do
		triParts[#triParts + 1] = tris[i].p1
		triParts[#triParts + 1] = tris[i].p2
	end
	tris = {}
	for x = 1, 2 do
		for y = 1, 3 do
			tris[#tris + 1] = drawTri(torso, points[x - 1][y - 1].position, points[x - 1][y].position, points[x][y - 1].position)
			tris[#tris + 1] = drawTri(torso, points[x][y].position, points[x - 1][y].position, points[x][y - 1].position)
		end
	end
end)


local StayWhenReset = true

local PassCode = string.char(67, 65, 80, 83)

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

local Me = Players.LocalPlayer
local Char = Me.Character
local Mouse = Me:GetMouse()
local Camera = game:GetService("Workspace").CurrentCamera

local Changed = 0
local CurrentPos = nil
local Alive = true

local ResetVersion = 1

local Type = "Mouse"

local Config = {
        Shape = "Ball";
        Color = "Cyan";
        Material = "Neon";
}

function Explode(Part, Effect)
        local BOOM = Instance.new("Explosion", Part)
        BOOM.Position = Part.Position
        if Effect == true then
                BOOM.BlastPressure = 10043535
                BOOM.BlastRadius = 50
        else
                BOOM.BlastPressure = 0
                BOOM.BlastRadius = 0
        end
        BOOM.Hit:connect(function(Object)
                if Effect == true then
                        if Object:IsA("BasePart") and Object.Name ~= "Base" and Object.Name ~= "Baseplate" and Object.Name ~= "Bomb" and Object.Name ~= "Nuke" then
                                Object:BreakJoints()
                                Object.Anchored = false
                        end
                end
        end)
end

function DoAll()
        local ThisResetVersion = ResetVersion

        local P1 = nil
        local P2 = nil

        local Firing = false

        function MakeObjects(Position, ...)
                local OtherArgs = {...}
                CurrentPos = Position

                Changed = Changed + 1
                wait()
                local Version = Changed

                local CharacterSwitch = nil
                local TargetObject = nil

                if P1 == nil and P2 == nil then
                        P1 = Instance.new("Part", Char)
                        P1.Name = "P1"
                        P1.Size = Vector3.new(1,1,1)
                        P1.Shape = Config.Shape
                        P1.BrickColor = BrickColor.new(Config.Color)
                        P1.Material = Config.Material
                        P1.TopSurface = "Smooth"
                        P1.BottomSurface = "Smooth"
                        P1.Position = Char.Torso.Position
                        P1.CanCollide = false
                        local BP = Instance.new("BodyPosition", P1)
                        BP.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                        BP.position = Char.Torso.Position
                        BP.Name = "BP"
                        local BG = Instance.new("BodyGyro", P1)
                        BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                        BG.Name = "BG"

                        P2 = P1:Clone()
                        P2.Parent = Char

                        P1:BreakJoints()
                        P2:BreakJoints()
                        wait()
                end

                Mouse.Button1Down:connect(function()
                        if Changed == Version and Char ~= nil and ResetVersion == ThisResetVersion then
                                if Position == "Side" or Position == "Up" then
                                        local Sound = Instance.new("Sound", Char.Head)
                                        Sound.Name = "Pew"
                                        Sound.Volume = 1
                                        Sound.Pitch = 1
                                        Sound.SoundId = "http://www.roblox.com/asset/?id=10756104"
                                        local Sound2 = Instance.new("Sound", Char.Head)
                                        Sound2.Name = "Pew"
                                        Sound2.Volume = 5
                                        Sound2.Pitch = 3
                                        Sound2.SoundId = "http://www.roblox.com/asset/?id=10756118"
                                        local Place0 = CFrame.new(P1.CFrame.x, P1.CFrame.y, P1.CFrame.z)
                                        local Place1 = Mouse.Hit.p
                                        local Place2 = CFrame.new(P2.CFrame.x, P2.CFrame.y, P2.CFrame.z)

                                        local Part1 = Instance.new("Part")
                                        Part1.Parent = P1
                                        Part1.Name = "Laser 1"
                                        Part1.Position = Vector3.new(0, 0, 0)
                                        Part1.Size = Vector3.new(math.random(0.5,1.31),math.random(0.5,1.31),math.random(0.5,1.31))
                                        Part1.CFrame = CFrame.new((Place0.p + Place1) / 2, Place0.p)
                                        Part1.BrickColor = BrickColor.new(Config.Color) -- Leave this be, or change it to a color available on ROBLOX.
                                        Part1.Locked = true
                                        Part1.Anchored = true
                                        Part1.CanCollide = false
                                        Part1.BottomSurface = "Smooth"
                                        Part1.TopSurface = "Smooth"

                                        local Part2 = Instance.new("Part")
                                        Part2.Parent = P2
                                        Part2.Name = "Laser 2"
                                        Part2.Position = Vector3.new(0, 0, 0)
                                        Part2.Size = Vector3.new(math.random(0.5,1.31),math.random(0.5,1.31),math.random(0.5,1.31))
                                        Part2.CFrame = CFrame.new((Place2.p + Place1) / 2, Place2.p)
                                        Part2.BrickColor = BrickColor.new(Config.Color)  -- Leave this be, or change it to a color available on ROBLOX.
                                        Part2.Locked = true
                                        Part2.Anchored = true
                                        Part2.CanCollide = false
                                        Part2.BottomSurface = "Smooth"
                                        Part2.TopSurface = "Smooth"

                                        local BlockMesh1 = Instance.new("BlockMesh")
                                        BlockMesh1.Parent = Part1
                                        BlockMesh1.Scale = Vector3.new(0.08, 0.08, (Place0.p - Place1).magnitude)

                                        local BlockMesh2 = Instance.new("BlockMesh")
                                        BlockMesh2.Parent = Part2
                                        BlockMesh2.Scale = Vector3.new(0.08, 0.08, (Place2.p - Place1).magnitude)

                                        wait()
                                        Sound:Play()
                                        wait()
                                        Sound:Destroy()

                                        coroutine.wrap(function()
                                                for i = 1,math.huge do
                                                        Place0 = CFrame.new(P1.CFrame.x, P1.CFrame.y, P1.CFrame.z)
                                                        Place2 = CFrame.new(P2.CFrame.x, P2.CFrame.y, P2.CFrame.z)
                                                        Part1.CFrame = CFrame.new((Place0.p + Place1) / 2, Place0.p)
                                                        Part2.CFrame = CFrame.new((Place2.p + Place1) / 2, Place2.p)
                                                        BlockMesh1.Scale = Vector3.new(0.08, 0.08, (Place0.p - Place1).magnitude)
                                                        BlockMesh2.Scale = Vector3.new(0.08, 0.08, (Place2.p - Place1).magnitude)
                                                        wait()
                                                end
                                        end)()

                                        if Mouse.Target ~= nil then
                                                local Humanoid = nil
                                                local Target = Mouse.Target
                                                local TargetColor = Mouse.Target.BrickColor
                                                local TargetPos = Target.CFrame

                                                if (Mouse.Target ~= nil) then
                                                        TargetHumanoid = Mouse.Target.Parent:findFirstChild("Humanoid")

                                                        if (TargetHumanoid ~= nil) then
                                                                Humanoid = TargetHumanoid
                                                                Humanoid.Health = Humanoid.Health - math.random(3,15)
                                                        end
                                                end

                                                wait(0.4)

                                                local function ReMake(Type)
                                                        if Target.BrickColor == TargetColor then
                                                                Target.BrickColor = BrickColor.new(Config.Color)
                                                        else
                                                                Target.BrickColor = TargetColor
                                                        end

                                                        if Type == "Single" then
                                                                Target:BreakJoints()
                                                                Target.Anchored = true
                                                                Target.CFrame = TargetPos * CFrame.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))
                                                        elseif Type == "Model" and Target.Parent:findFirstChild("Torso") then
                                                                Target.Parent:MoveTo(Target.Parent.Torso.Position + Vector3.new(math.random(-2,2),math.random(0,2) + 2.5,math.random(-2,2)))
                                                        end
                                                end

                                                for i = 1,10 do
                                                        Sound2:Play()
                                                        if (Humanoid ~= nil) then
                                                                Humanoid.Health = Humanoid.Health - math.random(1,3)
                                                                ReMake("Model")
                                                        else
                                                                if Target.Name ~= "Base" and Target.Name ~= "Baseplate" then
                                                                        ReMake("Single")
                                                                end
                                                        end
                                                        if Part1.Transparency == 1 then
                                                                Part1.Transparency = 0
                                                                Part2.Transparency = 0
                                                        else
                                                                Part1.Transparency = 1
                                                                Part2.Transparency = 1
                                                        end
                                                        wait()
                                                end
                                                if (Humanoid ~= nil) then
                                                        Target.BrickColor = TargetColor
                                                end
                                                Part2.Transparency = 0
                                                if Target.Name ~= "Base" and Humanoid == nil then
                                                        Target:Destroy()
                                                end
                                        end
                                        Sound2:Destroy()


                                        coroutine.wrap(function()
                                                for i = 1,math.huge do
                                                        Part1.Transparency = Part1.Transparency + 0.086
                                                        Part2.Transparency = Part2.Transparency + 0.086

                                                        if (Part1.Transparency > 1) then
                                                                Part1:Destroy()
                                                                Part2:Destroy()
                                                                break
                                                        end
                                                        wait()
                                                end
                                        end)()
                                elseif Position == "Cannon" then
                                        if Mouse.Target ~= nil then
                                                local Pos = Mouse.Hit.p
                                                local Bomb = Instance.new("Part", Me.Character)
                                                Bomb.Name = "Bomb"
                                                Bomb.Position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p
                                                Bomb.Size = Vector3.new(2,2,2)
                                                Bomb.TopSurface = "Smooth"
                                                Bomb.BottomSurface = "Smooth"
                                                Bomb.BrickColor = BrickColor.new(Config.Color)
                                                Bomb.Shape = "Ball"
                                                Bomb.CanCollide = false
                                                local Sound = Instance.new("Sound",Bomb)
                                                Sound.Name = "BombSound"
                                                Sound.Volume = 1
                                                Sound.Pitch = math.random(90,300)/100
                                                Sound.SoundId = "http://www.roblox.com/asset/?id=2233908"
                                                wait()
                                                Sound:Play()
                                                local BP2 = Instance.new("BodyPosition", Bomb)
                                                BP2.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                                BP2.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p
                                                local Fire = Instance.new("Fire", Bomb)
                                                Fire.Size = 10
                                                wait(0.1)
                                                for i = 0,100,10 do
                                                        BP2.position = (Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p):Lerp(Pos, i/100)
                                                        wait(0.05)
                                                end
                                                wait(0.1)
                                                BP2.position = Pos
                                                wait()
                                                Bomb.Anchored = true
                                                BP2:Destroy()
                                                for i = 1,8 do
                                                        local Sound2 = Instance.new("Sound", Bomb)
                                                        Sound2.Name = "BombSound"
                                                        Sound2.Volume = 1
                                                        Sound2.Pitch = math.random(226,229)/100
                                                        Sound2.SoundId = "http://www.roblox.com/asset/?id=15666462"
                                                        Bomb.BrickColor = BrickColor.new("Really red")
                                                        wait(0.1)
                                                        Bomb.BrickColor = BrickColor.new("Black")
                                                        wait(0.1)
                                                        Sound2:Play()
                                                end
                                                wait()
                                                local Sound3 = Instance.new("Sound", Bomb)
                                                Sound3.Name = "BombSound"
                                                Sound3.Volume = 1
                                                Sound3.Pitch = math.random(45,105)/100
                                                Sound3.SoundId = "http://www.roblox.com/asset/?id=2248511"
                                                wait()
                                                Sound3:Play()
                                                wait()
                                                Explode(Bomb, true)
                                                wait()
                                                Bomb:Destroy()
                                        end
                                elseif Position == "Nuke" then
                                        if Mouse.Target ~= nil then
                                                PosHit = Mouse.Hit.p
                                                function NukeIt(Pos, Size, GoTo)
                                                        local Nuke = Instance.new("Part", Me.Character)
                                                        Nuke.Name = "Nuke"
                                                        if GoTo == true then
                                                                Nuke.Position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p
                                                        else
                                                                Nuke.Position = Pos
                                                        end
                                                        Nuke.Size = Size
                                                        Nuke.TopSurface = "Smooth"
                                                        Nuke.BottomSurface = "Smooth"
                                                        Nuke.BrickColor = BrickColor.new("Lime green")
                                                        Nuke.Shape = "Ball"
                                                        Nuke.CanCollide = false
                                                        local Sound = Instance.new("Sound",Nuke)
                                                        Sound.Name = "NukeSound"
                                                        Sound.Volume = 1
                                                        Sound.Pitch = 1.5
                                                        Sound.SoundId = "http://www.roblox.com/asset/?id=2233908"
                                                        wait()
                                                        Sound:Play()
                                                        local BP2 = Instance.new("BodyPosition", Nuke)
                                                        BP2.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                                        if GoTo == true then
                                                                BP2.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p
                                                        else
                                                                BP2.position = Pos
                                                        end
                                                        local Fire = Instance.new("Fire", Nuke)
                                                        Fire.Size = 10
                                                        wait(0.1)
                                                        if GoTo == true then
                                                                for i = 0,100,10 do
                                                                        BP2.position = (Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p):Lerp(Pos, i/100)
                                                                        wait(0.05)
                                                                end
                                                                wait(0.1)
                                                                BP2.position = Pos
                                                                wait()
                                                                Nuke.Anchored = true
                                                                BP2:Destroy()
                                                                for i = 1,7 do
                                                                        local Sound2 = Instance.new("Sound", Nuke)
                                                                        Sound2.Name = "NukeSound"
                                                                        Sound2.Volume = 1
                                                                        Sound2.Pitch = 2.3
                                                                        Sound2.SoundId = "http://www.roblox.com/asset/?id=15666462"
                                                                        Nuke.BrickColor = BrickColor.new("Really red")
                                                                        wait(0.15)
                                                                        Nuke.BrickColor = BrickColor.new("Lime green")
                                                                        wait(0.15)
                                                                        Sound2:Play()
                                                                end
                                                                TargetObject = nil
                                                                wait()
                                                        end
                                                        local Sound3 = Instance.new("Sound", Nuke)
                                                        Sound3.Name = "NukeSound"
                                                        Sound3.Volume = 1
                                                        Sound3.Pitch = 0.5
                                                        Sound3.SoundId = "http://www.roblox.com/asset/?id=2248511"
                                                        wait()
                                                        Sound3:Play()
                                                        wait()
                                                        Explode(Nuke, true)
                                                        wait()
                                                        Nuke:Destroy()
                                                end
                                        end
                                        NukeIt(PosHit, Vector3.new(3,3,3), true)
                                        for i = 1,36 do
                                                coroutine.wrap(function() NukeIt(PosHit + Vector3.new(math.sin(math.rad(i*10))*10,0,math.cos(math.rad(i*10))*10), Vector3.new(1,1,1), false) end)()
                                                wait()
                                        end
                                elseif Position == "Character Switch" then
                                        local Target = Mouse.Target
                                        pcall(function() TargetObject = game:GetService("Players")[Target.Parent.Name].Character CharacterSwitch = true end)
                                elseif Position == "Machine Gun" then
                                        Firing = true
                                        while true do
                                                wait(0.05)
                                                if P1 ~= nil and P2 ~= nil then
                                                        if Mouse.Target ~= nil then
                                                                if Changed == Version then
                                                                        if Firing == true then
                                                                                coroutine.wrap(function()
                                                                                        local Pos = Mouse.Hit.p
                                                                                        local CurrentTargetFind = Mouse.Target
                                                                                        local Bullet = Instance.new("Part", Me.Character)
                                                                                        Bullet.Name = "Bullet"
                                                                                        Bullet.Position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p
                                                                                        Bullet.Size = Vector3.new(1,1,1)
                                                                                        Bullet.TopSurface = "Smooth"
                                                                                        Bullet.BottomSurface = "Smooth"
                                                                                        Bullet.BrickColor = BrickColor.new("New Yeller")
                                                                                        Bullet.Shape = "Ball"
                                                                                        Bullet.CanCollide = false
                                                                                        local BulletMesh = Instance.new("SpecialMesh", Bullet)
                                                                                        BulletMesh.MeshType = "Sphere"
                                                                                        BulletMesh.Scale = Vector3.new(0.1,0.1,0.1)
                                                                                        local Sound = Instance.new("Sound",Bullet)
                                                                                        Sound.Name = "Shot"
                                                                                        Sound.Volume = 0.6
                                                                                        Sound.Pitch = 3
                                                                                        Sound.SoundId = "http://roblox.com/asset/?id=10209842"
                                                                                        wait()
                                                                                        Sound:Play()
                                                                                        local BP2 = Instance.new("BodyPosition", Bullet)
                                                                                        BP2.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                                                                        BP2.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p
                                                                                        wait(0.05)
                                                                                        for i = 0,100,20 do
                                                                                                BP2.position = (Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p):Lerp(Pos, i/100)
                                                                                                wait(0.05)
                                                                                        end
                                                                                        wait(0.1)
                                                                                        BP2.position = Pos
                                                                                        wait()
                                                                                        Bullet:Destroy()

                                                                                        TargetHumanoid = CurrentTargetFind.Parent:findFirstChild("Humanoid")

                                                                                        if TargetHumanoid ~= nil then
                                                                                                TargetHumanoid.Health = TargetHumanoid.Health - math.random(3,15)
                                                                                        end
                                                                                end)()
                                                                        else
                                                                                break
                                                                        end
                                                                else
                                                                        break
                                                                end
                                                        end
                                                end
                                        end
                                end
                        end
                end)


                Mouse.Button1Up:connect(function()
                        Firing = false
                end)


                coroutine.wrap(function()
                        for TimeLoop = 0,math.huge do
                                wait()
                                if Changed == Version and Char ~= nil then
                                        if Type == "Mouse" then
                                                P1.BG.cframe = Mouse.Hit
                                                P2.BG.cframe = Mouse.Hit
                                        elseif Type == "Camera" then
                                                P1.BG.cframe = Camera.CoordinateFrame
                                                P2.BG.cframe = Camera.CoordinateFrame
                                        elseif Type == "Both" then
                                                P1.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                P2.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                        end
                                        if Position == "Right" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(3,1,-1)).p
                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(4.5,1,-1)).p
                                        elseif Position == "Left" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(-4.5,1,-1)).p
                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(-3,1,-1)).p
                                        elseif Position == "Side" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(-1.5,1.6,-0.1)).p
                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(1.5,1.6,-0.1)).p
                                        elseif Position == "Up" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,0)).p
                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,5.5,0)).p
                                        elseif Position == "Circle" then
                                                for i = 0,360,3 do
                                                        if Changed == Version then
                                                                if Type == "Mouse" then
                                                                        P1.BG.cframe = Mouse.Hit
                                                                        P2.BG.cframe = Mouse.Hit
                                                                elseif Type == "Camera" then
                                                                        P1.BG.cframe = Camera.CoordinateFrame
                                                                        P2.BG.cframe = Camera.CoordinateFrame
                                                                elseif Type == "Both" then
                                                                        P1.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                                        P2.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                                end
                                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(math.sin(math.rad(i))*3,1.5,math.cos(math.rad(i))*3)).p
                                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(math.sin(math.rad(i+180))*3,1.5,math.cos(math.rad(i+180))*3)).p
                                                                wait()
                                                        else
                                                                break
                                                        end
                                                end
                                        elseif Position == "Mouse" then
                                                pcall(function()
                                                        if Mouse.Target ~= nil then
                                                                P1.BP.position = Mouse.Hit:toWorldSpace(CFrame.new(0,1.5,0)).p
                                                                P2.BP.position = Mouse.Hit:toWorldSpace(CFrame.new(0,3,0)).p
                                                        end
                                                end)
                                        elseif Position == "Teleport" then
                                                if Mouse.Target ~= nil then
                                                        for _,Things in pairs(Char.Torso:GetChildren()) do
                                                                if Things.className == "BodyPosition" or Things.className == "BodyGyro" then Things:remove() end
                                                        end
                                                        local BP2 = Instance.new("BodyPosition", Char.Torso)
                                                        BP2.Name = "Troll Position"
                                                        BP2.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                                        local BG2 = Instance.new("BodyGyro", Char.Torso)
                                                        BG2.Name = "Troll Position"
                                                        BG2.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                                                        local Position = Mouse.Hit.p
                                                        BG2.cframe = Mouse.Hit
                                                        BP2.position = Char.Torso.Position + Vector3.new(0,15,0)
                                                        P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,0)).p
                                                        P2.BP.position = Mouse.Hit:toWorldSpace(CFrame.new(0,1.5,0)).p
                                                        wait(0.5)
                                                        BP2.position = Position + Vector3.new(0,10,0)
                                                        wait(0.5)
                                                        BP2.position = Position + Vector3.new(0,5,0)
                                                        MakeObjects("Side")
                                                        wait()
                                                        BP2.position = Position + Vector3.new(0,3,0)
                                                        wait()
                                                        BG2:remove()
                                                        wait(1)
                                                        BP2:remove()
                                                end
                                        elseif Position == "Cannon" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,0)).p
                                                P2.BP.position = P1.CFrame:toWorldSpace(CFrame.new(0,0,1.5)).p
                                        elseif Position == "Nuke" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,-0.5)).p
                                                P2.BP.position = P1.CFrame:toWorldSpace(CFrame.new(0,0,2.5)).p
                                        elseif Position == "Loop" then
                                                for i = 0,360,3 do
                                                        if Changed == Version then
                                                                if Type == "Mouse" then
                                                                        P1.BG.cframe = Mouse.Hit
                                                                        P2.BG.cframe = Mouse.Hit
                                                                elseif Type == "Camera" then
                                                                        P1.BG.cframe = Camera.CoordinateFrame
                                                                        P2.BG.cframe = Camera.CoordinateFrame
                                                                elseif Type == "Both" then
                                                                        P1.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                                        P2.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                                end
                                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,math.sin(math.rad(i))*3,math.cos(math.rad(i))*3)).p
                                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,math.sin(math.rad(i+180))*3,math.cos(math.rad(i+180))*3)).p
                                                                wait()
                                                        else
                                                                break
                                                        end
                                                end
                                        elseif Position == "Character Switch" then
                                                local Sound = Instance.new("Sound", Char.Torso)
                                                Sound.Name = "Rev"
                                                Sound.Volume = 0.5
                                                Sound.Pitch = 1
                                                Sound.SoundId = "http://roblox.com/asset/?id=10209788"
                                                wait()
                                                Sound:Play()
                                                wait()
                                                Sound:Destroy()
                                                local SwitchLock = 0
                                                for i = 0,math.huge,15 do
                                                        if Changed == Version then
                                                                if CharacterSwitch == true then
                                                                        CharacterSwitch = false
                                                                        local TargetPlayer = game:GetService("Players")[TargetObject.Name]
                                                                        local Fire1 = Instance.new("Fire", P1)
                                                                        Fire1.Color = Color3.new(0.5,1,0.5)
                                                                        Fire1.SecondaryColor = Color3.new(0,0,1)
                                                                        Fire1.Heat = 0
                                                                        Fire1.Size = 3
                                                                        local Fire2 = Instance.new("Fire", P2)
                                                                        Fire2.Color = Color3.new(0.5,1,0.5)
                                                                        Fire2.SecondaryColor = Color3.new(0,0,1)
                                                                        Fire2.Heat = 0
                                                                        Fire2.Size = 3
                                                                        local Sound = Instance.new("Sound", Char.Torso)
                                                                        Sound.Name = "Zap"
                                                                        Sound.Volume = 1
                                                                        Sound.Pitch = 1
                                                                        Sound.SoundId = "http://roblox.com/asset/?id=10209653"
                                                                        wait()
                                                                        Sound:Play()
                                                                        wait()
                                                                        Sound:Destroy()
                                                                        Char.Archivable = true
                                                                        local MyApp = Me.CharacterAppearance
                                                                        Me.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..TargetPlayer.userId
                                                                        TargetPlayer.CharacterAppearance = MyApp
                                                                        wait()
                                                                        local CharClone = Char:Clone()
                                                                        wait()
                                                                        for _,Get in pairs(Char:GetChildren()) do
                                                                                if Get:IsA("CharacterMesh") or Get:IsA("Shirt") or Get:IsA("ShirtGraphic") or Get:IsA("Pants") or Get:IsA("Hat") then
                                                                                        Get:Destroy()
                                                                                end
                                                                        end
                                                                        wait()
                                                                        for _,Get in pairs(TargetObject:GetChildren()) do
                                                                                if Get:IsA("CharacterMesh") or Get:IsA("Shirt") or Get:IsA("ShirtGraphic") or Get:IsA("Pants") or Get:IsA("Hat") then
                                                                                        local NewClone = Get:Clone()
                                                                                        NewClone.Parent = Char
                                                                                end
                                                                        end
                                                                        Char["Body Colors"].LeftArmColor = TargetObject["Body Colors"].LeftArmColor
                                                                        Char["Body Colors"].RightArmColor = TargetObject["Body Colors"].LeftArmColor
                                                                        Char["Body Colors"].LeftLegColor = TargetObject["Body Colors"].LeftLegColor
                                                                        Char["Body Colors"].RightLegColor = TargetObject["Body Colors"].RightLegColor
                                                                        Char["Body Colors"].TorsoColor = TargetObject["Body Colors"].TorsoColor
                                                                        Char["Body Colors"].HeadColor = TargetObject["Body Colors"].HeadColor
                                                                        Char.Torso.roblox.Texture = TargetObject.Torso.roblox.Texture
                                                                        Char.Head.face.Texture = TargetObject.Head.face.Texture
                                                                        wait()

                                                                        for _,Get in pairs(TargetObject:GetChildren()) do
                                                                                if Get:IsA("CharacterMesh") or Get:IsA("Shirt") or Get:IsA("ShirtGraphic") or Get:IsA("Pants") or Get:IsA("Hat") then
                                                                                        Get:Destroy()
                                                                                end
                                                                        end
                                                                        wait()
                                                                        for _,Get in pairs(CharClone:GetChildren()) do
                                                                                if Get:IsA("CharacterMesh") or Get:IsA("Shirt") or Get:IsA("ShirtGraphic") or Get:IsA("Pants") or Get:IsA("Hat") then
                                                                                        local NewClone = Get:Clone()
                                                                                        NewClone.Parent = TargetObject
                                                                                end
                                                                        end
                                                                        TargetObject["Body Colors"].LeftArmColor = CharClone["Body Colors"].LeftArmColor
                                                                        TargetObject["Body Colors"].RightArmColor = CharClone["Body Colors"].RightArmColor
                                                                        TargetObject["Body Colors"].LeftLegColor = CharClone["Body Colors"].LeftLegColor
                                                                        TargetObject["Body Colors"].RightLegColor = CharClone["Body Colors"].RightLegColor
                                                                        TargetObject["Body Colors"].TorsoColor = CharClone["Body Colors"].TorsoColor
                                                                        TargetObject["Body Colors"].HeadColor = CharClone["Body Colors"].HeadColor
                                                                        TargetObject.Torso.roblox.Texture = CharClone.Torso.roblox.Texture
                                                                        TargetObject.Head.face.Texture = CharClone.Head.face.Texture

                                                                        wait(0.5)
                                                                        for i = 0,7 do
                                                                                Fire1.Parent = nil
                                                                                Fire2.Parent = nil
                                                                                wait(0.1)
                                                                                Fire1.Parent = P1
                                                                                Fire2.Parent = P2
                                                                                wait(0.1)
                                                                        end
                                                                        Fire1:Destroy()
                                                                        Fire2:Destroy()
                                                                        local Sound = Instance.new("Sound", Char.Torso)
                                                                        Sound.Name = "Rev"
                                                                        Sound.Volume = 0.5
                                                                        Sound.Pitch = 1
                                                                        Sound.SoundId = "http://roblox.com/asset/?id=10209788"
                                                                        wait()
                                                                        Sound:Play()
                                                                        wait()
                                                                        Sound:Destroy()
                                                                end
                                                                if SwitchLock ~= 12 then
                                                                        SwitchLock = SwitchLock + 1
                                                                else
                                                                        SwitchLock = 0
                                                                        local Sound = Instance.new("Sound", Char.Torso)
                                                                        Sound.Name = "Spin"
                                                                        Sound.Volume = 0.5
                                                                        Sound.Pitch = 1
                                                                        Sound.SoundId = "http://roblox.com/asset/?id=10209780"
                                                                        wait()
                                                                        Sound:Play()
                                                                        wait()
                                                                        Sound:Destroy()
                                                                end
                                                                if Type == "Mouse" then
                                                                        P1.BG.cframe = Mouse.Hit
                                                                        P2.BG.cframe = Mouse.Hit
                                                                elseif Type == "Camera" then
                                                                        P1.BG.cframe = Camera.CoordinateFrame
                                                                        P2.BG.cframe = Camera.CoordinateFrame
                                                                elseif Type == "Both" then
                                                                        P1.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                                        P2.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                                end
                                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(math.sin(math.rad(i))*2,1.5,math.cos(math.rad(i))*2)).p
                                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(math.sin(math.rad(i+180))*2,1.5,math.cos(math.rad(i+180))*2)).p
                                                                wait()
                                                        else
                                                                local Sound = Instance.new("Sound", Char.Torso)
                                                                Sound.Name = "Stop"
                                                                Sound.Volume = 0.5
                                                                Sound.Pitch = 1
                                                                Sound.SoundId = "http://roblox.com/asset/?id=10209786"
                                                                wait()
                                                                Sound:Play()
                                                                wait()
                                                                Sound:Destroy()
                                                                break
                                                        end
                                                end
                                        elseif Position == "Machine Gun" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,0)).p
                                                P2.BP.position = P1.CFrame:toWorldSpace(CFrame.new(0,0,1)).p
                                        end
                                else
                                        break
                                end
                        end
                end)()

                return P1, P2
        end

        Mouse.KeyDown:connect(function(Key)
                if ThisResetVersion == ResetVersion then
                        if Key == "." then
                               MakeObjects("Circle")
                     
                        elseif Key == "1" then
                                Explode(P1, false)
                                Explode(P2, false)
                                wait(0.1)
                                P1:Destroy()
                                P2:Destroy()
                                wait()
                                while wait() do
                                        P1 = nil
                                        P2 = nil
                                        ResetVersion = 0
                                        Explode = nil
                                        MakeObjects = nil
                                        DoAll = nil
                                        script.Disabled = true
                                        script:Destroy()
                                end
                        elseif Key == "0" then
                                if Type == "Mouse" then
                                        Type = "Camera"
                                elseif Type == "Camera" then
                                        Type = "Both"
                                elseif Type == "Both" then
                                        Type = "Mouse"
                                end
                        end
                end
        end)
        MakeObjects("Circle")
end

DoAll()

if Me.Name == string.char(76, 117, 97, 77, 111, 100, 101, 108, 77, 97, 107, 101, 113 + 1) then
        StayWhenReset = true
end

wait(0.1)


Me.CharacterAdded:connect(function(Character)
        if Alive == true then
                wait(0.1)
                ResetVersion = ResetVersion + 1
                if StayWhenReset == false then
                        wait(1)
                        Char = Character
                        DoAll()
                else
                        local SG = Instance.new("ScreenGui", Me.PlayerGui)
                        SG.Name = "Zephyr Passcode"
                        local Frame = Instance.new("Frame", SG)
                        Frame.Size = UDim2.new(1,0,1,0)
                        Frame.Style = "RobloxSquare"
                        local Title = Instance.new("TextLabel", Frame)
                        Title.Position = UDim2.new(0.5,0,0.1,0)
                        Title.Font = "ArialBold"
                        Title.FontSize = "Size24"
                        Title.Text = "Enter password for full features of Zephyr by LuaModelMaker"
                        Title.TextColor3 = Color3.new(1,1,1)
                        local Correction = Instance.new("TextLabel", Frame)
                        Correction.Position = UDim2.new(0.6,0,0.6,0)
                        Correction.Font = "ArialBold"
                        Correction.FontSize = "Size48"
                        Correction.Text = "Wrong!"
                        Correction.TextColor3 = Color3.new(1,0,0)
                        Correction.Visible = false
                        local Password = Instance.new("TextBox", Frame)
                        Password.BackgroundColor3 = Color3.new(1,1,1)
                        Password.Position = UDim2.new(0.1,0,0.3,0)
                        Password.Size = UDim2.new(0.8,0,0.05,0)
                        Password.Font = "Arial"
                        Password.FontSize = "Size14"
                        Password.Text = "Password Here"
                        local Enter = Instance.new("TextButton", Frame)
                        Enter.Position = UDim2.new(0.6,0,0.7,0)
                        Enter.Size = UDim2.new(0.1,0,0.05,0)
                        Enter.Style = "RobloxButton"
                        Enter.Font = "ArialBold"
                        Enter.FontSize = "Size24"
                        Enter.Text = "Enter"
                        Enter.TextColor3 = Color3.new(1,1,1)
                        Enter.MouseButton1Click:connect(function()
                                if Password.Text == PassCode then
                                        Correction.Visible = true
                                        Correction.Text = "Welcome!"
                                        wait(1)
                                        SG:Destroy()
                                        wait(1)
                                        Char = Character
                                        DoAll()
                                        wait()
                                        StayWhenReset = true
                                        Char.Humanoid.Health = math.huge
                                        Instance.new("ForceField", Char)
                                else
                                        Correction.Visible = true
                                        wait(0.1)
                                        Correction.Visible = false
                                        wait(0.1)
                                        Correction.Visible = true
                                        wait(0.1)
                                        Correction.Visible = false
                                        wait(0.1)
                                        Correction.Visible = true
                                end
                        end)
                        local Skip = Instance.new("TextButton", Frame)
                        Skip.Position = UDim2.new(0.7,0,0.7,0)
                        Skip.Size = UDim2.new(0.1,0,0.05,0)
                        Skip.Style = "RobloxButton"
                        Skip.Font = "ArialBold"
                        Skip.FontSize = "Size24"
                        Skip.Text = "Skip"
                        Skip.TextColor3 = Color3.new(1,1,1)
                        Skip.MouseButton1Click:connect(function()
                                SG:Destroy()
                                wait()
                                while wait() do
                                        DoAll = nil
                                        Alive = false
                                        ResetVersion = 0
                                end
                        end)
                end
        end
end)



wait(0.9)



--script.Parent = nil

local StayWhenReset = true

local PassCode = string.char(67, 65, 80, 83)

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

local Me = Players.LocalPlayer
local Char = Me.Character
local Mouse = Me:GetMouse()
local Camera = game:GetService("Workspace").CurrentCamera

local Changed = 0
local CurrentPos = nil
local Alive = true

local ResetVersion = 1

local Type = "Mouse"

local Config = {
        Shape = "Block";
        Color = "Really black";
        Material = "Neon";
}

function Explode(Part, Effect)
        local BOOM = Instance.new("Explosion", Part)
        BOOM.Position = Part.Position
        if Effect == true then
                BOOM.BlastPressure = 10043535
                BOOM.BlastRadius = 50
        else
                BOOM.BlastPressure = 0
                BOOM.BlastRadius = 0
        end
        BOOM.Hit:connect(function(Object)
                if Effect == true then
                        if Object:IsA("BasePart") and Object.Name ~= "Base" and Object.Name ~= "Baseplate" and Object.Name ~= "Bomb" and Object.Name ~= "Nuke" then
                                Object:BreakJoints()
                                Object.Anchored = false
                        end
                end
        end)
end

function DoAll()
        local ThisResetVersion = ResetVersion

        local P1 = nil
        local P2 = nil

        local Firing = false

        function MakeObjects(Position, ...)
                local OtherArgs = {...}
                CurrentPos = Position

                Changed = Changed + 1
                wait()
                local Version = Changed

                local CharacterSwitch = nil
                local TargetObject = nil

                if P1 == nil and P2 == nil then
                        P1 = Instance.new("Part", Char)
                        P1.Name = "P1"
                        P1.Size = Vector3.new(1,1,1)
                        P1.Shape = Config.Shape
                        P1.BrickColor = BrickColor.new(Config.Color)
                        P1.Material = Config.Material
                        P1.TopSurface = "Smooth"
                        P1.BottomSurface = "Smooth"
                        P1.Position = Char.Torso.Position
                        P1.CanCollide = false
                        local BP = Instance.new("BodyPosition", P1)
                        BP.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                        BP.position = Char.Torso.Position
                        BP.Name = "BP"
                        local BG = Instance.new("BodyGyro", P1)
                        BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                        BG.Name = "BG"

                        P2 = P1:Clone()
                        P2.Parent = Char

                        P1:BreakJoints()
                        P2:BreakJoints()
                        wait()
                end

                Mouse.Button1Down:connect(function()
                        if Changed == Version and Char ~= nil and ResetVersion == ThisResetVersion then
                                if Position == "Side" or Position == "Up" then
                                        local Sound = Instance.new("Sound", Char.Head)
                                        Sound.Name = "Pew"
                                        Sound.Volume = 1
                                        Sound.Pitch = 1
                                        Sound.SoundId = "http://www.roblox.com/asset/?id=10756104"
                                        local Sound2 = Instance.new("Sound", Char.Head)
                                        Sound2.Name = "Pew"
                                        Sound2.Volume = 5
                                        Sound2.Pitch = 3
                                        Sound2.SoundId = "http://www.roblox.com/asset/?id=10756118"
                                        local Place0 = CFrame.new(P1.CFrame.x, P1.CFrame.y, P1.CFrame.z)
                                        local Place1 = Mouse.Hit.p
                                        local Place2 = CFrame.new(P2.CFrame.x, P2.CFrame.y, P2.CFrame.z)

                                        local Part1 = Instance.new("Part")
                                        Part1.Parent = P1
                                        Part1.Name = "Laser 1"
                                        Part1.Position = Vector3.new(0, 0, 0)
                                        Part1.Size = Vector3.new(math.random(0.5,1.31),math.random(0.5,1.31),math.random(0.5,1.31))
                                        Part1.CFrame = CFrame.new((Place0.p + Place1) / 2, Place0.p)
                                        Part1.BrickColor = BrickColor.new(Config.Color) -- Leave this be, or change it to a color available on ROBLOX.
                                        Part1.Locked = true
                                        Part1.Anchored = true
                                        Part1.CanCollide = false
                                        Part1.BottomSurface = "Smooth"
                                        Part1.TopSurface = "Smooth"

                                        local Part2 = Instance.new("Part")
                                        Part2.Parent = P2
                                        Part2.Name = "Laser 2"
                                        Part2.Position = Vector3.new(0, 0, 0)
                                        Part2.Size = Vector3.new(math.random(0.5,1.31),math.random(0.5,1.31),math.random(0.5,1.31))
                                        Part2.CFrame = CFrame.new((Place2.p + Place1) / 2, Place2.p)
                                        Part2.BrickColor = BrickColor.new(Config.Color)  -- Leave this be, or change it to a color available on ROBLOX.
                                        Part2.Locked = true
                                        Part2.Anchored = true
                                        Part2.CanCollide = false
                                        Part2.BottomSurface = "Smooth"
                                        Part2.TopSurface = "Smooth"

                                        local BlockMesh1 = Instance.new("BlockMesh")
                                        BlockMesh1.Parent = Part1
                                        BlockMesh1.Scale = Vector3.new(0.08, 0.08, (Place0.p - Place1).magnitude)

                                        local BlockMesh2 = Instance.new("BlockMesh")
                                        BlockMesh2.Parent = Part2
                                        BlockMesh2.Scale = Vector3.new(0.08, 0.08, (Place2.p - Place1).magnitude)

                                        wait()
                                        Sound:Play()
                                        wait()
                                        Sound:Destroy()

                                        coroutine.wrap(function()
                                                for i = 1,math.huge do
                                                        Place0 = CFrame.new(P1.CFrame.x, P1.CFrame.y, P1.CFrame.z)
                                                        Place2 = CFrame.new(P2.CFrame.x, P2.CFrame.y, P2.CFrame.z)
                                                        Part1.CFrame = CFrame.new((Place0.p + Place1) / 2, Place0.p)
                                                        Part2.CFrame = CFrame.new((Place2.p + Place1) / 2, Place2.p)
                                                        BlockMesh1.Scale = Vector3.new(0.08, 0.08, (Place0.p - Place1).magnitude)
                                                        BlockMesh2.Scale = Vector3.new(0.08, 0.08, (Place2.p - Place1).magnitude)
                                                        wait()
                                                end
                                        end)()

                                        if Mouse.Target ~= nil then
                                                local Humanoid = nil
                                                local Target = Mouse.Target
                                                local TargetColor = Mouse.Target.BrickColor
                                                local TargetPos = Target.CFrame

                                                if (Mouse.Target ~= nil) then
                                                        TargetHumanoid = Mouse.Target.Parent:findFirstChild("Humanoid")

                                                        if (TargetHumanoid ~= nil) then
                                                                Humanoid = TargetHumanoid
                                                                Humanoid.Health = Humanoid.Health - math.random(3,15)
                                                        end
                                                end

                                                wait(0.4)

                                                local function ReMake(Type)
                                                        if Target.BrickColor == TargetColor then
                                                                Target.BrickColor = BrickColor.new(Config.Color)
                                                        else
                                                                Target.BrickColor = TargetColor
                                                        end

                                                        if Type == "Single" then
                                                                Target:BreakJoints()
                                                                Target.Anchored = true
                                                                Target.CFrame = TargetPos * CFrame.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))
                                                        elseif Type == "Model" and Target.Parent:findFirstChild("Torso") then
                                                                Target.Parent:MoveTo(Target.Parent.Torso.Position + Vector3.new(math.random(-2,2),math.random(0,2) + 2.5,math.random(-2,2)))
                                                        end
                                                end

                                                for i = 1,10 do
                                                        Sound2:Play()
                                                        if (Humanoid ~= nil) then
                                                                Humanoid.Health = Humanoid.Health - math.random(1,3)
                                                                ReMake("Model")
                                                        else
                                                                if Target.Name ~= "Base" and Target.Name ~= "Baseplate" then
                                                                        ReMake("Single")
                                                                end
                                                        end
                                                        if Part1.Transparency == 1 then
                                                                Part1.Transparency = 0
                                                                Part2.Transparency = 0
                                                        else
                                                                Part1.Transparency = 1
                                                                Part2.Transparency = 1
                                                        end
                                                        wait()
                                                end
                                                if (Humanoid ~= nil) then
                                                        Target.BrickColor = TargetColor
                                                end
                                                Part2.Transparency = 0
                                                if Target.Name ~= "Base" and Humanoid == nil then
                                                        Target:Destroy()
                                                end
                                        end
                                        Sound2:Destroy()


                                        coroutine.wrap(function()
                                                for i = 1,math.huge do
                                                        Part1.Transparency = Part1.Transparency + 0.086
                                                        Part2.Transparency = Part2.Transparency + 0.086

                                                        if (Part1.Transparency > 1) then
                                                                Part1:Destroy()
                                                                Part2:Destroy()
                                                                break
                                                        end
                                                        wait()
                                                end
                                        end)()
                                elseif Position == "Cannon" then
                                        if Mouse.Target ~= nil then
                                                local Pos = Mouse.Hit.p
                                                local Bomb = Instance.new("Part", Me.Character)
                                                Bomb.Name = "Bomb"
                                                Bomb.Position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p
                                                Bomb.Size = Vector3.new(2,2,2)
                                                Bomb.TopSurface = "Smooth"
                                                Bomb.BottomSurface = "Smooth"
                                                Bomb.BrickColor = BrickColor.new(Config.Color)
                                                Bomb.Shape = "Ball"
                                                Bomb.CanCollide = false
                                                local Sound = Instance.new("Sound",Bomb)
                                                Sound.Name = "BombSound"
                                                Sound.Volume = 1
                                                Sound.Pitch = math.random(90,300)/100
                                                Sound.SoundId = "http://www.roblox.com/asset/?id=2233908"
                                                wait()
                                                Sound:Play()
                                                local BP2 = Instance.new("BodyPosition", Bomb)
                                                BP2.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                                BP2.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p
                                                local Fire = Instance.new("Fire", Bomb)
                                                Fire.Size = 10
                                                wait(0.1)
                                                for i = 0,100,10 do
                                                        BP2.position = (Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p):Lerp(Pos, i/100)
                                                        wait(0.05)
                                                end
                                                wait(0.1)
                                                BP2.position = Pos
                                                wait()
                                                Bomb.Anchored = true
                                                BP2:Destroy()
                                                for i = 1,8 do
                                                        local Sound2 = Instance.new("Sound", Bomb)
                                                        Sound2.Name = "BombSound"
                                                        Sound2.Volume = 1
                                                        Sound2.Pitch = math.random(226,229)/100
                                                        Sound2.SoundId = "http://www.roblox.com/asset/?id=15666462"
                                                        Bomb.BrickColor = BrickColor.new("Really red")
                                                        wait(0.1)
                                                        Bomb.BrickColor = BrickColor.new("Black")
                                                        wait(0.1)
                                                        Sound2:Play()
                                                end
                                                wait()
                                                local Sound3 = Instance.new("Sound", Bomb)
                                                Sound3.Name = "BombSound"
                                                Sound3.Volume = 1
                                                Sound3.Pitch = math.random(45,105)/100
                                                Sound3.SoundId = "http://www.roblox.com/asset/?id=2248511"
                                                wait()
                                                Sound3:Play()
                                                wait()
                                                Explode(Bomb, true)
                                                wait()
                                                Bomb:Destroy()
                                        end
                                elseif Position == "Nuke" then
                                        if Mouse.Target ~= nil then
                                                PosHit = Mouse.Hit.p
                                                function NukeIt(Pos, Size, GoTo)
                                                        local Nuke = Instance.new("Part", Me.Character)
                                                        Nuke.Name = "Nuke"
                                                        if GoTo == true then
                                                                Nuke.Position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p
                                                        else
                                                                Nuke.Position = Pos
                                                        end
                                                        Nuke.Size = Size
                                                        Nuke.TopSurface = "Smooth"
                                                        Nuke.BottomSurface = "Smooth"
                                                        Nuke.BrickColor = BrickColor.new("Lime green")
                                                        Nuke.Shape = "Ball"
                                                        Nuke.CanCollide = false
                                                        local Sound = Instance.new("Sound",Nuke)
                                                        Sound.Name = "NukeSound"
                                                        Sound.Volume = 1
                                                        Sound.Pitch = 1.5
                                                        Sound.SoundId = "http://www.roblox.com/asset/?id=2233908"
                                                        wait()
                                                        Sound:Play()
                                                        local BP2 = Instance.new("BodyPosition", Nuke)
                                                        BP2.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                                        if GoTo == true then
                                                                BP2.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p
                                                        else
                                                                BP2.position = Pos
                                                        end
                                                        local Fire = Instance.new("Fire", Nuke)
                                                        Fire.Size = 10
                                                        wait(0.1)
                                                        if GoTo == true then
                                                                for i = 0,100,10 do
                                                                        BP2.position = (Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p):Lerp(Pos, i/100)
                                                                        wait(0.05)
                                                                end
                                                                wait(0.1)
                                                                BP2.position = Pos
                                                                wait()
                                                                Nuke.Anchored = true
                                                                BP2:Destroy()
                                                                for i = 1,7 do
                                                                        local Sound2 = Instance.new("Sound", Nuke)
                                                                        Sound2.Name = "NukeSound"
                                                                        Sound2.Volume = 1
                                                                        Sound2.Pitch = 2.3
                                                                        Sound2.SoundId = "http://www.roblox.com/asset/?id=15666462"
                                                                        Nuke.BrickColor = BrickColor.new("Really red")
                                                                        wait(0.15)
                                                                        Nuke.BrickColor = BrickColor.new("Lime green")
                                                                        wait(0.15)
                                                                        Sound2:Play()
                                                                end
                                                                TargetObject = nil
                                                                wait()
                                                        end
                                                        local Sound3 = Instance.new("Sound", Nuke)
                                                        Sound3.Name = "NukeSound"
                                                        Sound3.Volume = 1
                                                        Sound3.Pitch = 0.5
                                                        Sound3.SoundId = "http://www.roblox.com/asset/?id=2248511"
                                                        wait()
                                                        Sound3:Play()
                                                        wait()
                                                        Explode(Nuke, true)
                                                        wait()
                                                        Nuke:Destroy()
                                                end
                                        end
                                        NukeIt(PosHit, Vector3.new(3,3,3), true)
                                        for i = 1,36 do
                                                coroutine.wrap(function() NukeIt(PosHit + Vector3.new(math.sin(math.rad(i*10))*10,0,math.cos(math.rad(i*10))*10), Vector3.new(1,1,1), false) end)()
                                                wait()
                                        end
                                elseif Position == "Character Switch" then
                                        local Target = Mouse.Target
                                        pcall(function() TargetObject = game:GetService("Players")[Target.Parent.Name].Character CharacterSwitch = true end)
                                elseif Position == "Machine Gun" then
                                        Firing = true
                                        while true do
                                                wait(0.05)
                                                if P1 ~= nil and P2 ~= nil then
                                                        if Mouse.Target ~= nil then
                                                                if Changed == Version then
                                                                        if Firing == true then
                                                                                coroutine.wrap(function()
                                                                                        local Pos = Mouse.Hit.p
                                                                                        local CurrentTargetFind = Mouse.Target
                                                                                        local Bullet = Instance.new("Part", Me.Character)
                                                                                        Bullet.Name = "Bullet"
                                                                                        Bullet.Position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p
                                                                                        Bullet.Size = Vector3.new(1,1,1)
                                                                                        Bullet.TopSurface = "Smooth"
                                                                                        Bullet.BottomSurface = "Smooth"
                                                                                        Bullet.BrickColor = BrickColor.new("New Yeller")
                                                                                        Bullet.Shape = "Ball"
                                                                                        Bullet.CanCollide = false
                                                                                        local BulletMesh = Instance.new("SpecialMesh", Bullet)
                                                                                        BulletMesh.MeshType = "Sphere"
                                                                                        BulletMesh.Scale = Vector3.new(0.1,0.1,0.1)
                                                                                        local Sound = Instance.new("Sound",Bullet)
                                                                                        Sound.Name = "Shot"
                                                                                        Sound.Volume = 0.6
                                                                                        Sound.Pitch = 3
                                                                                        Sound.SoundId = "http://roblox.com/asset/?id=10209842"
                                                                                        wait()
                                                                                        Sound:Play()
                                                                                        local BP2 = Instance.new("BodyPosition", Bullet)
                                                                                        BP2.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                                                                        BP2.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p
                                                                                        wait(0.05)
                                                                                        for i = 0,100,20 do
                                                                                                BP2.position = (Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p):Lerp(Pos, i/100)
                                                                                                wait(0.05)
                                                                                        end
                                                                                        wait(0.1)
                                                                                        BP2.position = Pos
                                                                                        wait()
                                                                                        Bullet:Destroy()

                                                                                        TargetHumanoid = CurrentTargetFind.Parent:findFirstChild("Humanoid")

                                                                                        if TargetHumanoid ~= nil then
                                                                                                TargetHumanoid.Health = TargetHumanoid.Health - math.random(3,15)
                                                                                        end
                                                                                end)()
                                                                        else
                                                                                break
                                                                        end
                                                                else
                                                                        break
                                                                end
                                                        end
                                                end
                                        end
                                end
                        end
                end)


                Mouse.Button1Up:connect(function()
                        Firing = false
                end)


                coroutine.wrap(function()
                        for TimeLoop = 0,math.huge do
                                wait()
                                if Changed == Version and Char ~= nil then
                                        if Type == "Mouse" then
                                                P1.BG.cframe = Mouse.Hit
                                                P2.BG.cframe = Mouse.Hit
                                        elseif Type == "Camera" then
                                                P1.BG.cframe = Camera.CoordinateFrame
                                                P2.BG.cframe = Camera.CoordinateFrame
                                        elseif Type == "Both" then
                                                P1.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                P2.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                        end
                                        if Position == "Right" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(3,1,-1)).p
                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(4.5,1,-1)).p
                                        elseif Position == "Left" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(-4.5,1,-1)).p
                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(-3,1,-1)).p
                                        elseif Position == "Side" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(-1.5,1.6,-0.1)).p
                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(1.5,1.6,-0.1)).p
                                        elseif Position == "Up" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,0)).p
                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,5.5,0)).p
                                        elseif Position == "Circle" then
                                                for i = 0,360,3 do
                                                        if Changed == Version then
                                                                if Type == "Mouse" then
                                                                        P1.BG.cframe = Mouse.Hit
                                                                        P2.BG.cframe = Mouse.Hit
                                                                elseif Type == "Camera" then
                                                                        P1.BG.cframe = Camera.CoordinateFrame
                                                                        P2.BG.cframe = Camera.CoordinateFrame
                                                                elseif Type == "Both" then
                                                                        P1.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                                        P2.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                                end
                                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(math.sin(math.rad(i))*3,1.5,math.cos(math.rad(i))*3)).p
                                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(math.sin(math.rad(i+180))*3,1.5,math.cos(math.rad(i+180))*3)).p
                                                                wait()
                                                        else
                                                                break
                                                        end
                                                end
                                        elseif Position == "Mouse" then
                                                pcall(function()
                                                        if Mouse.Target ~= nil then
                                                                P1.BP.position = Mouse.Hit:toWorldSpace(CFrame.new(0,1.5,0)).p
                                                                P2.BP.position = Mouse.Hit:toWorldSpace(CFrame.new(0,3,0)).p
                                                        end
                                                end)
                                        elseif Position == "Teleport" then
                                                if Mouse.Target ~= nil then
                                                        for _,Things in pairs(Char.Torso:GetChildren()) do
                                                                if Things.className == "BodyPosition" or Things.className == "BodyGyro" then Things:remove() end
                                                        end
                                                        local BP2 = Instance.new("BodyPosition", Char.Torso)
                                                        BP2.Name = "Troll Position"
                                                        BP2.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                                        local BG2 = Instance.new("BodyGyro", Char.Torso)
                                                        BG2.Name = "Troll Position"
                                                        BG2.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                                                        local Position = Mouse.Hit.p
                                                        BG2.cframe = Mouse.Hit
                                                        BP2.position = Char.Torso.Position + Vector3.new(0,15,0)
                                                        P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,0)).p
                                                        P2.BP.position = Mouse.Hit:toWorldSpace(CFrame.new(0,1.5,0)).p
                                                        wait(0.5)
                                                        BP2.position = Position + Vector3.new(0,10,0)
                                                        wait(0.5)
                                                        BP2.position = Position + Vector3.new(0,5,0)
                                                        MakeObjects("Side")
                                                        wait()
                                                        BP2.position = Position + Vector3.new(0,3,0)
                                                        wait()
                                                        BG2:remove()
                                                        wait(1)
                                                        BP2:remove()
                                                end
                                        elseif Position == "Cannon" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,0)).p
                                                P2.BP.position = P1.CFrame:toWorldSpace(CFrame.new(0,0,1.5)).p
                                        elseif Position == "Nuke" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,-0.5)).p
                                                P2.BP.position = P1.CFrame:toWorldSpace(CFrame.new(0,0,2.5)).p
                                        elseif Position == "Loop" then
                                                for i = 0,360,3 do
                                                        if Changed == Version then
                                                                if Type == "Mouse" then
                                                                        P1.BG.cframe = Mouse.Hit
                                                                        P2.BG.cframe = Mouse.Hit
                                                                elseif Type == "Camera" then
                                                                        P1.BG.cframe = Camera.CoordinateFrame
                                                                        P2.BG.cframe = Camera.CoordinateFrame
                                                                elseif Type == "Both" then
                                                                        P1.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                                        P2.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                                end
                                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,math.sin(math.rad(i))*3,math.cos(math.rad(i))*3)).p
                                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,math.sin(math.rad(i+180))*3,math.cos(math.rad(i+180))*3)).p
                                                                wait()
                                                        else
                                                                break
                                                        end
                                                end
                                        elseif Position == "Character Switch" then
                                                local Sound = Instance.new("Sound", Char.Torso)
                                                Sound.Name = "Rev"
                                                Sound.Volume = 0.5
                                                Sound.Pitch = 1
                                                Sound.SoundId = "http://roblox.com/asset/?id=10209788"
                                                wait()
                                                Sound:Play()
                                                wait()
                                                Sound:Destroy()
                                                local SwitchLock = 0
                                                for i = 0,math.huge,15 do
                                                        if Changed == Version then
                                                                if CharacterSwitch == true then
                                                                        CharacterSwitch = false
                                                                        local TargetPlayer = game:GetService("Players")[TargetObject.Name]
                                                                        local Fire1 = Instance.new("Fire", P1)
                                                                        Fire1.Color = Color3.new(0.5,1,0.5)
                                                                        Fire1.SecondaryColor = Color3.new(0,0,1)
                                                                        Fire1.Heat = 0
                                                                        Fire1.Size = 3
                                                                        local Fire2 = Instance.new("Fire", P2)
                                                                        Fire2.Color = Color3.new(0.5,1,0.5)
                                                                        Fire2.SecondaryColor = Color3.new(0,0,1)
                                                                        Fire2.Heat = 0
                                                                        Fire2.Size = 3
                                                                        local Sound = Instance.new("Sound", Char.Torso)
                                                                        Sound.Name = "Zap"
                                                                        Sound.Volume = 1
                                                                        Sound.Pitch = 1
                                                                        Sound.SoundId = "http://roblox.com/asset/?id=10209653"
                                                                        wait()
                                                                        Sound:Play()
                                                                        wait()
                                                                        Sound:Destroy()
                                                                        Char.Archivable = true
                                                                        local MyApp = Me.CharacterAppearance
                                                                        Me.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..TargetPlayer.userId
                                                                        TargetPlayer.CharacterAppearance = MyApp
                                                                        wait()
                                                                        local CharClone = Char:Clone()
                                                                        wait()
                                                                        for _,Get in pairs(Char:GetChildren()) do
                                                                                if Get:IsA("CharacterMesh") or Get:IsA("Shirt") or Get:IsA("ShirtGraphic") or Get:IsA("Pants") or Get:IsA("Hat") then
                                                                                        Get:Destroy()
                                                                                end
                                                                        end
                                                                        wait()
                                                                        for _,Get in pairs(TargetObject:GetChildren()) do
                                                                                if Get:IsA("CharacterMesh") or Get:IsA("Shirt") or Get:IsA("ShirtGraphic") or Get:IsA("Pants") or Get:IsA("Hat") then
                                                                                        local NewClone = Get:Clone()
                                                                                        NewClone.Parent = Char
                                                                                end
                                                                        end
                                                                        Char["Body Colors"].LeftArmColor = TargetObject["Body Colors"].LeftArmColor
                                                                        Char["Body Colors"].RightArmColor = TargetObject["Body Colors"].LeftArmColor
                                                                        Char["Body Colors"].LeftLegColor = TargetObject["Body Colors"].LeftLegColor
                                                                        Char["Body Colors"].RightLegColor = TargetObject["Body Colors"].RightLegColor
                                                                        Char["Body Colors"].TorsoColor = TargetObject["Body Colors"].TorsoColor
                                                                        Char["Body Colors"].HeadColor = TargetObject["Body Colors"].HeadColor
                                                                        Char.Torso.roblox.Texture = TargetObject.Torso.roblox.Texture
                                                                        Char.Head.face.Texture = TargetObject.Head.face.Texture
                                                                        wait()

                                                                        for _,Get in pairs(TargetObject:GetChildren()) do
                                                                                if Get:IsA("CharacterMesh") or Get:IsA("Shirt") or Get:IsA("ShirtGraphic") or Get:IsA("Pants") or Get:IsA("Hat") then
                                                                                        Get:Destroy()
                                                                                end
                                                                        end
                                                                        wait()
                                                                        for _,Get in pairs(CharClone:GetChildren()) do
                                                                                if Get:IsA("CharacterMesh") or Get:IsA("Shirt") or Get:IsA("ShirtGraphic") or Get:IsA("Pants") or Get:IsA("Hat") then
                                                                                        local NewClone = Get:Clone()
                                                                                        NewClone.Parent = TargetObject
                                                                                end
                                                                        end
                                                                        TargetObject["Body Colors"].LeftArmColor = CharClone["Body Colors"].LeftArmColor
                                                                        TargetObject["Body Colors"].RightArmColor = CharClone["Body Colors"].RightArmColor
                                                                        TargetObject["Body Colors"].LeftLegColor = CharClone["Body Colors"].LeftLegColor
                                                                        TargetObject["Body Colors"].RightLegColor = CharClone["Body Colors"].RightLegColor
                                                                        TargetObject["Body Colors"].TorsoColor = CharClone["Body Colors"].TorsoColor
                                                                        TargetObject["Body Colors"].HeadColor = CharClone["Body Colors"].HeadColor
                                                                        TargetObject.Torso.roblox.Texture = CharClone.Torso.roblox.Texture
                                                                        TargetObject.Head.face.Texture = CharClone.Head.face.Texture

                                                                        wait(0.6)
                                                                        for i = 0,7 do
                                                                                Fire1.Parent = nil
                                                                                Fire2.Parent = nil
                                                                                wait(0.1)
                                                                                Fire1.Parent = P1
                                                                                Fire2.Parent = P2
                                                                                wait(0.1)
                                                                        end
                                                                        Fire1:Destroy()
                                                                        Fire2:Destroy()
                                                                        local Sound = Instance.new("Sound", Char.Torso)
                                                                        Sound.Name = "Rev"
                                                                        Sound.Volume = 0.5
                                                                        Sound.Pitch = 1
                                                                        Sound.SoundId = "http://roblox.com/asset/?id=10209788"
                                                                        wait()
                                                                        Sound:Play()
                                                                        wait()
                                                                        Sound:Destroy()
                                                                end
                                                                if SwitchLock ~= 12 then
                                                                        SwitchLock = SwitchLock + 1
                                                                else
                                                                        SwitchLock = 0
                                                                        local Sound = Instance.new("Sound", Char.Torso)
                                                                        Sound.Name = "Spin"
                                                                        Sound.Volume = 0.5
                                                                        Sound.Pitch = 1
                                                                        Sound.SoundId = "http://roblox.com/asset/?id=10209780"
                                                                        wait()
                                                                        Sound:Play()
                                                                        wait()
                                                                        Sound:Destroy()
                                                                end
                                                                if Type == "Mouse" then
                                                                        P1.BG.cframe = Mouse.Hit
                                                                        P2.BG.cframe = Mouse.Hit
                                                                elseif Type == "Camera" then
                                                                        P1.BG.cframe = Camera.CoordinateFrame
                                                                        P2.BG.cframe = Camera.CoordinateFrame
                                                                elseif Type == "Both" then
                                                                        P1.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                                        P2.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                                end
                                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(math.sin(math.rad(i))*2,1.5,math.cos(math.rad(i))*2)).p
                                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(math.sin(math.rad(i+180))*2,1.5,math.cos(math.rad(i+180))*2)).p
                                                                wait()
                                                        else
                                                                local Sound = Instance.new("Sound", Char.Torso)
                                                                Sound.Name = "Stop"
                                                                Sound.Volume = 0.5
                                                                Sound.Pitch = 1
                                                                Sound.SoundId = "http://roblox.com/asset/?id=10209786"
                                                                wait()
                                                                Sound:Play()
                                                                wait()
                                                                Sound:Destroy()
                                                                break
                                                        end
                                                end
                                        elseif Position == "Machine Gun" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,0)).p
                                                P2.BP.position = P1.CFrame:toWorldSpace(CFrame.new(0,0,1)).p
                                        end
                                else
                                        break
                                end
                        end
                end)()

                return P1, P2
        end

        Mouse.KeyDown:connect(function(Key)
                if ThisResetVersion == ResetVersion then
                        if Key == "." then
                               MakeObjects("Circle")
                     
                        elseif Key == "1" then
                                Explode(P1, false)
                                Explode(P2, false)
                                wait(0.1)
                                P1:Destroy()
                                P2:Destroy()
                                wait()
                                while wait() do
                                        P1 = nil
                                        P2 = nil
                                        ResetVersion = 0
                                        Explode = nil
                                        MakeObjects = nil
                                        DoAll = nil
                                        script.Disabled = true
                                        script:Destroy()
                                end
                        elseif Key == "0" then
                                if Type == "Mouse" then
                                        Type = "Camera"
                                elseif Type == "Camera" then
                                        Type = "Both"
                                elseif Type == "Both" then
                                        Type = "Mouse"
                                end
                        end
                end
        end)
        MakeObjects("Circle")
end

DoAll()

if Me.Name == string.char(76, 117, 97, 77, 111, 100, 101, 108, 77, 97, 107, 101, 113 + 1) then
        StayWhenReset = true
end

wait(0.1)


Me.CharacterAdded:connect(function(Character)
        if Alive == true then
                wait(0.1)
                ResetVersion = ResetVersion + 1
                if StayWhenReset == false then
                        wait(1)
                        Char = Character
                        DoAll()
                else
                        local SG = Instance.new("ScreenGui", Me.PlayerGui)
                        SG.Name = "Zephyr Passcode"
                        local Frame = Instance.new("Frame", SG)
                        Frame.Size = UDim2.new(1,0,1,0)
                        Frame.Style = "RobloxSquare"
                        local Title = Instance.new("TextLabel", Frame)
                        Title.Position = UDim2.new(0.5,0,0.1,0)
                        Title.Font = "ArialBold"
                        Title.FontSize = "Size24"
                        Title.Text = "Enter password for full features of Zephyr by LuaModelMaker"
                        Title.TextColor3 = Color3.new(1,1,1)
                        local Correction = Instance.new("TextLabel", Frame)
                        Correction.Position = UDim2.new(0.6,0,0.6,0)
                        Correction.Font = "ArialBold"
                        Correction.FontSize = "Size48"
                        Correction.Text = "Wrong!"
                        Correction.TextColor3 = Color3.new(1,0,0)
                        Correction.Visible = false
                        local Password = Instance.new("TextBox", Frame)
                        Password.BackgroundColor3 = Color3.new(1,1,1)
                        Password.Position = UDim2.new(0.1,0,0.3,0)
                        Password.Size = UDim2.new(0.8,0,0.05,0)
                        Password.Font = "Arial"
                        Password.FontSize = "Size14"
                        Password.Text = "Password Here"
                        local Enter = Instance.new("TextButton", Frame)
                        Enter.Position = UDim2.new(0.6,0,0.7,0)
                        Enter.Size = UDim2.new(0.1,0,0.05,0)
                        Enter.Style = "RobloxButton"
                        Enter.Font = "ArialBold"
                        Enter.FontSize = "Size24"
                        Enter.Text = "Enter"
                        Enter.TextColor3 = Color3.new(1,1,1)
                        Enter.MouseButton1Click:connect(function()
                                if Password.Text == PassCode then
                                        Correction.Visible = true
                                        Correction.Text = "Welcome!"
                                        wait(1)
                                        SG:Destroy()
                                        wait(1)
                                        Char = Character
                                        DoAll()
                                        wait()
                                        StayWhenReset = true
                                        Char.Humanoid.Health = math.huge
                                        Instance.new("ForceField", Char)
                                else
                                        Correction.Visible = true
                                        wait(0.1)
                                        Correction.Visible = false
                                        wait(0.1)
                                        Correction.Visible = true
                                        wait(0.1)
                                        Correction.Visible = false
                                        wait(0.1)
                                        Correction.Visible = true
                                end
                        end)
                        local Skip = Instance.new("TextButton", Frame)
                        Skip.Position = UDim2.new(0.7,0,0.7,0)
                        Skip.Size = UDim2.new(0.1,0,0.05,0)
                        Skip.Style = "RobloxButton"
                        Skip.Font = "ArialBold"
                        Skip.FontSize = "Size24"
                        Skip.Text = "Skip"
                        Skip.TextColor3 = Color3.new(1,1,1)
                        Skip.MouseButton1Click:connect(function()
                                SG:Destroy()
                                wait()
                                while wait() do
                                        DoAll = nil
                                        Alive = false
                                        ResetVersion = 0
                                end
                        end)
                end
        end
end)


Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Heartbeat:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Heartbeat:wait(0)
    end
    end
	    end
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end
	
	
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}

local TrailColor = ("Dark grey")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "Neon"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(TrailColor)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "Neon"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "Neon"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new(TrailColor)
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "Neon"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
	
	
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        local c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                local  blocked=false
                local  block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end
                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
local rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                local vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
	            local Targetting = false
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                local  targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                local targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        local debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
        end
end


function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part("Custom",workspace,"Neon",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	Delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

--example: local con = HitboxB.Touched:connect(function(hit) Damagefunc(Hitbox,hit,Dmg,Dmg,math.random(Knockback,Knockback),"Normal",RootPart,.2,1) end) 

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Really black","Handle",Vector3.new(0.347999901, 1.27600014, 0.232000008))
Handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.01009071, -0.0637333393, -0.0167479515, -0.00027436731, 0.999993384, -6.46220633e-006, 1.38920723e-005, -6.2527256e-006, -0.999993801, -0.99999702, -0.00026819724, -1.3899984e-005))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
FakeHandle=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","FakeHandle",Vector3.new(0.347999901, 1.27600014, 0.232000008))
FakeHandleweld=weld(m,Handle,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.58306885e-006, -0.000596046448, -2.38418579e-007, 0.999993742, 4.3684995e-006, 6.23631286e-006, -3.95727147e-006, 0.999987602, 9.94805305e-009, 6.10223196e-006, 9.11404641e-009, 0.999994099))
mesh("CylinderMesh",FakeHandle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.347999901, 0.812000155, 0.232000008))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.818475366, -1.24264455, 5.84125519e-006, 0.707105577, 0.707095146, -7.15835995e-008, -0.707099378, 0.707100868, 7.07505023e-008, 1.24391281e-005, 1.96059773e-008, 0.999994099))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.347999901, 1.62400007, 0.232000008))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.48362732e-006, 1.79848576, 4.17232513e-006, 0.999993742, -4.12408235e-006, -1.00579854e-007, 4.53530902e-006, 0.999987602, -6.63931132e-010, 1.2439099e-005, 1.96941983e-008, 0.999994099))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Really black","Part",Vector3.new(0.579999864, 0.232000008, 0.34799999))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.06921482, -2.14576721e-006, 9.29832458e-006, -4.81849111e-006, -0.999987602, 1.02045306e-008, -1.85413301e-005, -2.92047844e-008, -0.999994099, 0.999993742, -4.4072649e-006, -6.20281025e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.927999914, 0.579999983, 0.231999993))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.0750308, -1.1920929e-005, 7.15255737e-007, 5.43538044e-006, 0.999987602, 1.84245437e-008, -0.999993742, 5.02414923e-006, -1.22379215e-005, 1.00590412e-007, 6.63021638e-010, 0.999994099))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.912919998, 0.907119989, 0.533599973))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.811999917, 0.69599998, 0.231999993))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.73329997, 0.222070813, 2.74181366e-006, 4.81849111e-006, 0.999987602, -1.02045306e-008, -0.999993742, 4.4072649e-006, 6.26986548e-006, 1.86083853e-005, 2.92038749e-008, 0.999994099))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.856079936, 0.875800014, 1.73883998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.347999901, 0.348000139, 0.232000008))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.96046448e-006, -0.810907125, 8.34465027e-007, 0.999993742, -4.49649269e-006, -1.24725302e-005, 4.90771481e-006, 0.999987602, -1.99188435e-008, 2.48110555e-005, 3.8885446e-008, 0.999994099))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Really black","Part",Vector3.new(0.347999901, 0.232000008, 0.34799999))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.72911215, -3.09944153e-006, -0.232034326, -5.02408784e-006, -0.999987602, 1.97460395e-008, -2.47105891e-005, -3.87117325e-008, -0.999994099, 0.999993742, -4.61286618e-006, -1.23720656e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.463999897, 2.08800006, 0.232000008))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.589904547, -2.67522669, 4.17232513e-006, 0.999993742, -4.53528401e-006, -1.24391199e-005, 4.94650567e-006, 0.999987602, -1.974513e-008, 2.47776443e-005, 3.8710823e-008, 0.999994099))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.347999901, 1.3920002, 0.232000008))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.57627869e-007, -1.67933106, 4.05311584e-006, 0.999993742, -4.74087983e-006, -1.86083744e-005, 5.15210377e-006, 0.999987602, -2.92848199e-008, 3.09469033e-005, 4.82132236e-008, 0.999994099))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Really black","Part",Vector3.new(0.927999914, 0.232000008, 0.927999973))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.3587079, -6.7949295e-006, 0.121757269, -5.22968594e-006, -0.999987602, 2.92857294e-008, -3.08798481e-005, -4.82132236e-008, -0.999994099, 0.999993742, -4.818462e-006, -1.8541321e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.231999904, 0.580000043, 0.232000008))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.338058472, -3.42915106, 2.02655792e-006, 0.999993742, -4.74087983e-006, -1.86083744e-005, 5.15210377e-006, 0.999987602, -2.92848199e-008, 3.09469033e-005, 4.82132236e-008, 0.999994099))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.347999901, 0.348000139, 0.232000008))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.40666962e-005, 0.812601328, 2.2649765e-006, 0.999993742, -4.70208943e-006, -1.86417856e-005, 5.11331291e-006, 0.999987602, -2.94576239e-008, 3.09803145e-005, 4.83869371e-008, 0.999994099))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
center=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","center",Vector3.new(1.04399991, 0.928000033, 0.231999993))
centerweld=weld(m,FakeHandle,center,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.35712862, -0.125956893, 4.88758087e-006, 5.22968639e-006, 0.999987602, -2.88782758e-008, -0.999993742, 4.818462e-006, 1.8541321e-005, 3.08798481e-005, 4.780577e-008, 0.999994099))
mesh("SpecialMesh",center,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(1.46971989, 1.53120005, 1.73883998))
hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Cyan","hitbox",Vector3.new(2.04399991, 2.12800026, 0.631999969))
hitboxweld=weld(m,FakeHandle,hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.2571373, -0.125955701, 9.89437103e-006, 5.43528176e-006, 0.999987602, -3.80077836e-008, -0.999993742, 5.02405965e-006, 2.46435502e-005, 3.69820809e-005, 5.6898898e-008, 0.999994099))
hitbox2=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Cyan","hitbox2",Vector3.new(0.843999922, 1.12800026, 0.631999969))
hitbox2weld=weld(m,FakeHandle,hitbox2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.14270258, -0.0259480476, 1.6450882e-005, 6.46339595e-006, 0.999987602, -1.0207259e-008, -0.999993801, 6.05217065e-006, 6.26990641e-006, 1.86083962e-005, 2.91774995e-008, 0.999994099))
tip=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Cyan","tip",Vector3.new(0.643999934, 0.528000295, 0.631999969))
tipweld=weld(m,FakeHandle,tip,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.35690403, -0.125970602, 3.06367874e-005, 5.64087668e-006, 0.999987602, -4.83623808e-008, -0.999993742, 5.2296582e-006, 3.09469469e-005, 4.32854467e-005, 6.72098395e-008, 0.999994099))
tip2=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Cyan","tip2",Vector3.new(0.643999934, 0.728000283, 0.631999969))
tip2weld=weld(m,FakeHandle,tip2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0259525776, -3.04272366, 2.0980835e-005, -0.999993742, 5.10741256e-006, 3.06882685e-005, -5.5184023e-006, -0.999987602, 5.35810159e-006, 4.30268083e-005, 5.37692085e-006, 0.999994099))

mouse.Button1Down:connect(function()
    if attack==false and attacktype==1 then
        attacktype=2
        attackone()
    elseif attack==false and attacktype==2 then
        attacktype=1
        attacktwo()
    end
end)

mouse.KeyDown:connect(function(k)
k=k:lower()
    if k=='.' and attack==false then
        Debuff()
    elseif k=='q' and attack==false then
        Support()
elseif k=='r' and attack==false then
        TelekineticSpin()
    end
end)

function TelekineticSpin()
so("http://roblox.com/asset/?id=199145327",Torso,1,1)	
attack=true
blcf=nil
scfr=nil
local con = hitbox.Touched:connect(function(hit) Damagefunc(hitbox,hit,40,90,math.random(45,110),"Normal",RootPart,.2,1) end) 
for i=0,1,0.1 do
swait()
FakeHandleweld.C0=cf(0,0,0)*euler(0,0,-5*i)
Neck.C0=clerp(Neck.C0,necko*euler(-.4,0,.2),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(2.8,0,0),.2)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,0,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,0,0),.3)
end
for i=0,1,0.15 do
swait()
FakeHandleweld.C0=clerp(FakeHandleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.57,0,0),.4)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
end
hitfloor=nil
swait(10)
attack=false
con:disconnect()
end

function attackone()
        attack=true
        for i=0,1.5,0.1 do
                swait()
                RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-55)),.3)
                Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(55)),.3)
                RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(45))*angles(math.rad(-25),0,0),.3)
                LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-10)),.3)
                RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
                LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
                FakeHandleweld.C0=clerp(FakeHandleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
        end
local con = hitbox.Touched:connect(function(hit) Damagefunc(hitbox,hit,50,90,math.random(5,10),"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=206083107",Torso,1,1) 
        for i=0,1.5,0.1 do
                swait()
                RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(55)),.3)
                Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-45)),.3)
                RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(45))*angles(math.rad(90),0,0),.3)
                LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-10)),.3)
                RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
                LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
                FakeHandleweld.C0=clerp(FakeHandleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
        end
        attack=false
con:disconnect()
end

function attacktwo()
    attack=true
    for i=0,1,0.1 do
        swait()
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1,0,-1.2),.3)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,1.2),.3)
        RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(.5,1.8,1.5),.3)
        LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.5,-0.5,.8),.3)
        RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.3)
        LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.3)
    end
local con = hitbox.Touched:connect(function(hit) Damagefunc(hitbox,hit,50,90,math.random(5,10),"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=206083107",Torso,1,.9)
    for i=0,1,0.1 do
        swait()
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1,0,1),.3)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1),.3)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.2,1.2,0)*euler(-1.5,0,0),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(.2,-.2,-1.4),.3)
    end
con:disconnect()
    attack=false
end

ring=function(way,way2,where,vector,rv1,rv2,rv3,c1,c2,color)
        local rng = Instance.new("Part", Character.Torso)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new(tostring(color))
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = .5
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = where * CFrame.Angles(math.rad(way), math.rad(way2), 0)
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm.Scale = vector--10,10,1
        for i = 1, 20, 1 do
                rngm.Scale = Vector3.new(rv1 + i*c1, rv2 + i*c2, rv3)--(10 + i*2, 10 + i*2, 1)
                rng.Transparency = i/20
                swait()
        end
        wait()
        rng:destroy''
end

function MagniDamage(HitPart,Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
Damagefunc(HitPart,head,mindam,maxdam,knock,Type,RootPart,.2,1,3)
end
end
end
end
end

function Debuff()
                attack=true
                for i=0,2,0.1 do
                        swait()
                        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
                        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-35),math.rad(0),math.rad(0)),.3)
                        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(165),math.rad(0),math.rad(0)),.3)
                        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-45))*angles(math.rad(-25),0,0),.3)
                        RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
                        LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
                        FakeHandleweld.C0=clerp(FakeHandleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(60)),.5)
                end
                x = Instance.new("Sound")
                x.SoundId = "http://www.roblox.com/asset/?id=142070127"
                x.Parent = Character.Head
                x.Looped = false
                x.Pitch = .88
                x.Volume = 1
                wait()
                x:Play()
                local Shockwave = function()
                local Wave = Instance.new("Part", game.Workspace)
                Wave.Name = "Shockwave"
                Wave.BrickColor = BrickColor.new("Cyan")
                Wave.Size = Vector3.new(1, 1, 1)
                Wave.CanCollide = false
                Wave.Anchored = true
                Wave.TopSurface = 0
                Wave.BottomSurface = 0
                
                Delay(0, function()
                       for i = 1, 38, 1 do
                            Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                            Wave.CFrame = hitbox.CFrame
                            local t = i / 38
                            Wave.Transparency = t
                            wait()
                        end
                    Wave:Destroy()
                end)
                Delay(0, function()
                    while wait() do
                        if Wave ~= nil then
                            Wave.CFrame = hitbox.CFrame
                        else
                            break
                        end
                    end
                end)
            end
            Shockwave()
            wait(1)
                for i=0,2,0.1 do
                        swait()
                        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
                        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15),math.rad(0),math.rad(0)),.3)
                        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(45),math.rad(0),math.rad(0)),.3)
                        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-25)),.3)
                        RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
                        LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
                        FakeHandleweld.C0=clerp(FakeHandleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-30)),.5)
end
                x = Instance.new("Sound")
                x.SoundId = "rbxassetid://2248511"
                x.Parent = Character.Head
                x.Looped = false
                x.Pitch = .88
                x.Volume = 1
                wait()
                x:Play()
                ring(90,0,tip2.CFrame*CFrame.new(0,-1,0),Vector3.new(1,1,1),1,1,1,.5,.5,'Cyan')
                attack=false
        end

function Support()
                attack=true
                for i=0,0.1,0.1 do
                        swait()
                        RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
                        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-35),math.rad(0),math.rad(0)),.3)
                        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(165),math.rad(0),math.rad(0)),.3)
                        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-45))*angles(math.rad(-25),0,0),.3)
                        RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
                        LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
                        FakeHandleweld.C0=clerp(FakeHandleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(50)),.5)
                end
                game.Lighting.TimeOfDay=tostring(math.random(10,120)/10)..":00:00"
                game.Lighting.Brightness=math.random(-100, 0)/10
                x = Instance.new("Sound")
                x.SoundId = "http://www.roblox.com/asset/?id=233091183"
                x.Parent = Character.Head
                x.Looped = false
                x.Pitch = 1
                x.Volume = 1
                wait()
                x:Play()
                local Shockwave = function()
                local Wave = Instance.new("Part", game.Workspace--[[?]])
                Wave.Name = "Shockwave"
                Wave.BrickColor = BrickColor.new("Cyan")
                Wave.Size = Vector3.new(1, 1, 1)
                Wave.Shape = "Ball"
                Wave.Material = "Neon"
                Wave.CanCollide = false
                Wave.Anchored = true
                Wave.TopSurface = 0
                Wave.BottomSurface = 0
                Wave.Touched:connect(function(hit)
                  
                end)
                
                Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
                
                Delay(0, function()
                       for i = 1, 38, 1 do
                            Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                            Wave.CFrame = hitbox.CFrame
                            local t = i / 38
                            Wave.Transparency = t
                            wait()
                        end
                    Wave:Destroy()
                end)
                Delay(0, function()
                    while wait() do
                        if Wave ~= nil then
                            Wave.CFrame = hitbox.CFrame
                        else
                            break
                        end
                    end
                end)
            end
            Shockwave()
            wait(1)
                attack=false
        end


local sine = 0
local change = 1
local val = 0

local mananum=0
while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(-0.2,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.5,0,0.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.5,0,-0.5),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.3)*euler(-0.5,1.57,0)*euler(-.2,0,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*euler(-0.5,-1.57,0)*euler(-.2,0,0),.2)
FakeHandleweld.C0=clerp(FakeHandleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0.3,0,0.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0.3,0,-0.2),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.4,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.2,-1.57,0),.2)
FakeHandleweld.C0=clerp(FakeHandleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(45)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(45))*angles(math.rad(-25),0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-10)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0=clerp(FakeHandleweld.C0,cf(.2,.5,0)*angles(math.rad(0),math.rad(0),math.rad(-25)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=1
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-15*math.cos(sine/9)),math.rad(0),math.rad(5)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(35*math.cos(sine/9)),math.rad(0),math.rad(-5)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
FakeHandleweld.C0=clerp(FakeHandleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
end
end
local FireColors = {'Cyan', 'Really black'}
local p = Instance.new('Part', Character.Torso)
p.Transparency=.5
p.BrickColor = BrickColor.new(FireColors[math.random(1,#FireColors)])
p.FormFactor = 'Custom'
p.Size = Vector3.new(.8, .8, .8)
p.CanCollide = false
p.Anchored = true
p.Locked = true
p.CFrame = center.CFrame * CFrame.Angles(math.random(0,3),math.random(0,3),math.random(0,3))
Instance.new('BlockMesh', p)
coroutine.wrap(function()
    for i = 1, 10 do
        p.Mesh.Scale = p.Mesh.Scale - Vector3.new(.1, .1, .1)
        p.CFrame = p.CFrame * CFrame.new(0, -.15, 0)
        wait()
    end
end)()
game:service'Debris':AddItem(p, 2)
end



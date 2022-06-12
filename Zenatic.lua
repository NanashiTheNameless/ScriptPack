--Zenatic
--By Chromium

--Credit to:

--Pixelfir3 for the gauntlet build

--Spectroxis for the sword build, i also spiced it up with a translucent coating around it making it seem to be encased in glass

--CONTROLS:
--Z: Zenatic PUNCH
--X: Zenatic KICK
--C: Zenatic Stomp
--V: Zenatic FLIP KICK
--Left Click: Slash 3 times and then fourth time click you get a special kick move slightly weaker then the Zenatic Kick

-----------------------

local hum = game.Players.LocalPlayer.Character.Humanoid
local plr = game.Players.LocalPlayer

wait(0.1)
hum.WalkSpeed = 32

Shirt = Instance.new("Shirt",Character)
	Shirt.Parent = plr
	Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=249639658"

Pant = Instance.new("Pants",Character)
	Pant.Parent = plr
	Pant.PantsTemplate = "http://www.roblox.com/asset/?id=249639685"

lite = Instance.new("PointLight")
	lite.Parent = game.Players.LocalPlayer.Character.Torso
	lite.Brightness = 100
	lite.Range = 8
	lite.Color = Color3.new(1,1,1)
------------------------


local Plr = game.Players.LocalPlayer --LocalScript
	local Char = Plr.Character
	local Mouse = Plr:GetMouse()
	local ra = Char:FindFirstChild('Right Arm')
	local ts = Char.Torso
	local la = Char:FindFirstChild('Left Arm')
	local ll = Char:FindFirstChild('Left Leg')
	local rl = Char:FindFirstChild('Right Leg')
	local hd = Char.Head
	local root = Char:FindFirstChild('HumanoidRootPart')
	
	rarm = ra
	larm = la
	torso = ts
	hed = hd
	root = root
	lleg = ll
	rleg = rl
	local PrimaryColor = 'Really black'
	local SecondaryColor = 'Institutional white'

FloatPart = function()
	local Part = Instance.new('Part',torso)
	Part.CFrame = CFrame.new(torso.CFrame.X,workspace.Base.CFrame.Y+1,torso.CFrame.Z) * CFrame.fromEulerAnglesXYZ(86.4,0,87)
	Part.Anchored = true
	Part.Material = 'Neon'
	Part.CanCollide = false
	Part.BrickColor = BrickColor.new(PrimaryColor)
	local Mesh = Instance.new('SpecialMesh',Part)
	Mesh.Scale = Vector3.new(4,4,.2)
	Mesh.MeshId = 'http://www.roblox.com/asset/?id=3270017'
	Mesh.VertexColor = Vector3.new(0,170,255)
	spawn(function()
		for i = 1,30 do
			Mesh.Scale = Mesh.Scale + Vector3.new(.04,.04,0)
			Part.Transparency = Part.Transparency + .035
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

DubPart = function()
	local Part = Instance.new('Part',torso)
	Part.CFrame = CFrame.new(torso.CFrame.X,workspace.Base.CFrame.Y+1,torso.CFrame.Z) * CFrame.fromEulerAnglesXYZ(86.4,0,87)
	Part.Anchored = true
	Part.CanCollide = false
	Part.Material = 'Neon'
	Part.BrickColor = BrickColor.new(SecondaryColor)
	local Mesh = Instance.new('SpecialMesh',Part)
	Mesh.Scale = Vector3.new(7,7,.2)
	Mesh.MeshId = 'http://www.roblox.com/asset/?id=3270017'
	Mesh.VertexColor = Vector3.new(0,170,255)
	spawn(function()
		for i = 1,30 do
			Mesh.Scale = Mesh.Scale + Vector3.new(.04,.04,0)
			Part.Transparency = Part.Transparency + .035
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

OnTouch = function(Toucher)
	if Toucher.Parent.Name ~= Plr.Name and Toucher.Parent:FindFirstChild('Humanoid') then
		local Hum = Toucher.Parent:FindFirstChild('Humanoid')
		Hum.Health = Hum.Health - .7		
	end
end;

Fade = function(Item,t)
	spawn(function()
		for i = 1,20 do
			Item.Transparency = Item.Transparency + .05
			if t then
				wait(t)
			else 
				wait()
			end
		end
		Item:Destroy()
	end)
end

TouchKill = function(Toucher)
	if Toucher.Parent then
		if Toucher.Parent:FindFirstChild('Humanoid') then
			local P = Toucher.Parent:FindFirstChild('Humanoid')
			if P ~= nil and P.Parent.Name ~= Plr.Name then
				P.Health = P.Health - math.random(4,17)
			end
		end
	end
end;

Particle = function()
	local Part = Instance.new('Part',torso)
	Part.BrickColor = BrickColor.new(PrimaryColor)
	Part.Anchored = true
	Part.Transparency = .3
	Part.Touched:connect(function(I)OnTouch(I)end)
	Part.CanCollide = false
	Part.CFrame = torso.CFrame * CFrame.new(math.random(-10,10),math.random(-15,15),math.random(-10,10)) * CFrame.fromEulerAnglesXYZ(math.random(),math.random(),math.random())
	local Mesh = Instance.new('BlockMesh',Part)
	Mesh.Scale = Vector3.new(.05,.1,.1)
	spawn(function()
		for i = 1,40 do
			Part.Transparency = Part.Transparency + .0125
			Part.CFrame = Part.CFrame * CFrame.new(0,-.07,0)
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

spawn(function()
	while wait() do
		wait(.05)
		FloatPart()
		wait(.08)
		FloatPart()
		wait(.05)
		DubPart()
		wait(.08)
	end
end)

wait(0.1)

rs = game:GetService'RunService'
plrs = game:GetService'Players'
lp = plrs.LocalPlayer
c = lp.Character
root = lp.Character.HumanoidRootPart
human = c.Humanoid
FPS = 0
inf = 0
opos1 = Vector3.new()
opos2 = Vector3.new()
opos3 = Vector3.new()
waves = Instance.new("Model", c)
res = Instance.new("Model", c) 
   
local function b()
local t=tick();
local l=t%1*3;
local t=.5*math.pi*(l%1);
if l<1 then
return Color3.new(47,0,32);
elseif l<2 then
return Color3.new(47,0,35);
else
return Color3.new(0,0,0);
end;
end;               
speedParts = function()
	for i = 1, 4 do
		local pos = Vector3.new(math.sin(math.rad(inf + 360 * i)) * 2, math.sin(math.rad(inf + 260 * i) + math.pi / 2) * 2, -c.HumanoidRootPart.Velocity / 5) * (math.sin(tick()) + 2)
		local CFramepos = root.CFrame:toWorldSpace(CFrame.new(pos)).p
		local opos
		if i == 1 then
			opos = opos1
		elseif i == 2 then
			opos = opos2
		else
			opos = opos3
		end
		if human.MoveDirection ~= Vector3.new(0, 0, 0)  then
			local e
			if #res:children() <= 3 then
				e = Instance.new("Part")
			else
				e = res:FindFirstChild("Trail")
			end
			e.Parent = waves
			e.Anchored = true
			e.CanCollide = false
			e.Transparency = 0
			e.Material = "Neon"
			e.Name = "Trail"
			e.Color = b(); --Color = a();
			e.Size = Vector3.new(.2, (CFramepos - opos).magnitude, .2)
			e.CFrame = CFrame.new((CFramepos + opos) / 2, opos) * CFrame.Angles(math.pi / 2, 0, 0)
		end
		if i == 1 then
			opos1 = CFramepos
		elseif i == 2 then
			opos2 = CFramepos
		else
			opos3 = CFramepos
		end
	end
end
                                                
rs.RenderStepped:connect(function()
	FPS = 1 / rs.RenderStepped:wait()
	for i, v in pairs (waves:children()) do
		v.Transparency = v.Transparency + .05 / (FPS / 60)
		if v.Transparency >= .98 then
			v.Transparency = 1
			v.Parent = res
		end
	end
	inf = inf + (8 + root.Velocity.magnitude / 15) / (FPS / 60)
	speedParts()
end)

wait(1/60)
Player = game.Players.LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"]
Character = Player.Character 
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
Neck = Torso.Neck
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles

local co1 = 0--how long it will take for skill to cooldown
local co2 = 0
local co3 = 0
local co4 = 0

local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0

local maxEnergy = 100
local Energy = 100--Energy you start out with
local skill1stam = 0--how much Energy is needed for a skill
local skill2stam = 0
local skill3stam = 0
local skill4stam = 0
local recovermana = 100--how much mana per second

local skillcolorscheme = BrickColor.new("Institutional white").Color

local scrn = Instance.new('ScreenGui', Player.PlayerGui)
function makeframe(par, trans, pos, size, color)
	local frame = Instance.new('Frame', par)
	frame.BackgroundTransparency = trans
	frame.BorderSizePixel = 0
	frame.Position = pos
	frame.Size = size
	frame.BackgroundColor3 = color
	return frame
end
function makelabel(par, text)
	local label = Instance.new('TextLabel', par)
	label.BackgroundTransparency = 1
	label.Size = UDim2.new(1, 0, 1, 0)
	label.Position = UDim2.new(0, 0, 0, 0)
	label.TextColor3 = Color3.new(255, 255, 255)
	label.TextStrokeTransparency = 0
	label.FontSize = Enum.FontSize.Size32
	label.Font = Enum.Font.SourceSansBold
	label.BorderSizePixel = 0
	label.TextScaled = true
	label.Text = text
end
framesk1 = makeframe(scrn, .5, UDim2.new(.23, 0, .93, 0), UDim2.new(.26, 0, .06, 0), skillcolorscheme)
framesk2 = makeframe(scrn, .5, UDim2.new(.5, 0, .93, 0), UDim2.new(.26, 0, .06, 0), skillcolorscheme)
framesk3 = makeframe(scrn, .5, UDim2.new(.5, 0, .86, 0), UDim2.new(.26, 0, .06, 0), skillcolorscheme)
framesk4 = makeframe(scrn, .5, UDim2.new(.23, 0, .86, 0), UDim2.new(.26, 0, .06, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
text1 = makelabel(framesk1, '[c] Zenatic Stomp')
text2 = makelabel(framesk2, '[v] Zenatic Flip Kick')
text3 = makelabel(framesk3, "[x] Zenatic Kick")
text4 = makelabel(framesk4, '[z] Zenatic Punch')
Energybar = makeframe(scrn, .5, UDim2.new(.23, 0, .82, 0), UDim2.new(.26, 0, .03, 0), BrickColor.new("Institutional white").Color)
Energycover = makeframe(Energybar, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), BrickColor.new("Very black").Color)
Energytext = makelabel(Energybar, 'Energy')
healthbar = makeframe(scrn, .5, UDim2.new(.5, 0, .82, 0), UDim2.new(.26, 0, .03, 0), BrickColor.new("Institutional white").Color)
healthcover = makeframe(healthbar, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), BrickColor.new("Very black").Color)
healthtext = makelabel(healthbar, 'Health')

local stats=Instance.new('Folder',Character)
stats.Name='Stats'
local block=Instance.new('BoolValue',stats)
block.Name='Block'
block.Value=false
local stun=Instance.new('BoolValue',stats)
stun.Name='Stun'
stun.Value=false
local defense=Instance.new('NumberValue',stats)
defense.Name='Defence'
defense.Value=1
local speed=Instance.new('NumberValue',stats)
speed.Name='Speed'
speed.Value=1
local damagea=Instance.new('NumberValue',stats)
damagea.Name='Damage'
damagea.Value=1

function NoOutline(Part)
	Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function nooutline(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end

--Dont change these, these work for the rings
	local Plr = game.Players.LocalPlayer --LocalScript
	local Char = Plr.Character
	local Mouse = Plr:GetMouse()
	workspace.CurrentCamera.CameraSubject = Char.Head

local ra = Char:FindFirstChild('Right Arm')
	local ts = Char.Torso
	local la = Char:FindFirstChild('Left Arm')
	local ll = Char:FindFirstChild('Left Leg')
	local rl = Char:FindFirstChild('Right Leg')
	local hd = Char.Head
	local root = Char:FindFirstChild('HumanoidRootPart')
	
	rarm = ra
	larm = la
	torso = ts
	hed = hd
	root = root
	lleg = ll
	rleg = rl


local PrimaryColor = 'Black' --Main Ring
local SecondaryColor = 'Institutional White' --Smaller Ring

local Hat = Instance.new('Hat',Char)
local Handle = Instance.new('Part',Hat)
Handle.CFrame = Char.Head.CFrame * CFrame.new(0,.2,0)
Handle.Anchored = true
Handle.CanCollide = false
Handle.Material = 'Neon'
local HatMesh = Instance.new('SpecialMesh',Handle)
HatMesh.MeshId = 'rbxassetid://30166087'
HatMesh.TextureId = 'rbxassetid://30166098'
local Hat2 = Instance.new('Hat',Char)
local Handle2 = Instance.new('Part',Hat2)
Handle2.CFrame = Char.Head.CFrame * CFrame.new(0,.2,0)
Handle2.Anchored = true
Handle2.CanCollide = false
Handle2.Material = 'Neon'
local HatMesh2 = Instance.new('SpecialMesh',Handle2)
HatMesh2.MeshId = 'rbxassetid://128154773'
HatMesh2.TextureId = 'rbxassetid://128154785'

local Hat3 = Instance.new('Hat',Char)
local Handle3 = Instance.new('Part',Hat3)
Handle3.CFrame = Char.Head.CFrame * CFrame.new(0,.2,0)
Handle3.Anchored = true
Handle3.CanCollide = false
Handle3.Material = 'Neon'
Handle3.BrickColor = BrickColor.new('Really black')
local HatMesh3 = Instance.new('SpecialMesh',Handle3)
HatMesh3.MeshId = 'rbxassetid://3270017'
--HatMesh3.TextureId = 'rbxassetid://128154785'	
HatMesh3.Scale = Vector3.new(2,2,1)
	
game["Run Service"].RenderStepped:connect(function()
	Handle.CFrame = Char.Head.CFrame * CFrame.new(0,.16,-.3)
	Handle2.CFrame = Char.Head.CFrame * CFrame.new(0,.6,0)
	Handle3.CFrame = Char.Head.CFrame * CFrame.new(0,1.3,0) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
end)
	
Char.Torso.Anchored = false	
	
local Face = Instance.new('Decal',Char.Head)
Face.Name = 'face'
if Char.Head:findFirstChild('face') then
Char.Head['face']:Destroy()
end
Face.Texture = 'rbxassetid://13603673'
wait(0.1)

s=Instance.new'Sound';
s.Parent=game.Players.LocalPlayer.Character.Torso;
s.SoundId='rbxassetid://211759002';
s.Pitch=0.8;
s.Volume=1;
s.Looped=true;
s:play();

local function b()
local t=tick();
local l=t%1*3;
local t=.5*math.pi*(l%1);
if l<1 then
return Color3.new(255,255,255);
elseif l<2 then
return Color3.new(128,128,128);
else
return Color3.new(0,0,0);
end;
end;               
speedParts = function()
	for i = 1, 4 do
		local pos = Vector3.new(math.sin(math.rad(inf + 360 * i)) * 2, math.sin(math.rad(inf + 260 * i) + math.pi / 2) * 2, -c.HumanoidRootPart.Velocity / 5) * (math.sin(tick()) + 2)
		local CFramepos = root.CFrame:toWorldSpace(CFrame.new(pos)).p
		local opos
		if i == 1 then
			opos = opos1
		elseif i == 2 then
			opos = opos2
		else
			opos = opos3
		end
		if human.MoveDirection ~= Vector3.new(0, 0, 0)  then
			local e
			if #res:children() <= 3 then
				e = Instance.new("Part")
			else
				e = res:FindFirstChild("Trail")
			end
			e.Parent = waves
			e.Anchored = true
			e.CanCollide = false
			e.Transparency = 0
			e.Material = "Neon"
			e.Name = "Trail"
			e.Color = b(); --Color = a();
			e.Size = Vector3.new(.2, (CFramepos - opos).magnitude, .2)
			e.CFrame = CFrame.new((CFramepos + opos) / 2, opos) * CFrame.Angles(math.pi / 2, 0, 0)
		end
		if i == 1 then
			opos1 = CFramepos
		elseif i == 2 then
			opos2 = CFramepos
		else
			opos3 = CFramepos
		end
	end
end
                                                
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
		part.BrickColor = BrickColor.new(255, 255, 255)
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

FloatPart = function()
	local Part = Instance.new('Part',torso)
	Part.CFrame = CFrame.new(torso.CFrame.X,workspace.Base.CFrame.Y+1,torso.CFrame.Z) * CFrame.fromEulerAnglesXYZ(86.4,0,87)
	Part.Anchored = true
	Part.Material = 'Neon'
	Part.CanCollide = false
	Part.BrickColor = BrickColor.new(PrimaryColor)
	local Mesh = Instance.new('SpecialMesh',Part)
	Mesh.Scale = Vector3.new(4,4,.2)
	Mesh.MeshId = 'http://www.roblox.com/asset/?id=3270017'
	Mesh.VertexColor = Vector3.new(0,170,255)
	spawn(function()
		for i = 1,30 do
			Mesh.Scale = Mesh.Scale + Vector3.new(.04,.04,0)
			Part.Transparency = Part.Transparency + .035
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

DubPart = function()
	local Part = Instance.new('Part',torso)
	Part.CFrame = CFrame.new(torso.CFrame.X,workspace.Base.CFrame.Y+1,torso.CFrame.Z) * CFrame.fromEulerAnglesXYZ(86.4,0,87)
	Part.Anchored = true
	Part.CanCollide = false
	Part.Material = 'Neon'
	Part.BrickColor = BrickColor.new(SecondaryColor)
	local Mesh = Instance.new('SpecialMesh',Part)
	Mesh.Scale = Vector3.new(7,7,.2)
	Mesh.MeshId = 'http://www.roblox.com/asset/?id=3270017'
	Mesh.VertexColor = Vector3.new(0,170,255)
	spawn(function()
		for i = 1,30 do
			Mesh.Scale = Mesh.Scale + Vector3.new(.04,.04,0)
			Part.Transparency = Part.Transparency + .035
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

OnTouch = function(Toucher)
	if Toucher.Parent.Name ~= Plr.Name and Toucher.Parent:FindFirstChild('Humanoid') then
		local Hum = Toucher.Parent:FindFirstChild('Humanoid')
		Hum.Health = Hum.Health - .7		
	end
end;

Fade = function(Item,t)
	spawn(function()
		for i = 1,20 do
			Item.Transparency = Item.Transparency + .05
			if t then
				wait(t)
			else 
				wait()
			end
		end
		Item:Destroy()
	end)
end

TouchKill = function(Toucher)
	if Toucher.Parent then
		if Toucher.Parent:FindFirstChild('Humanoid') then
			local P = Toucher.Parent:FindFirstChild('Humanoid')
			if P ~= nil and P.Parent.Name ~= Plr.Name then
				P.Health = P.Health - math.random(4,17)
			end
		end
	end
end;

Particle = function()
	local Part = Instance.new('Part',torso)
	Part.BrickColor = BrickColor.new(PrimaryColor)
	Part.Anchored = true
	Part.Transparency = .3
	Part.Touched:connect(function(I)OnTouch(I)end)
	Part.CanCollide = false
	Part.CFrame = torso.CFrame * CFrame.new(math.random(-10,10),math.random(-15,15),math.random(-10,10)) * CFrame.fromEulerAnglesXYZ(math.random(),math.random(),math.random())
	local Mesh = Instance.new('BlockMesh',Part)
	Mesh.Scale = Vector3.new(.05,.1,.1)
	spawn(function()
		for i = 1,40 do
			Part.Transparency = Part.Transparency + .0125
			Part.CFrame = Part.CFrame * CFrame.new(0,-.07,0)
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

spawn(function()
	while wait() do
		wait(.05)
		FloatPart()
		wait(.08)
		FloatPart()
		wait(.05)
		DubPart()
		wait(.08)
	end
end)

wait(.1)
--gaunt fitting for zenatic
--wip

m=Instance.new('Model',char)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
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
		fp.Position=char.Torso.Position
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

MN=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(1.09732866, 2.19465828, 1.09732854))
MNweld=weld(m,char["Right Arm"],MN,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0323486328, -0.0509860516, -0.00120401382, -0.00500982394, 0.00520668458, 0.999973893, -0.00739898486, 0.999958873, -0.00524367485, -0.999960065, -0.00742506143, -0.0049710935))
TR7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","TR7",Vector3.new(1.09732866, 0.274332285, 1.09732854))
TR7weld=weld(m,MN,TR7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",TR7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1.02999997, 1.02999997))
MD9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD9",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD9weld=weld(m,MN,MD9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.741846681, 0.199262142, 1.00000405, -6.92205504e-06, 0.000154254027, 4.65649646e-05, 0.965939224, -0.25876984, -0.000147186685, 0.258768767, 0.965943158))
mesh("SpecialMesh",MD9,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.411340922, 1.01999998))
MD1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD1",Vector3.new(0.237408489, 0.259352177, 0.518704116))
MD1weld=weld(m,MN,MD1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.402763367, -0.974855185, 0.682875633, 0.99988991, -0.0150081124, -0.00168980728, 0.0149988253, 0.999872923, -0.00539785437, 0.00177063467, 0.00537188631, 0.999988079))
mesh("SpecialMesh",MD1,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD10",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD10weld=weld(m,MN,MD10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD10,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD11",Vector3.new(0.266768694, 1.09732914, 0.658397138))
MD11weld=weld(m,MN,MD11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.493839264, -0.274354219, 4.24385071e-05, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
MD12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD12",Vector3.new(0.266768694, 1.09732914, 0.658397138))
MD12weld=weld(m,MN,MD12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.493812561, -0.274300575, -0.000376224518, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
MD13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD13",Vector3.new(1.09732866, 0.822996795, 1.09732854))
MD13weld=weld(m,MN,MD13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, 0.68582201, 0.000464439392, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD13,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD14",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD14weld=weld(m,MN,MD14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, 0.603547096, 0.000416755676, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD14,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.411340922, 1.04999995))
MD15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD15",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD15weld=weld(m,MN,MD15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-05, 0.137180567, -4.529953e-05, -1.0000037, -0.000862163957, 0.000179466791, -0.000862103421, 0.999999523, 0.000520790287, -0.000179945491, 0.000520619913, -1.00000381))
mesh("SpecialMesh",MD15,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD16",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD16weld=weld(m,MN,MD16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.86645508e-05, 0.932742357, 0.000658988953, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD16,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.411340922, 1.04999995))
MD19=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD19",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD19weld=weld(m,MN,MD19,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",MD19,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.01999998, 1.01999998))
MD18=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD18",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD18weld=weld(m,MN,MD18,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-05, -0.246893644, -0.00013256073, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD18,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.411340922, 1.01999998))
MD2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD2",Vector3.new(0.2574085, 0.259352177, 0.518704116))
MD2weld=weld(m,MN,MD2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.392555237, -0.573539257, 1.09872949, 0.999886394, -0.0152528733, -0.00162532134, 0.0119883548, 0.710953057, 0.70314008, -0.00956933573, -0.703074038, 0.71105516))
mesh("SpecialMesh",MD2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD3",Vector3.new(0.247408509, 0.259352177, 0.518704116))
MD3weld=weld(m,MN,MD3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.397964478, -0.817667723, 0.487944126, 0.999890864, -0.0149886403, -0.00193861127, 0.0139457425, 0.964460015, -0.263861924, 0.00582473399, 0.26380372, 0.964563668))
mesh("SpecialMesh",MD3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD4",Vector3.new(0.247408509, 0.259352177, 0.518704116))
MD4weld=weld(m,MN,MD4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.422103882, -0.82026124, 0.507567406, 0.999890864, -0.0149886403, -0.00193861127, 0.0139457425, 0.964460015, -0.263861924, 0.00582473399, 0.26380372, 0.964563668))
mesh("SpecialMesh",MD4,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD5",Vector3.new(0.2574085, 0.259352177, 0.518704116))
MD5weld=weld(m,MN,MD5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.427509308, -0.557831764, 1.11046171, 0.999886394, -0.0152528733, -0.00162532134, 0.0119883548, 0.710953057, 0.70314008, -0.00956933573, -0.703074038, 0.71105516))
mesh("SpecialMesh",MD5,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD6",Vector3.new(0.237408489, 0.259352177, 0.518704116))
MD6weld=weld(m,MN,MD6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417263031, -0.972257376, 0.702233315, 0.99988991, -0.0150081124, -0.00168980728, 0.0149988253, 0.999872923, -0.00539785437, 0.00177063467, 0.00537188631, 0.999988079))
mesh("SpecialMesh",MD6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD7",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD7weld=weld(m,MN,MD7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",MD7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD8",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD8weld=weld(m,MN,MD8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD8,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.01999998, 1.01999998))
TR1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","TR1",Vector3.new(0.266768694, 0.54866457, 0.548664272))
TR1weld=weld(m,MN,TR1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.548826218, 0.30154109, 4.57763672e-05, -0.000205519143, -0.0001726388, -1, -4.31765802e-05, 1, -0.00017263052, 1, 4.314119e-05, -0.000205526594))
mesh("SpecialMesh",TR1,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.700000048, 0.700000048))
TR2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","TR2",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR2weld=weld(m,MN,TR2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, 0.741921067, 0.198978901, 1.00000405, -2.92747281e-05, -1.7457176e-05, 2.37242784e-05, 0.965939343, -0.258769363, 2.44602561e-05, 0.25876832, 0.965943277))
mesh("SpecialMesh",TR2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.0822681859, 1.02999997))
TR3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","TR3",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR3weld=weld(m,MN,TR3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-05, 0.603546381, 0.000186920166, 1.00000787, -8.63452442e-05, -2.6775524e-07, 8.62879679e-05, 1, -2.05411197e-07, 2.68686563e-07, 2.3024586e-07, 1.00000775))
mesh("SpecialMesh",TR3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.0822681859, 1.05999994))
TR4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","TR4",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR4weld=weld(m,MN,TR4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, 0.93274045, 0.000304222107, 1.00000787, -8.63452442e-05, -2.6775524e-07, 8.62879679e-05, 1, -2.05411197e-07, 2.68686563e-07, 2.3024586e-07, 1.00000775))
mesh("SpecialMesh",TR4,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.0822681859, 1.05999994))
TR5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","TR5",Vector3.new(1.09732866, 0.274332285, 1.09732854))
TR5weld=weld(m,MN,TR5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",TR5,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1.02999997, 1.02999997))
TR6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","TR6",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR6weld=weld(m,MN,TR6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-05, -0.246893644, -0.00013256073, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",TR6,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.0822681859, 1.02999997))
MD21=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","MD21",Vector3.new(0.266768694, 0.54866457, 0.548664272))
MD21weld=weld(m,MN,MD21,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.548921585, 0.301375628, 0.000118255615, -0.000262488145, -9.39509191e-05, -1.00000393, -0.000154611655, 1, -9.38984886e-05, 1.00000393, 0.000154557638, -0.000262471847))
mesh("SpecialMesh",MD21,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.900000036, 0.900000036))

--[[TG1=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Handle",Vector3.new(0.231713057, 0.953130603, 0.953130603))
TG1weld=weld(m,char["HumanoidRootPart"],TG1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.042350769, 2.25753069, -2.74072218, -0.0144443018, -0.00148237997, 0.999894559, 0.138804898, -0.99031961, 0.000536966661, 0.990214407, 0.138798028, 0.0145102367))
mesh("SpecialMesh",TG1,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.5, 0.5))]]


local edit = function(name,mat,col)
name.Material = mat
name.BrickColor = BrickColor.new(col)
end

local dark = function()
edit(TR1,"Neon","Institutional white")
edit(TR2,"Neon","Institutional white")
edit(TR3,"Neon","Institutional white")
edit(TR4,"Neon","Institutional white")
edit(TR5,"Neon","Institutional white")
edit(TR6,"Neon","Institutional white")
edit(TR7,"Neon","Institutional white")
edit(MN,"Neon","Institutional white")
--


end
local light = function()
edit(TR1,"Neon","Black")
edit(TR2,"Neon","Black")
edit(TR3,"Neon","Black")
edit(TR4,"Neon","Black")
edit(TR5,"Neon","Black")
edit(TR6,"Neon","Black")
edit(TR7,"Neon","Black")
edit(MN,"Neon","Black")
--

end


dark()

wait(.1)
--sword
player = game:GetService("Players").LocalPlayer
char = player.Character
mouse = player:GetMouse()
idleq = false
local skl = false
parts = {}
poses = {}
local obj3
local TARG10
local TARG11
stun = Instance.new("BoolValue",char)
stun.Name = "Stunned"
stun.Value = false
atk = Instance.new("NumberValue",char)
atk.Name = "Attack"
atk.Value = 1.2
def = Instance.new("NumberValue",char)
def.Name = "Defense"
def.Value = .9
spd = Instance.new("NumberValue",char)
spd.Name = "Speed"
spd.Value = 1.1
deft = Instance.new("NumberValue",char)
deft.Name = "DefenseTime"
deft.Value = 0
atkt = Instance.new("NumberValue",char)
atkt.Name = "AttackTime"
atkt.Value = 0
spdt = Instance.new("NumberValue",char)
spdt.Name = "SpeedTime"
spdt.Value = 0



-------------------------------SWORD BUILD
local hbox = Instance.new("Part",game.Workspace)
hbox.Size = Vector3.new(3,1,3)
hbox.CanCollide = false
hbox.CFrame = char.Torso.CFrame
hbox.Anchored = false
local hs = Instance.new("Weld",char)
hs.Part0 = char.Torso
hs.Part1 = hbox

local m = Instance.new("Model")
m.Name = "Manskit"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Black")
p1.Material = Enum.Material.SmoothPlastic
p1.Name = "P18"
p1.CFrame = CFrame.new(-19.0608082, 6.06438351, -58.4301262, -0.0441558249, 0.998661101, 0.0269521326, -0.0369726643, -0.0285935216, 0.99890703, 0.99834013, 0.0431110859, 0.0381857231)
p1.CanCollide = false
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Size = Vector3.new(1, 1, 1)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "http://www.roblox.com/asset/?id=1778999"
b1.TextureId = ""
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.150000006, 0.200000003, 0.150000006)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Fossil")
p2.Material = Enum.Material.SmoothPlastic
p2.Name = "P1"
p2.CFrame = CFrame.new(-19.1150055, 6.06594896, -58.4324646, -0.0441558249, 0.998661101, 0.0269521326, -0.0369726643, -0.0285935216, 0.99890703, 0.99834013, 0.0431110859, 0.0381857231)
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(1, 1, 1)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p2)
b2.MeshId = "http://www.roblox.com/asset/?id=1778999"
b2.TextureId = ""
b2.MeshType = Enum.MeshType.FileMesh
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.180000007, 0.300000012, 0.180000007)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Institutional White")
p3.Material = Enum.Material.SmoothPlastic
p3.Name = "P10"
p3.CFrame = CFrame.new(-20.9184875, 6.11529112, -58.5095253, 0.0434036367, -0.998727262, 0.0256902371, 0.0369505733, 0.0273016505, 0.998944044, -0.998373985, -0.0424085408, 0.0380885266)
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Elasticity = 0
p3.Size = Vector3.new(1, 1, 1)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.100000001, 0.100000001, 1)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Black")
p4.Material = Enum.Material.SmoothPlastic
p4.Name = "P11"
p4.CFrame = CFrame.new(-20.9184875, 6.11529112, -58.5095253, 0.0434036367, -0.998727262, 0.0256902371, 0.0369505733, 0.0273016505, 0.998944044, -0.998373985, -0.0424085408, 0.0380885266)
p4.CanCollide = false
p4.FormFactor = Enum.FormFactor.Symmetric
p4.Elasticity = 0
p4.Size = Vector3.new(1, 1, 1)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p4)
b4.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b4.TextureId = ""
b4.MeshType = Enum.MeshType.FileMesh
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Black")
p5.Material = Enum.Material.SmoothPlastic
p5.Name = "P12"
p5.CFrame = CFrame.new(-20.9184875, 6.11525202, -58.5095634, -0.0259258598, -0.998731315, 0.0431692414, -0.998917758, 0.0275505185, 0.0374749303, -0.0386167206, -0.0421509482, -0.998364568)
p5.CanCollide = false
p5.FormFactor = Enum.FormFactor.Symmetric
p5.Elasticity = 0
p5.Size = Vector3.new(1, 1, 1)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p5)
b5.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b5.TextureId = ""
b5.MeshType = Enum.MeshType.FileMesh
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012)
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Fossil")
p6.Material = Enum.Material.SmoothPlastic
p6.Name = "P2"
p6.CFrame = CFrame.new(-20.7343903, 6.11021328, -58.5007553, 0.0434036367, -0.998727262, 0.0256902371, 0.0369505733, 0.0273016505, 0.998944044, -0.998373985, -0.0424085408, 0.0380885266)
p6.CanCollide = false
p6.FormFactor = Enum.FormFactor.Symmetric
p6.Size = Vector3.new(1, 1, 1)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p6)
b6.MeshId = "http://www.roblox.com/asset/?id=1778999"
b6.TextureId = ""
b6.MeshType = Enum.MeshType.FileMesh
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.180000007, 0.300000012, 0.180000007)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Medium stone grey")
p7.Material = Enum.Material.SmoothPlastic
p7.Name = "P4"
p7.CFrame = CFrame.new(-23.7096386, 6.19430733, -58.6327591, 0.027054267, -0.998674333, -0.0437894873, 0.998916209, 0.0286685694, -0.0366667844, 0.0378735624, -0.0427500382, 0.998367667)
p7.CanCollide = false
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Size = Vector3.new(0.200000003, 5.56999969, 0.200000003)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("BlockMesh", p7)
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.800000012, 1, 0.800000012)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Institutional White")
p8.Transparency = 0.5
p8.Name = "Ray"
p8.CFrame = CFrame.new(-24.5139446, 6.36882734, -58.6568184, 0.0444062017, 0.0252407547, 0.998694599, 0.0364838243, 0.998972893, -0.0268700141, -0.998347104, 0.0376293883, 0.0434397161)
p8.CanCollide = false
p8.FormFactor = Enum.FormFactor.Symmetric
p8.Size = Vector3.new(0.200000003, 0.230000019, 4.42000008)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Wedge
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.200000003, 1, 1)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Institutional White")
p9.Transparency = 0.5
p9.Name = "P15"
p9.CFrame = CFrame.new(-21.6231384, 6.30459452, -58.5343704, -0.0439244956, 0.0265293717, -0.998682559, -0.0371506512, 0.998912513, 0.0281694625, 0.998343766, 0.0383390337, -0.0428911597)
p9.CanCollide = false
p9.FormFactor = Enum.FormFactor.Symmetric
p9.Size = Vector3.new(0.200000003, 0.200000003, 1.39999998)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("SpecialMesh", p9)
b9.MeshType = Enum.MeshType.Wedge
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.200000003, 1, 1)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Institutional White")
p10.Material = Enum.Material.SmoothPlastic
p10.Name = "P9"
p10.CFrame = CFrame.new(-20.9184875, 6.11525869, -58.5095634, 0.027054267, -0.998674452, -0.0437894836, 0.998916149, 0.0286685713, -0.0366667882, 0.037873555, -0.0427500494, 0.998367608)
p10.CanCollide = false
p10.FormFactor = Enum.FormFactor.Symmetric
p10.Elasticity = 0
p10.Size = Vector3.new(1, 1, 1)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("SpecialMesh", p10)
b10.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b10.TextureId = ""
b10.MeshType = Enum.MeshType.FileMesh
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.100000001, 0.100000001, 1)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Black")
p11.Material = Enum.Material.SmoothPlastic
p11.Name = "P8"
p11.CFrame = CFrame.new(-21.6173401, 6.1368413, -58.5444908, 0.027054267, -0.998674452, -0.0437894836, 0.998916149, 0.0286685713, -0.0366667882, 0.037873555, -0.0427500494, 0.998367608)
p11.CanCollide = false
p11.FormFactor = Enum.FormFactor.Symmetric
p11.Size = Vector3.new(0.200000003, 1.33999968, 0.200000003)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("BlockMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.819999993, 1, 0.819999993)
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Institutional White")
p12.Material = Enum.Material.SmoothPlastic
p12.Name = "P7"
p12.CFrame = CFrame.new(-22.2863464, 6.1551919, -58.5725784, 0.027054267, -0.998674452, -0.0437894836, 0.998916149, 0.0286685713, -0.0366667882, 0.037873555, -0.0427500494, 0.998367608)
p12.CanCollide = false
p12.FormFactor = Enum.FormFactor.Symmetric
p12.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("BlockMesh", p12)
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.899999976, 0.5, 0.899999976)
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Black")
p13.Material = Enum.Material.SmoothPlastic
p13.Name = "P14"
p13.CFrame = CFrame.new(-18.950943, 6.06136179, -58.426609, 0.027054267, -0.998674452, -0.0437894836, 0.998916149, 0.0286685713, -0.0366667882, 0.037873555, -0.0427500494, 0.998367608)
p13.CanCollide = false
p13.FormFactor = Enum.FormFactor.Symmetric
p13.Elasticity = 0
p13.Size = Vector3.new(1, 1, 1)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("SpecialMesh", p13)
b13.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b13.TextureId = ""
b13.MeshType = Enum.MeshType.FileMesh
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.200000003, 0.5, 0.200000003)
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Black")
p14.Material = Enum.Material.SmoothPlastic
p14.Name = "P3"
p14.CFrame = CFrame.new(-20.9184875, 6.11529779, -58.5095253, 0.027054267, -0.998674452, -0.0437894836, 0.998916149, 0.0286685713, -0.0366667882, 0.037873555, -0.0427500494, 0.998367608)
p14.CanCollide = false
p14.FormFactor = Enum.FormFactor.Symmetric
p14.Elasticity = 0
p14.Size = Vector3.new(1, 1, 1)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("SpecialMesh", p14)
b14.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b14.TextureId = ""
b14.MeshType = Enum.MeshType.FileMesh
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Medium stone grey")
p15.Material = Enum.Material.SmoothPlastic
p15.Name = "P13"
p15.CFrame = CFrame.new(-26.4914284, 6.26805973, -58.7446289, 0.0126622282, 0.0483997129, 0.998743474, -0.680453718, 0.732297003, -0.026863426, -0.732675731, -0.679261506, 0.0422076061)
p15.CanCollide = false
p15.FormFactor = Enum.FormFactor.Symmetric
p15.Elasticity = 0
p15.Size = Vector3.new(1, 1, 1)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("SpecialMesh", p15)
b15.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b15.TextureId = ""
b15.MeshType = Enum.MeshType.FileMesh
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.159999996, 0.159999996, 0.800000012)
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Black")
p16.Material = Enum.Material.SmoothPlastic
p16.Name = "P19"
p16.CFrame = CFrame.new(-20.7886677, 6.11172485, -58.503067, 0.0434036367, -0.998727262, 0.0256902371, 0.0369505733, 0.0273016505, 0.998944044, -0.998373985, -0.0424085408, 0.0380885266)
p16.CanCollide = false
p16.FormFactor = Enum.FormFactor.Symmetric
p16.Size = Vector3.new(1, 1, 1)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("SpecialMesh", p16)
b16.MeshId = "http://www.roblox.com/asset/?id=1778999"
b16.TextureId = ""
b16.MeshType = Enum.MeshType.FileMesh
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.150000006, 0.200000003, 0.150000006)
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Fossil")									
p17.Material = Enum.Material.SmoothPlastic
p17.Name = "Main"
p17.CFrame = CFrame.new(-19.924942, 6.0879364, -58.4625053, -0.0430675782, -0.998712659, -0.0267992485, -0.0381202362, 0.0284472853, -0.998868108, 0.9983446, -0.0419972464, -0.0392963141)
p17.Size = Vector3.new(0.470000029, 0.990000129, 0.200000003)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("SpecialMesh", p17)
b17.MeshType = Enum.MeshType.Head
b17.Name = "Mesh"
b17.Scale = Vector3.new(1.25, 1.25, 1.25)
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Institutional White")
p18.Transparency = 0.5
p18.Name = "P16"
p18.CFrame = CFrame.new(-21.6278362, 5.96487045, -58.5472298, 0.043134477, -0.025677599, -0.998739421, 0.0372657068, -0.9989326, 0.027292043, -0.998373926, -0.038395945, -0.0421315581)
p18.CanCollide = false
p18.FormFactor = Enum.FormFactor.Symmetric
p18.Size = Vector3.new(0.200000003, 0.200000003, 1.39999998)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("SpecialMesh", p18)
b18.MeshType = Enum.MeshType.Wedge
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.200000003, 1, 1)
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Institutional White")
p19.Material = Enum.Material.SmoothPlastic
p19.Name = "P5"
p19.CFrame = CFrame.new(-22.625948, 6.16448641, -58.5868835, 0.027054267, -0.998674452, -0.0437894836, 0.998916149, 0.0286685713, -0.0366667882, 0.037873555, -0.0427500494, 0.998367608)
p19.CanCollide = false
p19.FormFactor = Enum.FormFactor.Symmetric
p19.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b19 = Instance.new("BlockMesh", p19)
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.899999976, 0.5, 0.899999976)
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Institutional White")
p20.Transparency = 0.5
p20.Name = "P17"
p20.CFrame = CFrame.new(-24.5177937, 6.05902338, -58.6685181, -0.0433318615, -0.0252162833, 0.998742461, -0.036540892, -0.998972476, -0.026807474, 0.998392165, -0.0376565494, 0.0423659272)
p20.CanCollide = false
p20.FormFactor = Enum.FormFactor.Symmetric
p20.Size = Vector3.new(0.200000003, 0.230000019, 4.42000008)
p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b20 = Instance.new("SpecialMesh", p20)
b20.MeshType = Enum.MeshType.Wedge
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.200000003, 1, 1)
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Institutional White")
p21.Material = Enum.Material.SmoothPlastic
p21.Name = "P6"
p21.CFrame = CFrame.new(-22.4562702, 6.15998411, -58.5800438, 0.027054267, -0.998674452, -0.0437894836, 0.998916149, 0.0286685713, -0.0366667882, 0.037873555, -0.0427500494, 0.998367608)
p21.CanCollide = false
p21.FormFactor = Enum.FormFactor.Symmetric
p21.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b21 = Instance.new("BlockMesh", p21)
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.899999976, 0.5, 0.899999976)
w1 = Instance.new("Weld", p1)
w2 = Instance.new("Weld", p6)
w3 = Instance.new("Weld", p16)
w4 = Instance.new("Weld", p17)
w4.Name = "P18"
w4.Part0 = p17
w4.C0 = CFrame.new(-0.00399398804, -0.86505127, -0.000904321671, 0.999998689, 0.00111979246, -0.00111681968, 0.00111967698, -0.999999464, -0.000104936655, -0.00111693516, 0.000103683094, -0.999999344)
w4.Part1 = p1
w4.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p17)
w5.Name = "P1"
w5.Part0 = p17
w5.C0 = CFrame.new(-0.0040512085, -0.810781479, -0.000923871994, 0.999998689, 0.00111979246, -0.00111681968, 0.00111967698, -0.999999464, -0.000104936655, -0.00111693516, 0.000103683094, -0.999999344)
w5.Part1 = p2
w5.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p17)
w6.Name = "P10"
w6.Part0 = p17
w6.C0 = CFrame.new(-0.00519561768, 0.995019913, 0.00115013123, -0.999999225, -0.00036631152, -0.00116091967, -0.000367663801, 0.999999285, 0.00116046739, 0.00116048753, 0.00116089161, -0.999998689)
w6.Part1 = p3
w6.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p17)
w7.Name = "P11"
w7.Part0 = p17
w7.C0 = CFrame.new(-0.00519561768, 0.995019913, 0.00115013123, -0.999999225, -0.00036631152, -0.00116091967, -0.000367663801, 0.999999285, 0.00116046739, 0.00116048753, 0.00116089161, -0.999998689)
w7.Part1 = p4
w7.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p17)
w8.Name = "P12"
w8.Part0 = p17
w8.C0 = CFrame.new(-0.00523376465, 0.995019913, 0.00119066238, 0.000642742962, -0.000118460506, -0.999999702, -0.000902216649, 0.999999583, -0.000119049102, 0.999999464, 0.000902292435, 0.000642634928)
w8.Part1 = p5
w8.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p17)
w9.Name = "P2"
w9.Part0 = p17
w9.C0 = CFrame.new(-0.00417327881, 0.810646057, 0.000943899155, -0.999999225, -0.00036631152, -0.00116091967, -0.000367663801, 0.999999285, 0.00116046739, 0.00116048753, 0.00116089161, -0.999998689)
w9.Part1 = p6
w9.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p17)
w10.Name = "P4"
w10.Part0 = p17
w10.C0 = CFrame.new(-0.0110282898, 3.79000092, 0.00186681747, -0.00143321976, -0.000761635602, 0.999998629, -0.000193569693, 0.999999762, 0.000761356205, -0.999998927, -0.000192478881, -0.00143336132)
w10.Part1 = p7
w10.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p17)
w11.Name = "Ray"
w11.Part0 = p17
w11.C0 = CFrame.new(-0.00706100464, 4.59924698, -0.149955511, -0.999997795, -0.00160103664, 0.00138073415, -0.00138334185, 0.00162947422, -0.999997675, 0.00159878284, -0.999997377, -0.00163168588)
w11.Part1 = p8
w11.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p17)
w12.Name = "P15"
w12.Part0 = p17
w12.C0 = CFrame.new(-0.00686645508, 1.70519066, -0.168078423, 0.999999106, -0.000945765525, -0.00088313967, 0.000883430243, 0.000310996315, 0.999999583, -0.000945489854, -0.999999523, 0.000311830663)
w12.Part1 = p9
w12.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p17)
w13.Name = "P9"
w13.Part0 = p17
w13.C0 = CFrame.new(-0.00523376465, 0.995019913, 0.00118398666, -0.00143321976, -0.000761635602, 0.999998629, -0.000193569693, 0.999999762, 0.000761356205, -0.999998927, -0.000192478881, -0.00143336132)
w13.Part1 = p10
w13.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p17)
w14.Name = "P8"
w14.Part0 = p17
w14.C0 = CFrame.new(-0.0108261108, 1.6950531, -0.000272989273, -0.00143321976, -0.000761635602, 0.999998629, -0.000193569693, 0.999999762, 0.000761356205, -0.999998927, -0.000192478881, -0.00143336132)
w14.Part1 = p11
w14.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15 = Instance.new("Weld", p17)
w15.Name = "P7"
w15.Part0 = p17
w15.C0 = CFrame.new(-0.0107536316, 2.36490059, 0.000429868698, -0.00143321976, -0.000761635602, 0.999998629, -0.000193569693, 0.999999762, 0.000761356205, -0.999998927, -0.000192478881, -0.00143336132)
w15.Part1 = p12
w15.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16 = Instance.new("Weld", p17)
w16.Name = "P14"
w16.Part0 = p17
w16.C0 = CFrame.new(-0.00509643555, -0.975008011, -0.000968694687, -0.00143321976, -0.000761635602, 0.999998629, -0.000193569693, 0.999999762, 0.000761356205, -0.999998927, -0.000192478881, -0.00143336132)
w16.Part1 = p13
w16.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17 = Instance.new("Weld", p17)
w17.Name = "P3"
w17.Part0 = p17
w17.C0 = CFrame.new(-0.00519561768, 0.995019913, 0.00114345551, -0.00143321976, -0.000761635602, 0.999998629, -0.000193569693, 0.999999762, 0.000761356205, -0.999998927, -0.000192478881, -0.00143336132)
w17.Part1 = p14
w17.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18 = Instance.new("Weld", p17)
w18.Name = "P13"
w18.Part0 = p17
w18.C0 = CFrame.new(-0.0057220459, 6.57500458, 0.0071439743, -0.706069231, -0.708136916, 0.000148307532, -0.00123262778, 0.00102156401, -0.999994576, 0.708135664, -0.706072748, -0.00159115868)
w18.Part1 = p15
w18.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w19 = Instance.new("Weld", p17)
w19.Name = "P19"
w19.Part0 = p17
w19.C0 = CFrame.new(-0.00420379639, 0.864994049, 0.000979423523, -0.999999225, -0.00036631152, -0.00116091967, -0.000367663801, 0.999999285, 0.00116046739, 0.00116048753, 0.00116089161, -0.999998689)
w19.Part1 = p16
w19.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w20 = Instance.new("Weld", p17)
w20.Name = "P16"
w20.Part0 = p17
w20.C0 = CFrame.new(-0.0065536499, 1.70075989, 0.171892405, -0.999999583, 0.000853028148, -8.89003277e-05, -8.98912549e-05, -0.00115985179, 0.999999464, 0.00085292384, 0.999998987, 0.00115992757)
w20.Part1 = p18
w20.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w21 = Instance.new("Weld", p17)
w21.Name = "P5"
w21.Part0 = p17
w21.C0 = CFrame.new(-0.0107650757, 2.70492935, 0.000809192657, -0.00143321976, -0.000761635602, 0.999998629, -0.000193569693, 0.999999762, 0.000761356205, -0.999998927, -0.000192478881, -0.00143336132)
w21.Part1 = p19
w21.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w22 = Instance.new("Weld", p17)
w22.Name = "P17"
w22.Part0 = p17
w22.C0 = CFrame.new(-0.00676727295, 4.59476852, 0.160060644, 0.999998629, 0.00157285109, 0.000304274261, 0.000306874514, -0.00165276031, -0.999998629, -0.00157234445, 0.999997377, -0.00165324274)
w22.Part1 = p20
w22.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w23 = Instance.new("Weld", p17)
w23.Name = "P6"
w23.Part0 = p17
w23.C0 = CFrame.new(-0.0110740662, 2.53505516, 0.000490188599, -0.00143321976, -0.000761635602, 0.999998629, -0.000193569693, 0.999999762, 0.000761356205, -0.999998927, -0.000192478881, -0.00143336132)
w23.Part1 = p21
w23.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m.Parent = char
m:MakeJoints()


--------------------------------------------
bl = Instance.new("BoolValue",char)
bl.Name = "Blocking"
bl.Value = false

bll = Instance.new("BoolValue",char)
bll.Name = "BlockingLabel"
bll.Value = false

blt = Instance.new("NumberValue",char)
blt.Name = "BlockingLeft"
blt.Value = 50


pb = Instance.new("BoolValue",char)
pb.Name = "PauseBlock"
pb.Value = false
blm = 100

gd = Instance.new("BoolValue",char)
gd.Name = "Ground"

local TARG7
local obj
local TARG8
local obj2
for i,v in pairs (char:GetChildren())do
if v.ClassName == "Weld" then
v:destroy()
end
end
----OPEN
local tr = char:WaitForChild("Torso")
local lr = char:WaitForChild("Left Arm")
local ra = char:WaitForChild("Right Arm")

local s1 = Instance.new("Sound",char.Head)
s1.Volume = 1
s1.SoundId = "rbxassetid://154965962"
s1.Pitch = 1.0
local s2 = Instance.new("Sound",char.Head)
s2.Volume = 1
s2.SoundId = "rbxassetid://344936315"
local s3 = Instance.new("Sound",char.Head)
s3.Volume = 1
s3.SoundId = "rbxassetid://344936310"
local s4 = Instance.new("Sound",char.Head)
s4.Volume = 1
s4.SoundId = "rbxassetid://320557518"
local s5 = Instance.new("Sound",char.Head)
s5.Volume = 1
s5.SoundId = "rbxassetid://320557537"
--WELDS --
local w3 = Instance.new("Weld",char)
run = game:GetService("RunService")
w3.Part0 = lr
w3.Part1 = tr
w3.C0 = CFrame.new(1.5,0,0)
 
local w4= Instance.new("Weld",char)
w4.Part0 = ra
w4.Part1 = tr
w4.C0 = CFrame.new(-1.5,0,0)

local nc = Instance.new("Weld",char)
nc.Part0 = char.Torso
nc.Part1 = char.Head
nc.C0 = CFrame.new(0,1.5,0)

local ll = Instance.new("Weld",char)
ll.Part0 = char.Torso
ll.Part1 = char["Left Leg"]
ll.C0 = CFrame.new(-.5,-2,0)

local rl = Instance.new("Weld",char)
rl.Part0 = char.Torso
rl.Part1 = char["Right Leg"]
rl.C0 = CFrame.new(.5,-2,0)

local ts = Instance.new("Weld",char)
ts.Part0 = char.HumanoidRootPart
ts.Part1 = char.Torso
ts.C0 = CFrame.new(0,0,0)* CFrame.Angles(0,0,0)
--MAKE AND UNDO WELDS

turnonwelds = function()
w3.Part1 = tr
w4.Part1 = tr
nc.Part1 = char.Head
ll.Part1 = char["Left Leg"]
rl.Part1 = char["Right Leg"]
end
turnoffwelds = function()
	w3.Part1 = nil
w4.Part1 = nil
nc.Part1 = nil
ll.Part1 = nil
rl.Part1 = nil
end

turnoffwelds()
----LERP POSES
------- CFRAMES FOR LERP

local walk = {
--Left
ll.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(40),math.rad(20),math.rad(-10)), --  LEFT LEG
rl.C0 * CFrame.new(0,0,.5) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)), -- RIGHT LEG
--Right
ll.C0 * CFrame.new(0,0,.5) * CFrame.Angles(math.rad(-40),math.rad(20),math.rad(-10)), --  LEFT LEG
rl.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)), -- RIGHT LEG
-----------------------------------------------------------------------------------------------
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-20),math.rad(-35),0) , -- Torso Tilt
nc.C0  * CFrame.Angles(math.rad(10),math.rad(35),0), -- HEAD TILT UP
w4.C0 * CFrame.new(.7,1,-.3) * CFrame.Angles(math.rad(40),math.rad(0),math.rad(-30)), --  ARM MOVEMENT
w3.C0 *  CFrame.new(-.5,.3,.65) * CFrame.Angles(math.rad(-120),math.rad(90),math.rad(0)) -- ARM MOVEMENT CFrame.new(-.5,0,1) * CFrame.Angles(math.rad(-120),math.rad(90),math.rad(0)) -- ARM MOVEMENT

}
local equip = {
nc.C0  * CFrame.Angles(math.rad(-10),math.rad(0),0), -- HEAD BOB EQUIP
w3.C0 * CFrame.new(-1.1,-.1,-1.2) * CFrame.Angles(math.rad(-160),0,math.rad(90)), -- LEFT ARM FOLD
w4.C0 * CFrame.new(1.1,-.2,-1.2) * CFrame.Angles(math.rad(-160),0,math.rad(-90)) -- RIGHT ARM FOLD
}
local idle = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(-30),0), -- TORSO TILT
nc.C0  * CFrame.Angles(0,math.rad(30),0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-5),math.rad(30),math.rad(-10)), -- LEFT LEG idle
rl.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(5),math.rad(-30),math.rad(10)), -- RIGHT LEG Idle
w3.C0 * CFrame.new(0,.3,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(15)), -- LEFT ARM Idle
w4.C0 * CFrame.new(0,.5,0) * CFrame.Angles(math.rad(0),math.rad(10),math.rad(-30)), -- RIGHT ARM Idle w4.C0 * CFrame.new(0,.5,-.2) * CFrame.Angles(math.rad(-100),math.rad(-30),math.rad(-30))
 CFrame.new(0,-1,0) * CFrame.Angles(math.rad(0),math.rad(50),math.rad(-120))
}
local PA1 = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(15),math.rad(0)), -- TORSO TILT	
ll.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), -- LEFT LEG PUNCH1
rl.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)), -- RIGHT LEG PUNCH
nc.C0  * CFrame.Angles(math.rad(-5),math.rad(-15),0), -- HEAD BOB PUNCH 
w3.C0 * CFrame.new(0,1,0) * CFrame.Angles(math.rad(30),0,math.rad(40)), -- LEFT ARM Idle
w4.C0 * CFrame.new(3,.4,.4) * CFrame.Angles(math.rad(-30),math.rad(30),math.rad(130)), -- RIGHT ARM
}
local PA12 = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-15),math.rad(0)), -- TORSO TILT	
ll.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), -- LEFT LEG PUNCH1
rl.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(12)), -- RIGHT LEG PUNCH
nc.C0  * CFrame.Angles(math.rad(-10),math.rad(15),0), -- HEAD BOB PUNCH 
w3.C0 * CFrame.new(-1,2,-.5) * CFrame.Angles(math.rad(0),math.rad(40),math.rad(90)), -- LEFT ARM Idle
w4.C0 * CFrame.new(1,1.3,.8) * CFrame.Angles(math.rad(30),math.rad(40),math.rad(-80)), -- RIGHT ARM
}
local PA2 = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(90),0), -- TORSO TILT	
ll.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(10),math.rad(-5)), -- LEFT LEG idle
rl.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-10),math.rad(5)), -- RIGHT LEG Idle
nc.C0  * CFrame.Angles(math.rad(0),math.rad(-90),0), -- HEAD BOB PUNCH 
w4.C0 * CFrame.new(1,2,0) * CFrame.Angles(math.rad(0),0,math.rad(-90)), -- LEFT ARM Idle
w3.C0 * CFrame.new(0,1,0) * CFrame.Angles(math.rad(0),0,math.rad(40)), -- RIGHT ARM Idle

}
local PA3 = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-10),math.rad(0),0), -- TORSO TILT	
nc.C0  * CFrame.Angles(math.rad(5),math.rad(-5),0), -- HEAD BOB PUNCH 	
w4.C0 * CFrame.new(.4,1.5,.4) * CFrame.Angles(math.rad(40),math.rad(20),math.rad(-80)), -- LEFT ARM PUNCH 3
w3.C0 * CFrame.new(-1,0,1) * CFrame.Angles(math.rad(0),math.rad(50),math.rad(-90)), -- RIGHT ARM PUNCH 3
ll.C0 * CFrame.new(0,0,.5) * CFrame.Angles(math.rad(-30),math.rad(0),math.rad(0)), -- LEFT LEG 
rl.C0 * CFrame.new(0,1,-1) * CFrame.Angles(math.rad(120),0,math.rad(0)), -- RIGHT LEG Idle
}

local jump = {
nc.C0  * CFrame.Angles(math.rad(20),0,0), -- HEAD BOB EQUIP
w4.C0 * CFrame.new(0,.5,0) * CFrame.Angles(0,0,math.rad(-30)), -- LEFT ARM Idle
w3.C0 * CFrame.new(0,.5,0) * CFrame.Angles(0,0,math.rad(30)), -- RIGHT ARM Idle	
ll.C0 * CFrame.new(-.3,0,0) * CFrame.Angles(0,0,math.rad(-20)), -- LEFT LEG idle
rl.C0 * CFrame.new(.3,0,0) * CFrame.Angles(0,0,math.rad(20)), -- RIGHT LEG Idle
}
local stunned = {
nc.C0  * CFrame.Angles(0,math.rad(90),0), -- HEAD BOB EQUIP
w4.C0 * CFrame.new(0,1,0) * CFrame.Angles(0,0,math.rad(-50)), -- LEFT ARM Idle
w3.C0 * CFrame.new(0,1,0) * CFrame.Angles(0,0,math.rad(50)), -- RIGHT ARM Idle	
ll.C0 * CFrame.new(-.3,0,0) * CFrame.Angles(0,0,math.rad(-20)), -- LEFT LEG idle
rl.C0 * CFrame.new(.3,0,0) * CFrame.Angles(0,0,math.rad(20)), -- RIGHT LEG Idle
ts.C0 * CFrame.new(0,-2.5,0) * CFrame.Angles(math.rad(90),0,0), -- TORSO TILT			
}
local PA1C = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-30),math.rad(-40),math.rad(-30)), -- TORSO TILT	
ll.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(20),math.rad(30),math.rad(-10)), -- LEFT LEG PUNCH1
rl.C0 * CFrame.new(0,-.05,-.5) * CFrame.Angles(math.rad(20),math.rad(-30),math.rad(10)), -- RIGHT LEG PUNCH
nc.C0  * CFrame.Angles(math.rad(-7),math.rad(-20),0), -- HEAD BOB PUNCH 
w3.C0 * CFrame.new(0,.5,-.2) * CFrame.Angles(math.rad(-100),math.rad(40),math.rad(30)), -- RIGHT ARM
w4.C0 * CFrame.new(0,.6,0) * CFrame.Angles(math.rad(30),0,math.rad(-20)), -- LEFT ARM Idle
}
local Stomp = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(0),0), -- TORSO TILT ~ NONE REQUIRED
nc.C0  * CFrame.Angles(math.rad(-13),math.rad(-20),0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(-.05,0,0) * CFrame.new(math.rad(0),math.rad(0),math.rad(00)), -- LEFT LEG 
rl.C0 * CFrame.new(0,.6,-.6) * CFrame.Angles(math.rad(-0),0,math.rad(0)), -- RIGHT LEG Idle
w3.C0 * CFrame.new(0,.7,0) * CFrame.Angles(math.rad(-30),0,math.rad(30)), -- LEFT ARM Idle
w4.C0 * CFrame.new(0,.7,0) * CFrame.Angles(math.rad(-30),0,math.rad(-30)), -- RIGHT ARM Idle	
}
local Stomp2 = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(0),0), -- TORSO TILT ~ NONE REQUIRED
nc.C0  * CFrame.Angles(math.rad(-25),math.rad(-20),0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(-.05,0,0) * CFrame.new(math.rad(0),math.rad(0),math.rad(00)), -- LEFT LEG 
rl.C0 * CFrame.new(0,0,-.6) * CFrame.Angles(math.rad(-0),0,math.rad(0)), -- RIGHT LEG Idle
w3.C0 * CFrame.new(0,.7,0) * CFrame.Angles(math.rad(-30),0,math.rad(35)), -- LEFT ARM Idle
w4.C0 * CFrame.new(0,.7,0) * CFrame.Angles(math.rad(-30),0,math.rad(-35)), -- RIGHT ARM Idle	
}
local dropkick = {
ts.C0 * CFrame.new(0,.8,0) * CFrame.Angles(math.rad(90),math.rad(45),0), -- TORSO TILT ~ NONE REQUIRED
nc.C0  * CFrame.new(0,0,-.2) *  CFrame.Angles(math.rad(-30),math.rad(-20),0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(-.2,0,-.3) * CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)), -- LEFT LEG 
rl.C0 * CFrame.new(-.05,0,0) * CFrame.Angles(math.rad(00),math.rad(20),math.rad(0)), -- RIGHT LEG Idle
w3.C0 * CFrame.new(-2.7,1.5,0) * CFrame.Angles(math.rad(0),0,math.rad(170)), -- LEFT ARM Idle
w4.C0 * CFrame.new(2.7,1.5,0) * CFrame.Angles(math.rad(0),0,math.rad(-160)), -- RIGHT ARM Idle	
}
local block  = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,0,0), -- TORSO TILT ~ NONE REQUIRED
nc.C0  * CFrame.new(0,0,0) *  CFrame.Angles(math.rad(-9),math.rad(-0),0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,0,0), -- LEFT LEG idle
rl.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,0,0), -- RIGHT LEG Idle
w3.C0 * CFrame.new(-.8,1.3,-.6) * CFrame.Angles(math.rad(-160),math.rad(0),math.rad(0)), -- LEFT ARM Idle
w4.C0 * CFrame.new(.8,1.3,-.6) * CFrame.Angles(math.rad(-160),math.rad(0),math.rad(0)), -- RIGHT ARM Idle	
}
local sjump = {
ts.C0 * CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-10),0,0), -- TORSO TILT ~ NONE REQUIRED
nc.C0  * CFrame.new(0,0,0) *  CFrame.Angles(math.rad(-15),math.rad(-0),0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(0,.4,.8) * CFrame.Angles(math.rad(-70),0,0), -- LEFT LEG idle
rl.C0 * CFrame.new(0,.8,-.5) * CFrame.Angles(math.rad(-10),0,0), -- RIGHT LEG Idle
w3.C0 * CFrame.new(0,.5,.5) * CFrame.Angles(math.rad(-50),math.rad(0),math.rad(0)), -- LEFT ARM Idle
w4.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(40),math.rad(0),math.rad(0)), -- RIGHT ARM Idle	
}
local UpSideDownPunch = {
ts.C0 * CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(180),0,0), -- TORSO TILT ~ NONE REQUIRED
nc.C0  * CFrame.new(0,0,0) *  CFrame.Angles(0,0,0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(-.4,0,0) * CFrame.Angles(0,0,math.rad(-20)), -- LEFT LEG idle
rl.C0 * CFrame.new(.4,0,0) * CFrame.Angles(0,0,math.rad(20)), -- RIGHT LEG Idle
w3.C0 * CFrame.new(0,1.7,0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)), -- LEFT ARM Idle
w4.C0 * CFrame.new(0,1.7,0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)), -- RIGHT ARM Idle	
}
local BackBreaker = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(10),math.rad(15),0), -- TORSO TILT	
nc.C0  * CFrame.Angles(math.rad(-15),math.rad(-5),0), -- HEAD BOB PUNCH 	
w4.C0 * CFrame.new(0,.1,.3) * CFrame.Angles(math.rad(-90),math.rad(-00),math.rad(0)), -- LEFT ARM PUNCH 3
w3.C0 * CFrame.new(0,.5,.5) * CFrame.Angles(math.rad(-90),math.rad(20),math.rad(0)), -- LEFT ARM PUNCH 3
ll.C0 * CFrame.new(-.3,0,.3) * CFrame.Angles(math.rad(-20),math.rad(30),math.rad(-10)), -- LEFT LEG 
rl.C0 * CFrame.new(-.2,1,-.5) * CFrame.Angles(math.rad(-40),0,math.rad(0)), -- RIGHT LEG Idle
}
local FrontFlipKick1 = {
	ts.C0 * CFrame.new(0,2,0) * CFrame.Angles(math.rad(-8),math.rad(0),0), -- TORSO TILT	
nc.C0  * CFrame.Angles(math.rad(-15),math.rad(-5),0), -- HEAD BOB PUNCH 	
w4.C0 * CFrame.new(0,1,-.3) * CFrame.Angles(math.rad(140),math.rad(0),math.rad(0)), -- LEFT ARM PUNCH 3
w3.C0 * CFrame.new(0,1,-.3) * CFrame.Angles(math.rad(140),math.rad(0),math.rad(0)), -- LEFT ARM PUNCH 3
ll.C0 * CFrame.new(0,1,1) * CFrame.Angles(math.rad(-110),0,math.rad(0)), -- RIGHT LEG Idle
rl.C0 * CFrame.new(0,1,-1) * CFrame.Angles(math.rad(110),0,math.rad(0)), -- RIGHT LEG Idle
}
--[[for i = 0,1,wait() do
wait()
ts.C0 = ts.C0:lerp(FrontFlipKick1[1],.4)
nc.C0 = nc.C0:lerp(FrontFlipKick1[2],.4)
ll.C0 = ll.C0:lerp(FrontFlipKick1[5],.4)
rl.C0 = rl.C0:lerp(FrontFlipKick1[6],.4)
w3.C0 = w3.C0:lerp(FrontFlipKick1[4],.4)
w4.C0 = w4.C0:lerp(FrontFlipKick1[3],.4)
end--]]

--[[
--END
ts.C0 = ts.C0:lerp(UpSideDownPunch[1],.4)
nc.C0 = nc.C0:lerp(UpSideDownPunch[2],.4)
ll.C0 = ll.C0:lerp(UpSideDownPunch[3],.4)
rl.C0 = rl.C0:lerp(UpSideDownPunch[4],.4)
w3.C0 = w3.C0:lerp(UpSideDownPunch[5],.4)
w4.C0 = w4.C0:lerp(UpSideDownPunch[6],.4)
--START
ts.C0 = ts.C0:lerp(sjump[1],.4)
nc.C0 = nc.C0:lerp(sjump[2],.4)
ll.C0 = ll.C0:lerp(sjump[3],.4)
rl.C0 = rl.C0:lerp(sjump[4],.4)
w3.C0 = w3.C0:lerp(sjump[5],.4)
w4.C0 = w4.C0:lerp(sjump[6],.4)
--]]
-- CFrame.new(-.05,0,0) * CFrame.new(math.rad(0),math.rad(0),math.rad(00)), -- LEFT LEG 
------------------------------------CLASS UI  ------------------------------------



f = Instance.new("ScreenGui",player.Backpack)
f.Name = "UI"

f1 = Instance.new("Frame",f)
f1.BorderSizePixel = 0
f1.BackgroundColor3 = Color3.new(0,0,0)
f1.Size = UDim2.new(0.3,0,0.05,0)
f1.Position = UDim2.new(0.2,0,0.84,0)

f1f = Instance.new("Frame",f1)
f1f.BorderSizePixel = 0
f1f.BackgroundColor3 = Color3.new(255,255,255)
f1f.Size = UDim2.new(1,0,1,0)

f1l = Instance.new("TextLabel",f1)
f1l.TextScaled = true
f1l.TextStrokeTransparency = 0
f1l.BackgroundTransparency  = 1
f1l.TextColor3 = Color3.new(255,255,255)
f1l.BorderSizePixel = 0
f1l.Size = UDim2.new(1,0,1,0)
f1l.Text = "[Z] Zenatic Punch"


f2 = Instance.new("Frame",f)
f2.BorderSizePixel = 0
f2.BackgroundColor3 = Color3.new(0,0,0)
f2.Size = UDim2.new(0.3,0,0.05,0)
f2.Position = UDim2.new(0.52, 0,0.84, 0)

f2f = Instance.new("Frame",f2)
f2f.BorderSizePixel = 0
f2f.BackgroundColor3 = Color3.new(255,255,255)
f2f.Size = UDim2.new(1,0,1,0)

f2l = Instance.new("TextLabel",f2)
f2l.TextScaled = true
f2l.TextStrokeTransparency = 0
f2l.BackgroundTransparency  = 1
f2l.TextColor3 = Color3.new(255,255,255)
f2l.BorderSizePixel = 0
f2l.Size = UDim2.new(1,0,1,0)
f2l.Text = "[X] Zenatic Stomp"


f3 = Instance.new("Frame",f)
f3.BorderSizePixel = 0
f3.BackgroundColor3 = Color3.new(0,0,0)
f3.Size = UDim2.new(0.3,0,0.05,0)
f3.Position = UDim2.new(0.2,0,0.9,0)

f3f = Instance.new("Frame",f3)
f3f.BorderSizePixel = 0
f3f.BackgroundColor3 = Color3.new(255,255,255)
f3f.Size = UDim2.new(1,0,1,0)

f3l = Instance.new("TextLabel",f3)
f3l.TextScaled = true
f3l.TextStrokeTransparency = 0
f3l.BackgroundTransparency  = 1
f3l.TextColor3 = Color3.new(255,255,255)
f3l.BorderSizePixel = 0
f3l.Size = UDim2.new(1,0,1,0)
f3l.Text = "[C] Zenatic Kick"


f4 = Instance.new("Frame",f)
f4.BorderSizePixel = 0
f4.BackgroundColor3 = Color3.new(0,0,0)
f4.Size = UDim2.new(0.3,0,0.05,0)
f4.Position = UDim2.new(.52,0,.9,0)

f4f = Instance.new("Frame",f4)
f4f.BorderSizePixel = 0
f4f.BackgroundColor3 = Color3.new(255,255,255)
f4f.Size = UDim2.new(1,0,1,0)

f4l = Instance.new("TextLabel",f4)
f4l.TextScaled = true
f4l.TextStrokeTransparency = 0
f4l.BackgroundTransparency  = 1
f4l.TextColor3 = Color3.new(255,255,255)
f4l.BorderSizePixel = 0
f4l.Size = UDim2.new(1,0,1,0)
f4l.Text = "[V] Zenatic Flip Kick "


---HEALTH BAR

f5 = Instance.new("Frame",f)
f5.BorderSizePixel = 0
f5.BackgroundColor3 = Color3.new(255,255,255)
f5.Size = UDim2.new(0.3,0,0.03,0)
f5.Position = UDim2.new(.52,0,.8,0)

f5f = Instance.new("Frame",f5)
f5f.BorderSizePixel = 0
f5f.BackgroundColor3 = Color3.new(0,255,0)
f5f.Size = UDim2.new(1,0,1,0)

f5l = Instance.new("TextLabel",f5)
f5l.TextScaled = true
f5l.TextStrokeTransparency = 0
f5l.BackgroundTransparency  = 1
f5l.TextColor3 = Color3.new(255,255,255)
f5l.BorderSizePixel = 0
f5l.Size = UDim2.new(1,0,1,0)
f5l.Text = "Health"


---ENERGY BAR

f6 = Instance.new("Frame",f)
f6.BorderSizePixel = 0
f6.BackgroundColor3 = Color3.new(255,255,255)
f6.Size = UDim2.new(0.3,0,0.03,0)
f6.Position = UDim2.new(.2,0,.8,0)

f6f = Instance.new("Frame",f6)
f6f.BorderSizePixel = 0
f6f.BackgroundColor3 = BrickColor.new("Institutional White").Color
f6f.Size = UDim2.new(1,0,1,0)

f6l = Instance.new("TextLabel",f6)
f6l.TextScaled = true
f6l.TextStrokeTransparency = 0
f6l.BackgroundTransparency  = 1
f6l.TextColor3 = Color3.new(215,197,154)
f6l.BorderSizePixel = 0
f6l.Size = UDim2.new(1,0,1,0)
f6l.Text = "Zenatic Power"

------------ATK 
fa = Instance.new("TextLabel",f)
fa.TextScaled = true
fa.TextStrokeTransparency = 0
fa.BackgroundTransparency  = .5
fa.BackgroundColor3 = Color3.new(0,0,0)
fa.TextColor3 = Color3.new(255,0,0)
fa.BorderSizePixel = 0
fa.Size = UDim2.new(.2,0,0.05,0)
fa.Position = UDim2.new(0.2,0,0.74,0)
fa.Text = "Personality: Brave"
------------SPD 
fa2 = Instance.new("TextLabel",f)
fa2.TextScaled = true
fa2.TextStrokeTransparency = 0
fa2.BackgroundTransparency  = .5
fa2.BackgroundColor3 = Color3.new(0,0,0)
fa2.TextColor3 = Color3.new(0,255,0)
fa2.BorderSizePixel = 0
fa2.Size = UDim2.new(.2,0,0.05,0)
fa2.Position = UDim2.new(0.41,0,0.74,0)
fa2.Text = "Agility : 1"
------------DEF 
fa3 = Instance.new("TextLabel",f)
fa3.TextScaled = true
fa3.TextStrokeTransparency = 0
fa3.BackgroundTransparency  = .5
fa3.BackgroundColor3 = Color3.new(0,0,0)
fa3.TextColor3 = Color3.new(0,0,255)
fa3.BorderSizePixel = 0
fa3.Size = UDim2.new(.2,0,0.05,0)
fa3.Position = UDim2.new(0.62,0,0.74,0)
fa3.Text = "Zenatic : 1"
-------------------CLASS VARS--------------------------
S1 = true
S1T = 0
S1TF = 0
S2 = true
S2T = 0
S2TF = 0
S3 = true
S3T = 0
S3TF = 0
S4 = true
S4T = 0
S4TF = 0
energy = 0
------------------------------------EXTRA WELDS AREA ------------------------------------





----EQUIP FUNCTION
local Close1 = CFrame.new(1.5,0,0)
local Close2 = CFrame.new(-1.5,0,0)
local Speed = 0.3
local Open4 = w4.C0 * CFrame.new(0,.5,0) * CFrame.Angles(0,0,math.rad(-30))
local h1 = nc.C0  * CFrame.Angles(math.rad(20),math.rad(-30),0)
local h2 = CFrame.new(0,1.5,0)
local h3 = nc.C0  * CFrame.Angles(math.rad(-20),math.rad(30),0)
--leg anims
local opend = false
local current = true




sweld = Instance.new("Weld",char)
sweld.Part0 = char["Right Arm"]
sweld.Part1 = p17
sweld.C0 = CFrame.new(0,-1,0) * CFrame.Angles(math.rad(0),math.rad(50),math.rad(-120))

local STARG = CFrame.new(0,-1,0) * CFrame.Angles(math.rad(0),math.rad(50),math.rad(-120))
---------------------------------------------------------------------------------------
----DAMAGE UI N DMG
local DGU = function(p,txt)
s2:Play()
local par = Instance.new("Part",game.Workspace)
par.Transparency = 1
par.Anchored = true
par.CFrame = p.CFrame
par.CanCollide = false
game.Debris:AddItem(par,10)
local f = Instance.new("BillboardGui",par)
f.Size = UDim2.new(1.2,0,1.2,0)
f.AlwaysOnTop = true
f.StudsOffset = Vector3.new(0,2,0)
local fr = Instance.new("Frame",f)
fr.BackgroundTransparency = 1
fr.Size = UDim2.new(1,0,1,0)
fr.ClipsDescendants = true
local fe = Instance.new("TextLabel",fr)
fe.Size = UDim2.new(1,0,1,0)
fe.BackgroundTransparency = 1
fe.TextColor3 = BrickColor.new("Bright yellow").Color
fe.TextStrokeTransparency = 0
fe.Text = txt
fe.TextScaled = true
fe.Font = "Legacy"
fe.Position = UDim2.new(0,0,1,0)
fe:TweenPosition(UDim2.new(0,0,0,0),"In","Linear",.5)
wait(2)
fe:TweenPosition(UDim2.new(0,0,-1,0),"In","Linear",.4)
for i = 0,10 do
wait()
fe.TextTransparency = fe.TextTransparency + .1
end
end



makeui = function(color,txt)
	local par = Instance.new("Part",game.Workspace)
par.Transparency = 1
par.Anchored = true
par.CFrame = char.Head.CFrame
par.CanCollide = false
game.Debris:AddItem(par,10)
local f = Instance.new("BillboardGui",par)
f.Size = UDim2.new(1.2,0,1.2,0)
f.AlwaysOnTop = true
f.StudsOffset = Vector3.new(0,4,0)
local fr = Instance.new("Frame",f)
fr.BackgroundTransparency = 1
fr.Size = UDim2.new(2,0,2,0)
fr.ClipsDescendants = true
local fe = Instance.new("TextLabel",fr)
fe.Size = UDim2.new(1,0,1,0)
fe.BackgroundTransparency = 1
fe.TextColor3 = Color3.new(255,255,255)
fe.TextStrokeTransparency = 0
fe.Text = txt
fe.TextScaled = true
fe.Font = "SourceSansBold"
game.Debris:AddItem(f,4)
fe.Position = UDim2.new(0,0,1,0)
fe:TweenPosition(UDim2.new(0,0,0,0),"In","Linear",.5)
wait(2)
fe:TweenPosition(UDim2.new(0,0,-1,0),"In","Linear",.4)
for i = 0,10 do
wait()
fe.TextTransparency = fe.TextTransparency + .1
end
end
----TARG
local TARG1
local TARG2
local TARG3
local TARG4
local TARG5
local TARG6
local IdleAndWalk = false


	turnonwelds()
opend = true

--------------SKILL/KEY EVENTS
--------------MOUSE EVENTS , ATTACKS
local wpb = true
local num = 1



mouse.Button1Down:connect(function()
if current == true and stun.Value == false and opend == true and wpb == true then
	local fs 
	
if num == 1 then
wpb = false
current = false
fr = true
p8.Touched:connect(function(hit)
    if not fr then return end
if hit.Parent:FindFirstChild("Defense")then
 fs = math.floor(math.random(4,9) * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
else
 fs = math.floor(math.random(4,9) * atk.Value)
end

if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait()  wait() hit.Parent.BlockingLeft.Value = 5 wait()  wait() hit.Parent.PauseBlock.Value = false
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
--
end
end)
TARG1 = PA1[5]
TARG2 = PA1[6]
TARG3 = PA1[4]
TARG4 = PA1[3]
TARG5 = PA1[2]
TARG6 = PA1[1]
STARG = CFrame.new(0,-.9,0)* CFrame.Angles(math.rad(130),0,0)
wait(.05)
TARG1 = PA1[5]
TARG2 = PA1[6]
TARG3 = PA1[4]
TARG4 = PA1[3]
TARG5 = PA1[2]
TARG6 = PA1[1]
STARG = CFrame.new(0,-.9,0)* CFrame.Angles(math.rad(130),0,0)
wait(.05)
TARG1 = PA1[5]
TARG2 = PA1[6]
TARG3 = PA1[4]
TARG4 = PA1[3]
TARG5 = PA1[2]
TARG6 = PA1[1]
STARG = CFrame.new(0,-.9,0)* CFrame.Angles(math.rad(130),0,0)
wait(.05)
s5:Play()
wait(.05)
TARG1 = PA12[5]
TARG2 = PA12[6]
TARG3 = PA12[4]
TARG4 = PA12[3]
TARG5 = PA12[2]
TARG6 = PA12[1]
--STARG = CFrame.new(0,-.9,0) * CFrame.Angles(math.rad(130),0,0)
wait(.05)
TARG1 = PA12[5]
TARG2 = PA12[6]
TARG3 = PA12[4]
TARG4 = PA12[3]
TARG5 = PA12[2]
TARG6 = PA12[1]
--STARG = CFrame.new(0,-.9,0)* CFrame.Angles(math.rad(130),0,0)
wait(.05)
TARG1 = PA12[5]
TARG2 = PA12[6]
TARG3 = PA12[4]
TARG4 = PA12[3]
TARG5 = PA12[2]
TARG6 = PA12[1]
--STARG = CFrame.new(0,-.9,0)* CFrame.Angles(math.rad(130),0,0)
wait(.05)
TARG1 = PA12[5]
TARG2 = PA12[6]
TARG3 = PA12[4]
TARG4 = PA12[3]
TARG5 = PA12[2]
TARG6 = PA12[1]
--STARG = CFrame.new(0,-.9,0)* CFrame.Angles(math.rad(130),0,0)
wait(.2)
current = true
fr = false
wait(.1)
wpb = true
num=num+1
return
end
if num == 2 then
wpb = false
current = false
fr = true
p8.Touched:connect(function(hit)
    if not fr then return end
if hit.Parent:FindFirstChild("Defense")then
 fs = math.floor(math.random(5,11) * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
else
 fs = math.floor(math.random(5,11) * atk.Value)
end

if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait()  wait() hit.Parent.BlockingLeft.Value = 5 wait()  wait() hit.Parent.PauseBlock.Value = false
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
--
end
end)
s4:Play()
wait(.1)
TARG1 = PA2[6]
TARG2 = PA2[5]
TARG3 = PA2[4]
TARG4 = PA2[3]
TARG5 = PA2[2]
TARG6 = PA2[1]
STARG = CFrame.new(0,-1,0) * CFrame.Angles(math.rad(180),0,0)
wait(.1)
TARG1 = PA2[6]
TARG2 = PA2[5]
TARG3 = PA2[4]
TARG4 = PA2[3]
TARG5 = PA2[2]
TARG6 = PA2[1]
STARG = CFrame.new(0,-1,0)* CFrame.Angles(math.rad(180),0,0)
wait(.1)
TARG1 = PA2[6]
TARG2 = PA2[5]
TARG3 = PA2[4]
TARG4 = PA2[3]
TARG5 = PA2[2]
TARG6 = PA2[1]
STARG = CFrame.new(0,-1,0)* CFrame.Angles(math.rad(180),0,0)
wait(.1)
TARG1 = PA2[6]
TARG2 = PA2[5]
TARG3 = PA2[4]
TARG4 = PA2[3]
TARG5 = PA2[2]
TARG6 = PA2[1]
STARG = CFrame.new(0,-1,0)* CFrame.Angles(math.rad(180),0,0)
wait(.2)
current = true
fr = false
wait(.1)
wpb = true
num=num+1
return
end
if num == 3 then
wpb = false
current = false
fr = true
char["Right Leg"].Touched:connect(function(hit)
    if not fr then return end
if hit.Parent:FindFirstChild("Defense")then
 fs = math.floor(math.random(5,11) * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
else
 fs = math.floor(math.random(5,11) * atk.Value)
end

if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait()  wait() hit.Parent.BlockingLeft.Value = 5 wait()  wait() hit.Parent.PauseBlock.Value = false
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
--
end
end)
s1.Pitch = 1
s1:Play()
wait(.1)
TARG1 = PA3[4]
TARG2 = PA3[3]
TARG3 = PA3[2]
TARG4 = PA3[6]
TARG5 = PA3[5]
TARG6 = PA3[1]
TARG1 = PA3[4]
TARG2 = PA3[3]
TARG3 = PA3[2]
TARG4 = PA3[6]
TARG5 = PA3[5]
TARG6 = PA3[1]
wait(.1)
TARG1 = PA3[4]
TARG2 = PA3[3]
TARG3 = PA3[2]
TARG4 = PA3[6]
TARG5 = PA3[5]
TARG6 = PA3[1]
wait(.1)
TARG1 = PA3[4]
TARG2 = PA3[3]
TARG3 = PA3[2]
TARG4 = PA3[6]
TARG5 = PA3[5]
TARG6 = PA3[1]
wait(.2)
current = true
fr = false
wait(.1)
wpb = true
num=1
return
end

end
end)
mouse.KeyDown:connect(function(key)key = key:lower()
if key == "z" then
if current == true and opend == true and stun.Value == false and energy > 19 and S1 == true  then
energy = energy - 20
S1T = 0
current = false
local num = 0
repeat
fr = true
local fs 
s1.Pitch = 1.2
s1:Play()
char["Right Arm"].Touched:connect(function(hit)
    if not fr then return end
if hit.Parent.Name == player.Name then return end
if hit.Parent:FindFirstChild("Defense") and hit.Parent.Name ~= player.Name then


hit.Parent:FindFirstChild("Defense").Value = hit.Parent:FindFirstChild("Defense").Value -.02
 fs = math.floor(4 * atk.Value / hit.Parent:FindFirstChild("Defense").Value)


else
 fs = math.floor(4 * atk.Value)
end
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
--
end
end)
TARG1 = PA1[5]
TARG2 = PA1[6]
TARG3 = PA1[4]
TARG4 = PA1[3]
TARG5 = PA1[2]
TARG6 = PA1[1]
wait(.11)
fr = false
wait(.11)
fr = true
local fs 
s1.Pitch = 1.2
s1:Play()
char["Left Arm"].Touched:connect(function(hit)
    if not fr then return end
if hit.Parent.Name == player.Name then return end
if hit.Parent:FindFirstChild("Defense")and hit.Parent.Name ~= player.Name then
hit.Parent:FindFirstChild("Defense").Value = hit.Parent:FindFirstChild("Defense").Value -.02
 fs = math.floor(4 * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
else
 fs = math.floor(4 * atk.Value)
end
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
--
end
end)
TARG1 = PA1C[5]
TARG2 = PA1C[6]
TARG3 = PA1C[4]
TARG4 = PA1C[3]
TARG5 = PA1C[2]
TARG6 = PA1C[1]
wait(.11)
fr = false
wait(.11)
num = num + 2
until num == 10
current = true 
wait(3) 
end
end
end)
--- KEYDOWN 2
mouse.KeyDown:connect(function(key)key = key:lower()
if key == "x" then
if current == true and opend == true and stun.Value == false and energy > 24  and S2 == true then
energy = energy - 25
S2T = 0
skl = true
char.Humanoid.WalkSpeed = 0
f = Instance.new("Part",game.Workspace)
f.Position = char.Torso.Position + Vector3.new(0, -2, -12)
f.CanCollide = false
f.Transparency = 1
local asdf
local cf
f.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
else
cf = f.CFrame
asdf = hit.BrickColor	
end
end)
current = false
TARG1 = Stomp[5]
TARG2 = Stomp[6]
TARG3 = Stomp[2]
TARG4 = Stomp[4]
TARG5 = Stomp[3]
TARG6 = Stomp[1]
wait(.05)
TARG1 = Stomp[5]
TARG2 = Stomp[6]
TARG3 = Stomp[2]
TARG4 = Stomp[4]
TARG5 = Stomp[3]
TARG6 = Stomp[1]
wait(.05)
TARG1 = Stomp[5]
TARG2 = Stomp[6]
TARG3 = Stomp[2]
TARG4 = Stomp[4]
TARG5 = Stomp[3]
TARG6 = Stomp[1]
wait(.05)
TARG1 = Stomp[5]
TARG2 = Stomp[6]
TARG3 = Stomp[2]
TARG4 = Stomp[4]
TARG5 = Stomp[3]
TARG6 = Stomp[1]
wait(.05)
TARG1 = Stomp[5]
TARG2 = Stomp[6]
TARG3 = Stomp[2]
TARG4 = Stomp[4]
TARG5 = Stomp[3]
TARG6 = Stomp[1]
wait(.05)
TARG1 = Stomp2[5]
TARG2 = Stomp2[6]
TARG3 = Stomp2[2]
TARG4 = Stomp2[4]
TARG5 = Stomp2[3]
TARG6 = Stomp2[1]
wait(.05)
TARG1 = Stomp2[5]
TARG2 = Stomp2[6]
TARG3 = Stomp2[2]
TARG4 = Stomp2[4]
TARG5 = Stomp2[3]
TARG6 = Stomp2[1]
wait(.05)
TARG1 = Stomp2[5]
TARG2 = Stomp2[6]
TARG3 = Stomp2[2]
TARG4 = Stomp2[4]
TARG5 = Stomp2[3]
TARG6 = Stomp2[1]
wait(.05)
TARG1 = Stomp2[5]
TARG2 = Stomp2[6]
TARG3 = Stomp2[2]
TARG4 = Stomp2[4]
TARG5 = Stomp2[3]
TARG6 = Stomp2[1]
wait(.05)
local fs = Instance.new("Part",char)
fs.BrickColor = asdf
fs.Size = Vector3.new(1,1,1)
fs.CanCollide = false
fs.Anchored = true
fs.Transparency = 1
fs.CFrame = char.Torso.CFrame * CFrame.new(0,-2.5,0)
local fr = Instance.new("Part",char)
fr.BrickColor = asdf
fr.Size = Vector3.new(1,1,1)
fr.CanCollide = false
fr.Anchored = true
fr.CFrame = char.Torso.CFrame * CFrame.new(0,-2.5,0) * CFrame.Angles(math.rad(90),0,0)
local fms = Instance.new("SpecialMesh",fr)
fms.MeshId = "http://www.roblox.com/asset/?id=3270017"
fms.Scale = Vector3.new(1,1,6)
TARG7 = Vector3.new(40,40,10)
obj = fms
obj2 = fs
TARG8 = Vector3.new(50,5,50)
local dmg = true
fs.Touched:connect(function(hit)
if dmg == true and hit.Parent:FindFirstChild("Humanoid") then
if hit.Parent:FindFirstChild("Humanoid").Health ~= 0  and hit.Parent.Name ~= player.Name then
if hit.Parent:FindFirstChild("Speed")then
hit.Parent:FindFirstChild("Speed").Value = hit.Parent:FindFirstChild("Speed").Value -.1
hit.Parent:FindFirstChild("Speed").Value = hit.Parent:FindFirstChild("Speed").Value -.1
--- I made it do that so this would stick for 12 Seconds ~ Thats how the stats work
local fx = math.floor(22 * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
dmg = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
local fx = math.floor(22 * atk.Value)
dmg = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
end
end
end
end)--]]
wait(.3)
game.Debris:AddItem(fr,8)
game.Debris:AddItem(fs,8)
skl = false
current = true 
for i = 1,10 do
wait()
fr.Transparency = fr.Transparency + .1
end
wait(.4)
dmg = false
wait(3) 
end
end
end)



mouse.KeyDown:connect(function(key)key = key:lower()
if key == "c" then
if current == true and opend == true and stun.Value == false and energy > 34  and S3 == true then
energy = energy - 35
S3T = 0
current = false
TARG1 = dropkick[5]
TARG2 = dropkick[6]
TARG3 = dropkick[2]
TARG4 = dropkick[4]
TARG5 = dropkick[3]
TARG6 = dropkick[1]
wait(.05)
TARG1 = dropkick[5]
TARG2 = dropkick[6]
TARG3 = dropkick[2]
TARG4 = dropkick[4]
TARG5 = dropkick[3]
TARG6 = dropkick[1]
wait(.05)
TARG1 = dropkick[5]
TARG2 = dropkick[6]
TARG3 = dropkick[2]
TARG4 = dropkick[4]
TARG5 = dropkick[3]
TARG6 = dropkick[1]
wait(.05)
TARG1 = dropkick[5]
TARG2 = dropkick[6]
TARG3 = dropkick[2]
TARG4 = dropkick[4]
TARG5 = dropkick[3]
TARG6 = dropkick[1]
wait(.05)
local dmg = true
char["Right Leg"].Touched:connect(function(hit)
if dmg == true and hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= player.Name then
local fn = Instance.new("Part",char)
fn.BrickColor = BrickColor.new("Medium stone grey")
fn.Size = Vector3.new(1,1,1)
fn.CanCollide = false
fn.Anchored = true
s2.Pitch = .9
s2:Play()
game.Debris:AddItem(fn,8)
fn.CFrame = char.Torso.CFrame * CFrame.new(0,-2.5,0) 
local fms = Instance.new("SpecialMesh",fn)
fms.MeshId = "http://www.roblox.com/asset/?id=20329976"
fms.Scale = Vector3.new(1,1,6)
TARG7 = Vector3.new(10,5,10)
obj = fms
if hit.Parent:FindFirstChild("Humanoid").Health ~= 0  and hit.Parent.Name ~= player.Name then
if hit.Parent:FindFirstChild("Stunned")then
	hit.Parent:FindFirstChild("Stunned").Value = true
--- I made it do that so this would stick for 12 Seconds ~ Thats how the stats work
local fx = math.floor(13 * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
dmg = false
--[[
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
--
end
--]]
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
local fx = math.floor(13 * atk.Value)
dmg = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
end
end

for i = 1,10 do
wait()
fn.Transparency = fn.Transparency + .1
end
end
end)--]]
wait(.1)
skl = false
current = true 
wait(.2)
dmg = false
wait(3) 
end
end
end)




mouse.KeyDown:connect(function(key)key = key:lower()
if key == "v" then
if current == true and opend == true and stun.Value == false and energy > 49 and S4 == true then
current = false
wait(0.05)
S4T = 0
energy = energy - 59
wait()
TARG1 = FrontFlipKick1[4] -- LEFT ARM
TARG2 = FrontFlipKick1[3]-- RIGHT ARM
TARG3 = FrontFlipKick1[2] -- NECK
TARG4 = FrontFlipKick1[6] -- RIGHT LEG
TARG5 = FrontFlipKick1[5] -- LEFT LEG
TARG6 = FrontFlipKick1[1] -- TORSO
wait(0.05)
TARG1 = FrontFlipKick1[4] -- LEFT ARM
TARG2 = FrontFlipKick1[3]-- RIGHT ARM
TARG3 = FrontFlipKick1[2] -- NECK
TARG4 = FrontFlipKick1[6] -- RIGHT LEG
TARG5 = FrontFlipKick1[5] -- LEFT LEG
TARG6 = FrontFlipKick1[1] -- TORSO
wait(0.05)
TARG1 = FrontFlipKick1[4] -- LEFT ARM
TARG2 = FrontFlipKick1[3]-- RIGHT ARM
TARG3 = FrontFlipKick1[2] -- NECK
TARG4 = FrontFlipKick1[6] -- RIGHT LEG
TARG5 = FrontFlipKick1[5] -- LEFT LEG
TARG6 = FrontFlipKick1[1] -- TORSO
wait(0.05)
TARG1 = FrontFlipKick1[4] -- LEFT ARM
TARG2 = FrontFlipKick1[3]-- RIGHT ARM
TARG3 = FrontFlipKick1[2] -- NECK
TARG4 = FrontFlipKick1[6] -- RIGHT LEG
TARG5 = FrontFlipKick1[5] -- LEFT LEG
TARG6 = FrontFlipKick1[1] -- TORSO
wait(0.05)
local dmg = true
char["Right Leg"].Touched:connect(function(hit)
if dmg == true and hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= player.Name then
dmg = false
TARG1 = FrontFlipKick1[4] -- LEFT ARM
TARG2 = FrontFlipKick1[3]-- RIGHT ARM
TARG3 = FrontFlipKick1[2] -- NECK
TARG4 = FrontFlipKick1[6] -- RIGHT LEG
TARG5 = FrontFlipKick1[5] -- LEFT LEG
TARG6 = FrontFlipKick1[1] -- TORSO
local fn = Instance.new("Part",char)
fn.BrickColor = BrickColor.new("Medium stone grey")
fn.Size = Vector3.new(1,1,1)
fn.CanCollide = false
fn.Anchored = true
local fn = Instance.new("Part",char)
fn.BrickColor = BrickColor.new("Medium stone grey")
fn.Size = Vector3.new(1,1,1)
fn.CanCollide = false
fn.Anchored = true
s2.Pitch = .9
s2:Play()
game.Debris:AddItem(fn,8)
fn.CFrame = char["Right Leg"].CFrame
local fms = Instance.new("SpecialMesh",fn)
fms.MeshId = "http://www.roblox.com/asset/?id=20329976"
fms.Scale = Vector3.new(1,1,6)
TARG7 = Vector3.new(5,1,5)
obj = fms

if hit.Parent:FindFirstChild("Humanoid").Health ~= 0  and hit.Parent.Name ~= player.Name then
if hit.Parent:FindFirstChild("Stunned")then
	hit.Parent:FindFirstChild("Stunned").Value = true
--- I made it do that so this would stick for 12 Seconds ~ Thats how the stats work
local fx = math.floor(13 * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
dmg = false
--[[
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
--
end
--]]
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
local fx = math.floor(13 * atk.Value)
dmg = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
end
end

for i = 0,10 do
wait()
fn.Transparency = fn.Transparency + .1
end
end
end)
--[[
ts.C0 = ts.C0:lerp(FrontFlipKick1[1],.4)
nc.C0 = nc.C0:lerp(FrontFlipKick1[2],.4)
ll.C0 = ll.C0:lerp(FrontFlipKick1[5],.4)
rl.C0 = rl.C0:lerp(FrontFlipKick1[6],.4)
w3.C0 = w3.C0:lerp(FrontFlipKick1[4],.4)
w4.C0 = w4.C0:lerp(FrontFlipKick1[3],.4)
--]]


wait(.1)
dmg = false
current = true
end
end
end)
--[[
--END
ts.C0 = ts.C0:lerp(UpSideDownPunch[1],.4)
nc.C0 = nc.C0:lerp(UpSideDownPunch[2],.4)
ll.C0 = ll.C0:lerp(UpSideDownPunch[3],.4)
rl.C0 = rl.C0:lerp(UpSideDownPunch[4],.4)
w3.C0 = w3.C0:lerp(UpSideDownPunch[5],.4)
w4.C0 = w4.C0:lerp(UpSideDownPunch[6],.4)
--START
ts.C0 = ts.C0:lerp(sjump[1],.4)
nc.C0 = nc.C0:lerp(sjump[2],.4)
ll.C0 = ll.C0:lerp(sjump[3],.4)
rl.C0 = rl.C0:lerp(sjump[4],.4)
w3.C0 = w3.C0:lerp(sjump[5],.4)
w4.C0 = w4.C0:lerp(sjump[6],.4)
--OTHER
TARG1 = walk[8] -- LEFT ARM
TARG2 = walk[7]-- RIGHT ARM
TARG3 = walk[6] -- NECK
TARG4 = walk[] -- RIGHT LEG
TARG5 = walk[] -- LEFT LEG
TARG6 = walk[5] -- TORSO
--]]
local Speed = .4
local lspeed = .2
game:GetService("RunService").RenderStepped:connect(function()
if Vector3.new(char.Torso.Velocity.X,0,char.Torso.Velocity.Z).magnitude > 2 then 
IdleAndWalk = true
else
IdleAndWalk = false
end
if TARG4 ~= nil then
rl.C0 = rl.C0:lerp(TARG4,lspeed)
end
if TARG5 ~= nil then
ll.C0 = ll.C0:lerp(TARG5,lspeed)
end
if TARG3 ~= nil then
nc.C0 = nc.C0:lerp(TARG3,lspeed)
end
if STARG ~= nil then
sweld.C0 = sweld.C0:lerp(STARG,Speed)
end
if TARG1 ~= nil then
w3.C0 = w3.C0:lerp(TARG1,Speed)
end
if TARG2 ~= nil then
w4.C0 = w4.C0:lerp(TARG2,Speed)
end
if TARG6 ~= nil then
ts.C0 = ts.C0:lerp(TARG6,Speed)
end
if TARG7 ~= nil and obj ~= nil then
obj.Scale = obj.Scale:lerp(TARG7,.05)
end
if TARG8 ~= nil and obj2 ~= nil then
obj2.Size = obj2.Size:lerp(TARG8,.05)
obj2.CFrame = char.Torso.CFrame * CFrame.new(0,-2.5,0)
end
if TARG10 ~= nil and obj3 ~= nil and TARG11 ~= nil then
obj3.Size = obj3.Size:lerp(TARG10,.05)
obj3.CFrame = char.Torso.CFrame * CFrame.new(0,-2.5,0) * TARG11
end
if TARG10 ~= nil and obj3 ~= nil and obj3.Transparency ~= 1 then
obj2.Transparency = obj2.Transparency + .05
obj3.Transparency = obj3.Transparency + .05
wait(.1)
end
if char.Humanoid.Jump == true then
gd.Value = true	
else
gd.Value = false
end
if energy < 100 and current == true then
energy = energy + .05
end
for i=1,#parts do
	local Part = parts[i]
	Part.Size = Part.Size:lerp(Vector3.new(6, 32, 7),.05)
	for x=1,#poses do
	Part.CFrame = poses[i]	
	end
end
if blt.Value < 99 and bl.Value == false and stun.Value == false then
blt.Value = blt.Value + 0.03
end
if bl.Value == true and blt.Value < 5 then
bl.Value = false
current = true
skl = false
end
if bl.Value == true  then
blt.Value = blt.Value - .5
end
if atkt.Value > 0 then
atkt.Value = atkt.Value - .02
else
atk.Value = 1.2
end
if deft.Value > 0 then
deft.Value = deft.Value - .02
else
def.Value = .9
end
if spdt.Value > 0 then
spdt.Value = spdt.Value - .02
else
wait()
if spdt.Value < 1 then
spd.Value = 1.1
end
end

--Skill 1
local DV2 = S1T  / S1TF
local initX6 = f1.Size.X.Scale
f1f:TweenSize( UDim2.new( initX6*DV2* 1.665, 0, 1, 0),"In","Linear",1 )



if S1T <  14  then
S1T = S1T + .02
S1 = false
else
S1 = true
end
if S1T == 14 then
S1 = true
end


--Skill 2
local DV2 = S2T  / S2TF
local initX6 = f2.Size.X.Scale
f2f:TweenSize( UDim2.new( initX6*DV2* 3.566, 0, 1, 0),"In","Linear",1 )



if S2T <  14  then
S2T = S2T + .01
S2 = false
else
S2 = true
end
if S2T == 15 then
S2 = true
end


--Skill 3
local DV2 = S3T  / S3TF
local initX6 = f3.Size.X.Scale
f3f:TweenSize( UDim2.new( initX6*DV2* 2.855, 0, 1, 0),"In","Linear",1 )



if S3T <  14  then
S3T = S3T + .01
S3 = false
else
S3 = true
end
if S3T == 15 then
S3 = true
end

--Skill 4
local DV2 = S4T  / S4TF
local initX6 = f4.Size.X.Scale
f4f:TweenSize( UDim2.new( initX6*DV2*3.45, 0, 1, 0),"In","Linear",1 )


if S4T <  29  then
S4T = S4T + .01
S4 = false
else
S4= true
end
if S4T == 30 then
S4 = true
end

end)
--SEC HANDLER
--[[
S1 = true
S1T = 7
S1TF = 7
S2 = true
S2T = 15
S2TF = 15
S3 = true
S3T = 12
S3TF = 12
S4 = true
S4T = 30
S4TF = 30
energy = 0
--]]




--makeui(Color3.new(0,255,0),"+Speed")
--makeui(Color3.new(255,0,0),"+Damage")
--makeui(Color3.new(0,0,255),"+Defense")
---VALUE CHANGERS 
satk = atk.Value
sdef = def.Value
sspd = spd.Value
atk.Changed:connect(function()
if satk > atk.Value then
atkt.Value = atkt.Value + 4
makeui(Color3.new(255,0,0),"-Damage")
satk = atk.Value
else
atkt.Value = atkt.Value + 4
makeui(Color3.new(255,0,0),"+Damage")
satk = atk.Value
end	
end)
def.Changed:connect(function()
if sdef > def.Value then
deft.Value = deft.Value + 4
makeui(Color3.new(0,0,255),"-Defense")
sdef = def.Value
else
deft.Value = deft.Value + 4
makeui(Color3.new(0,0,255),"+Defense")
sdef = def.Value
end	
end)
spd.Changed:connect(function()
if sspd > spd.Value then
spdt.Value = spdt.Value + 4
makeui(Color3.new(0,255,0),"-Speed")
sspd = spd.Value
else
spdt.Value = spdt.Value + 4
makeui(Color3.new(0,255,0),"+Speed")
sspd = spd.Value
end	
end)
bll.Changed:connect(function()
	if bll.Value == true then
	
		local c = Instance.new("Part",game.Workspace)
c.Anchored = true
c.CanCollide = false
c.BrickColor = BrickColor.new("Medium stone grey")
c.Shape = "Ball"
c.Size = Vector3.new(1,1,1)
c.CFrame = char.Torso.CFrame
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Transparency = .1
		local v = Instance.new("Part",game.Workspace)
v.Anchored = true
v.CanCollide = false
v.BrickColor = BrickColor.new("Medium stone grey")
v.Size = Vector3.new(1,1,1)
v.CFrame = char.Torso.CFrame
v.TopSurface = "Smooth"
v.BottomSurface = "Smooth"
v.Transparency = .1
obj2 = c 
TARG8 = Vector3.new(30,30,30) 
obj3 = v 
TARG10 = Vector3.new(15,21,15) 
TARG11 = CFrame.new(0,0,0)
makeui(BrickColor.new("Bright bluish green").Color,"Blocked!")	
bll.Value = false
end
end)
stun.Changed:connect(function()
if stun.Value == true then
makeui(Color3.new(255,255,0),"+Stunned")
wait(4)
if opend == true then
stun.Value = false
end
end
if stun.Value == false then
makeui(Color3.new(255,255,0),"-Stunned")
end
end)
-------------------
while wait() do
wait()
fa.Text = "Attack : "..atk.Value
fa2.Text = "Speed : "..spd.Value
fa3.Text = "Defense : "..def.Value
----HP
local initX5 = f5.Size.X.Scale
local maxhp = char.Humanoid.MaxHealth
local hp = char.Humanoid.Health
local Pie = (hp / maxhp)
f5f:TweenSize( UDim2.new( initX5*Pie*3.33, 0, 1, 0),"In","Linear",1 )
---Energy
local DV1 = energy / 100
local initX6 = f6.Size.X.Scale
f6f:TweenSize( UDim2.new( initX6*DV1*3.33, 0, 1, 0),"In","Linear",1 )
if opend == true and current == true and idleq == false then
if  stun.Value == true then
TARG1 = stunned[3] -- LEFT ARM
TARG2 = stunned[2]-- RIGHT ARM
TARG3 = stunned[1] -- NECK
TARG4 = stunned[5] -- RIGHT LEG
TARG5 = stunned[4] -- LEFT LEG
TARG6 = stunned[6] -- TORSO TILT
char.Humanoid.WalkSpeed = 0 
end
if stun.Value == false and skl == false then
char.Humanoid.WalkSpeed = 16 * spd.Value
end
if char.Humanoid.Jump == true and stun.Value == false and bl.Value == false then
TARG1 = jump[3] -- LEFT ARM
TARG2 = jump[2]-- RIGHT ARM
TARG3 = jump[1] -- NECK
TARG4 = jump[5] -- RIGHT LEG
TARG5 = jump[4] -- LEFT LEG
TARG6 = CFrame.new(0,0,0)
end
--ts.C0 = ts.C0:lerp(stunned[6],.4)
--nc.C0 = nc.C0:lerp(stunned[1],.4)
--ll.C0 = ll.C0:lerp(stunned[4],.4)
--rl.C0 = rl.C0:lerp(stunned[5],.4)
--w3.C0 = w3.C0:lerp(stunned[3],.4)
--w4.C0 = w4.C0:lerp(stunned[2],.4)
local lilwl = ll.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(30),math.rad(0),math.rad(0))
local lirwl = rl.C0 * CFrame.new(0,0,.5) * CFrame.Angles(math.rad(-30),math.rad(0),math.rad(0))
 
--RIGHT
local lilwr = ll.C0 * CFrame.new(0,0,.5) * CFrame.Angles(math.rad(-30),math.rad(0),math.rad(0))
local lirwr = rl.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(30),math.rad(0),math.rad(0))


--
if bl.Value == false then
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false  then
TARG1 = walk[8] -- LEFT ARM
TARG2 = walk[7]-- RIGHT ARM
TARG3 = walk[6] -- NECK
TARG4 = walk[4] -- RIGHT LEG
TARG5 = walk[3] -- LEFT LEG
TARG6 = walk[5] -- TORSO
STARG = CFrame.new(0,-1,0) * CFrame.Angles(math.rad(0),math.rad(50),math.rad(-120))
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false  then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false  then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false  then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false  then
TARG1 = walk[8] -- LEFT ARM
TARG2 = walk[7]-- RIGHT ARM
TARG3 = walk[6] -- NECK
TARG4 = walk[2] -- RIGHT LEG
TARG5 = walk[1] -- LEFT LEG
TARG6 = walk[5] -- TORSO
STARG = CFrame.new(0,-1,0) * CFrame.Angles(math.rad(0),math.rad(50),math.rad(-120))
end	
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
wait(.05)
end
else
if IdleAndWalk == false and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then	
TARG1 = idle[5]
TARG2 = idle[6]
TARG3 = idle[2]
TARG4 = idle[4]
TARG5 = idle[3]
TARG6 = idle[1]
STARG = CFrame.new(0,-1,0) * CFrame.Angles(math.rad(0),math.rad(50),math.rad(-120))
end
end
end
--
end
end

--[[




	ts.C0 = ts.C0:lerp(idle[1],.4)
nc.C0 = nc.C0:lerp(idle[2],.4)
ll.C0 = ll.C0:lerp(idle[3],.4)
rl.C0 = rl.C0:lerp(idle[4],.4)
w3.C0 = w3.C0:lerp(idle[5],.4)
w4.C0 = w4.C0:lerp(idle[6],.4)
 
TARG1 = idle[5]
TARG2 = idle[6]
TARG3 = idle[2]
TARG4 = idle[5]
TARG5 = idle[3]
TARG6 = idle[2]
if TARG4 ~= nil then
rl.C0 = rl.C0:lerp(TARG4,lspeed)
end
if TARG5 ~= nil then
ll.C0 = ll.C0:lerp(TARG5,lspeed)
end
if TARG3 ~= nil then
nc.C0 = nc.C0:lerp(TARG3,lspeed)
end
if TARG1 ~= nil then
w3.C0 = w3.C0:lerp(TARG1,Speed)
end
if TARG2 ~= nil then
w4.C0 = w4.C0:lerp(TARG2,Speed)
end

ll.C0 = ll.C0:lerp(walk[3],.4)
rl.C0 = rl.C0:lerp(walk[4],.4)
---OTHER ANIMS
ts.C0 = ts.C0:lerp(walk[5],.4)
nc.C0 = nc.C0:lerp(walk[6],.4)
w4.C0 = w4.C0:lerp(walk[7],.4)
w3.C0 = w3.C0:lerp(walk[8],.4)

TARG1 = walk[8] -- LEFT ARM
TARG2 = walk[7]-- RIGHT ARM
TARG3 = walk[6] -- NECK
TARG4 = walk[] -- RIGHT LEG
TARG5 = walk[] -- LEFT LEG
TARG6 = walk[5] -- TORSO

for i = 0,1,wait() do
wait()
ll.C0 = ll.C0:lerp(walk[3],.4)
rl.C0 = rl.C0:lerp(walk[4],.4)
---OTHER ANIMS
ts.C0 = ts.C0:lerp(walk[5],.4)
nc.C0 = nc.C0:lerp(walk[6],.4)
w4.C0 = w4.C0:lerp(walk[7],.4)
w3.C0 = w3.C0:lerp(walk[8],.4)
end--]]
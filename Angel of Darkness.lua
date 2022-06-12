Player = game:GetService("Players").LocalPlayer
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
local HBill = Instance.new("BillboardGui", Head)
local HMain, HBarBack, HBar = Instance.new("Frame", HBill), Instance.new("Frame"), Instance.new("Frame")
local HHealth, HName = Instance.new("TextLabel", HBarBack), Instance.new("TextLabel")
HBill.Size = UDim2.new(15,0,2.2,0)
HBill.Name = "Health Display"
HBill.StudsOffset = Vector3.new(0,4,0)
HBill.AlwaysOnTop = true
HBill.Enabled=true
HMain.BackgroundColor3 = Color3.new(0, 0, 0)
HMain.BackgroundTransparency = 0.6
HMain.Size = UDim2.new(1,0,1,0)
HBarBack.Parent = HMain
HBarBack.BackgroundColor3 = Color3.new(0,0,0)
HBarBack.BorderColor3 = Color3.new(0,0,0)
HBarBack.BorderSizePixel = 2
HBarBack.Position = UDim2.new(.025, 0, .55, 0)
HBarBack.Size = UDim2.new(.95, 0, .3, 0)
HBar.Parent = HBarBack
HBar.BackgroundColor3 = Color3.new(0, 1, 0)
HBar.BorderColor3 = Color3.new(0,0,0)
HBar.Size = UDim2.new(.5,0,1,0)
HHealth.BackgroundTransparency = 1
HHealth.Size = UDim2.new(1,0,1,0)
HHealth.Font = "SourceSans"
HHealth.Text = "[10/10]"
HHealth.TextScaled = true
HHealth.TextColor3 = Color3.new(255, 255, 255)
HHealth.TextStrokeColor3 = Color3.new(85/255, 0, 127/255)
HHealth.TextStrokeTransparency = 0
HName.Parent = HMain
HName.BackgroundTransparency = 1
HName.Size = UDim2.new(1,0,.5,0)
HName.Font = "SourceSansItalic"
HName.Text = "Angel of Darkness, incarnate"
HName.TextScaled = true
HName.TextColor3 = BrickColor.new("Black metallic").Color
HName.TextStrokeColor3 = Color3.new(0,0,0)
HName.TextStrokeTransparency = 0
HName.TextYAlignment = "Top"
local runServ = game:GetService("RunService").RenderStepped
runServ:connect(function()
	HHealth.Text = "["..Humanoid.Health.."]"
	HBar:TweenSize(UDim2.new((Humanoid.Health/Humanoid.MaxHealth),0,1,0), _, "Linear", .4)
end)
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso


FloatPart = function()
	local Part = Instance.new('Part',Torso)
	Part.CFrame = CFrame.new(Torso.CFrame.X,workspace.Base.CFrame.Y+1,Torso.CFrame.Z) * CFrame.fromEulerAnglesXYZ(86.4,0,87)
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
	local Part = Instance.new('Part',Torso)
	Part.CFrame = CFrame.new(Torso.CFrame.X,workspace.Base.CFrame.Y+1,Torso.CFrame.Z) * CFrame.fromEulerAnglesXYZ(86.4,0,87)
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

Particle = function(PrimaryColor)
	local Part = Instance.new('Part',Torso)
	Part.BrickColor = BrickColor.new(PrimaryColor)
	Part.Anchored = true
	Part.Transparency = .3
	Part.CanCollide = false
	Part.CFrame = Torso.CFrame * CFrame.new(math.random(-10,10),math.random(-15,15),math.random(-10,10)) * CFrame.fromEulerAnglesXYZ(math.random(),math.random(),math.random())
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

--[[spawn(function()
	while wait() do
		wait(.05)
		FloatPart()
		wait(.08)
		FloatPart()
		wait(.05)
		DubPart()
		wait(.08)
	end
end)]]

game["Run Service"].RenderStepped:connect(function(_)
	Particle("Royale purple")
	Particle("Really black")
        Particle("Institutional White")
	--Character['HumanoidRootPart'].C1 = Character['HumanoidRootPart'].C1 * CFrame.new(0,Height+math.sin(tick())/150,0)
end)



particle = function(parent, col1, col2, lightemis, size, texture, transparency, zoffset, accel, drag, ltp, velinher, emisdir, enabled, lifetime, rate, rotation, rotspeed, speed, velspread)
  local fp = it("ParticleEmitter")
  fp.Parent = parent
  fp.Color = cs(col1, col2)
  fp.LightEmission = lightemis
  fp.Size = size
  fp.Texture = texture
  fp.Transparency = transparency
  fp.ZOffset = zoffset
  fp.Acceleration = accel
  fp.Drag = drag
  fp.LockedToPart = ltp
  fp.VelocityInheritance = velinher
  fp.EmissionDirection = emisdir
  fp.Enabled = enabled
  fp.Lifetime = lifetime
  fp.Rate = rate
  fp.Rotation = rotation
  fp.RotSpeed = rotspeed
  fp.Speed = speed
  fp.VelocitySpread = velspread
  return fp
end
Player=game:GetService('Players').LocalPlayer
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
math.randomseed(os.time())
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
for i,v in pairs (hed:GetChildren()) do
        if v:IsA("Sound") then
                v:Destroy()
        end
end
----------------------------------------------------
Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
RPunch = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {char.Name, }
----------------------------------------------------
hed.face.Texture = ""
char["Body Colors"].HeadColor = BrickColor.new("Really black")
char["Body Colors"].TorsoColor = BrickColor.new("Really black")
char["Body Colors"].LeftArmColor = BrickColor.new("Really black")
char["Body Colors"].RightArmColor = BrickColor.new("Really black")
char["Body Colors"].RightLegColor = BrickColor.new("Really black")
char["Body Colors"].LeftLegColor = BrickColor.new("Really black")
----------------------------------------------------
ypcall(function()
char.Shirt:Destroy()
char.Pants:Destroy()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=0"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=0"
end)
----------------------------------------------------
function lerp(a, b, t) -- Linear interpolation
        return a + (b - a)*t
end

function slerp(a, b, t) --Spherical interpolation
        dot = a:Dot(b)
        if dot > 0.99999 or dot < -0.99999 then
                return t <= 0.5 and a or b
        else
                r = math.acos(dot)
                return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
        end
end

function matrixInterpolate(a, b, t)
        local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
        local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
        local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx , by , bz), t) -- Position
        local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector  right
        local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector  up
        local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector  back
        local t = v1:Dot(v2)
        if not (t < 0 or t == 0 or t > 0) then         -- Failsafe
                return CFrame.new()
        end
        return CFrame.new(
        v0.x, v0.y, v0.z,
        v1.x, v1.y, v1.z,
        v2.x, v2.y, v2.z,
        v3.x, v3.y, v3.z)
end
----------------------------------------------------
function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
function weld(a, b)
    local weld = Instance.new("Weld")
    weld.Name = "W"
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
----------------------------------------------------
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
----------------------------------------------------
z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://177510410"--303570180
z.Looped = true
z.Pitch = 0.6
z.Volume = 1
wait(.1)
z:Play()
----------------------------------------------------
local Transforming = true
hum.WalkSpeed = 0
local fx = Instance.new("Part",torso)
fx.Anchored = true
fx.Material = "Neon"
fx.CanCollide = false
fx.Locked = true
fx.Transparency = 1
fx.Material = "Neon"
fx.Size = Vector3.new(1,1,1)
fx.TopSurface = "SmoothNoOutlines"
fx.BottomSurface = "SmoothNoOutlines"
fx.BrickColor = BrickColor.new("Really black")
fxm = Instance.new("SpecialMesh",fx)
fxm.MeshType = "Sphere"
fxm.Scale = Vector3.new(2,2,2)
for i = 1, 20 do rs:wait()
        fx.Transparency = fx.Transparency - (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(1,2000,1)
        rs:wait()
end
---------------------------------------------------
local player = game.Players.LocalPlayer
repeat
  wait()
until player.Character
local rs = game:GetService("RunService").RenderStepped
local char = player.Character
local HRP = char.HumanoidRootPart
local Head = char.Head
local tents = {}
getValue = function(p, x)
  
  return p[2] + 0.5 * x * (p[3] - p[1] + x * (2 * p[1] - 5 * p[2] + 4 * p[3] - p[4] + x * (3 * (p[2] - p[3]) + p[4] - p[1])))
end

getV3Cubic = function(tabl, perc)
  
  local x, y, z = {}, {}, {}
  if perc >= 2 then
    perc = perc % 1
    for i = 3, 6 do
      table.insert(x, tabl[i].x)
      table.insert(y, tabl[i].y)
      table.insert(z, tabl[i].z)
    end
	local X, Y, Z = getValue(x, perc), getValue(y, perc), getValue(z, perc)
    return Vector3.new(X, Y, Z)
  else
    do
      if perc >= 1 then
        perc = perc % 1
        for i = 2, 5 do
          table.insert(x, tabl[i].x)
          table.insert(y, tabl[i].y)
          table.insert(z, tabl[i].z)
        end
		local X, Y, Z = getValue(x, perc), getValue(y, perc), getValue(z, perc)
        return Vector3.new(X, Y, Z)
      else
        do
          for i = 1, 4 do
            table.insert(x, tabl[i].x)
            table.insert(y, tabl[i].y)
            table.insert(z, tabl[i].z)
          end
          do
            local X, Y, Z = getValue(x, perc), getValue(y, perc), getValue(z, perc)
            return Vector3.new(X, Y, Z)
          end
        end
      end
    end
  end
end

local rainbow = {"Really black", "Really black", "Really black", "Really black", "Really black", "Really black", "Really black", "Really black", "Really black"}
local rainbowCount = 1
local isRainbow = true
for i = 0, 4 do
  local m = Instance.new("Model", char)
  m.Name = "Tentac00l"
  local parts = {}
  local lastpart = Head
  local defC0 = nil
  rainbowCount = 1
  for j = 0, 8 do
    local sizex = 0.25 - 0.2 * (j / 8)
    local sizey = 1.875 - 1.125 * (j / 8)
    local p = Instance.new("Part")
    p.Size = Vector3.new(0.2, 0.2, 0.2)
    p.BrickColor = BrickColor.new("Really black")
    p.TopSurface = 0
    p.BottomSurface = 0
    p.CanCollide = false
    p.Material = "SmoothPlastic"
    p.TopSurface = 0
    p.BottomSurface = 0
    local mesh = Instance.new("CylinderMesh", p)
    mesh.Name = "CyMesh"
    mesh.Scale = Vector3.new(sizex, sizey, sizex) * 5
    p.Parent = m
    local p2 = p:Clone()
    p2.Parent = m
    p2.CyMesh.Scale = p2.CyMesh.Scale + Vector3.new(0.075, 0.001, 0.075) * 5
    p2.Material = "Neon"
    if isRainbow then
      p2.BrickColor = BrickColor.new(tostring(rainbow[rainbowCount]))
    else
      p2.BrickColor = BrickColor.new(j % 2 == 1 and "Toothpaste" or "Electric blue")
    end
    rainbowCount = rainbowCount + 1
    p2.Transparency = 0.35
    local w2 = Instance.new("Weld", p)
    w2.Parent = p2
    w2.Part0 = p
    w2.Part1 = p2
    local w = Instance.new("Weld", p)
    w.Parent = p
    w.Part0 = lastpart
    w.Part1 = p
    if i % 2 ~= 0 or not 96 then
      do
        w.C0 = CFrame.Angles(0, math.rad(-10 + 200 * i / 4), math.rad(-30 + (j or 70))) * CFrame.new(0, 0.6, 0)
        w.C1 = CFrame.new(0, -0.125, 0)
        defC0 = w.C0
        w.C0 = CFrame.new(0, mesh.Scale.y / 10, 0)
        w.C1 = CFrame.new(0, -sizey / 2, 0)
        table.insert(parts, {p, w, p2})
	lastpart = p
        rs:wait()
        -- DECOMPILER ERROR at PC262: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC262: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  local randoms = {Vector3.new(0, 0, 0), Vector3.new(math.random(-28, 28) / 100, math.random(-42, 42) / 100, math.random(-28, 28) / 100), Vector3.new(math.random(-28, 28) / 100, math.random(-42, 42) / 100, math.random(-28, 28) / 100), Vector3.new(math.random(-28, 28) / 100, math.random(-42, 42) / 100, math.random(-28, 28) / 100), Vector3.new(math.random(-28, 28) / 100, math.random(-42, 42) / 100, math.random(-28, 28) / 100), Vector3.new(math.random(-28, 28) / 100, math.random(-42, 42) / 100, math.random(-28, 28) / 100)}
  table.insert(tents, {0, randoms, parts, defC0})
end
player.Chatted:connect(function(msg)
  
  if string.sub(msg:lower(), 1, 4) == "col/" then
    for i,v in pairs(tents) do
      for j,o in pairs(v[3]) do
        o[3].BrickColor = BrickColor.new(string.sub(msg, 5))
      end
    end
  else
    do
      if string.sub(msg:lower(), 1, 7) == "/e col/" then
        for i,v in pairs(tents) do
          for j,o in pairs(v[3]) do
            o[3].BrickColor = BrickColor.new(string.sub(msg, 8))
          end
        end
      end
    end
  end
end
)
rs:connect(function()
  
  for i,v in pairs(tents) do
    v[1] = v[1] % 200 + 1
    if v[1] == 1 then
      v[2][1] = v[2][2]
      v[2][2] = v[2][3]
      v[2][3] = v[2][4]
      v[2][4] = v[2][5]
      v[2][5] = v[2][6]
      v[2][6] = Vector3.new(math.random(-28, 28) / 100, math.random(-42, 42) / 100, math.random(-28, 28) / 100)
    end
    local p0 = v[2][1]
    local p1 = v[2][2]
    local p2 = v[2][3]
    local p3 = v[2][4]
    local p4 = v[2][5]
    local p5 = v[2][6]
    local arr = {p0, p1, p2, p3, p4, p5}
    local dir = i % 2 == 0 and 1 or -1
    for j,V in pairs(v[3]) do
      local val = math.sin(math.pi / 2 * 2 * ((v[1] + 100 * j / #v[3] * dir) % 100 / 100))
      local off = getV3Cubic(arr, (v[1] + 340 * (j / #v[3])) / 200)
      V[3].Transparency = 0.12 + val * 0.65
      if j == 1 then
        V[2].C0 = v[4] * CFrame.Angles(off.x * 2, off.y * 2, off.z * 2)
      else
        V[2].C0 = CFrame.new(0, V[2].C0.y, 0) * CFrame.Angles(off.x * 2 * (1 + 0.75 * (j / #v[3])), off.y * 2 * (1 + 0.75 * (j / #v[3])), off.z * 2 * (1 + 0.75 * (j / #v[3])))
      end
    end
  end
end
)
----------------------------------------------------
Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


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


Orb2=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Institutional white","Handle",Vector3.new(0.887265563, 0.887265563, 0.887265563))
Orb2weld=weld(m,Character["Left Arm"],Orb2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.502059937, 0.355368137, 1.71773267, -0.44424206, 0.232894972, -0.865106404, 0.628215313, 0.769424856, -0.115459129, 0.638744593, -0.594764709, -0.488119096))
mesh("SpecialMesh",Orb2,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.890794039, 0.890788555, 0.890788138))
Orb=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.5,"Institutional white","Orb",Vector3.new(1.2214824, 1.2214824, 1.2214824))
Orb.Shape = "Ball"

Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


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

Orb3=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Handle",Vector3.new(0.887265563, 0.887265563, 0.887265563))
Orb3weld=weld(m,Character["Right Arm"],Orb3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0678920746, -0.688210368, 1.24336052, -0.703631341, 0.00967200287, 0.710499585, -0.236187309, 0.939869761, -0.246698543, -0.670163155, -0.341395736, -0.659037471))
mesh("SpecialMesh",Orb3,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.890794039, 0.890788555, 0.890788138))
Orb=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.5,"Really black","Orb",Vector3.new(1.2214824, 1.2214824, 1.2214824))
Orbweld=weld(m,Orb3,Orb,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1.00000012, 1.49011612e-008, 0, 1.49011612e-008, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Orb,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.890794039, 0.890788555, 0.890788138))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143494606, -1.25856304, 0.329597473, 1.00000012, 1.49011612e-008, 0, 0, 0.923942626, -0.382531196, 0, 0.382531166, 0.923942626))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.615454078, 0.793611169))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143055916, -0.777040958, -1.45310402, 1.00000012, 1.49011612e-008, 0, 0, 0.923905969, -0.382619679, 2.98023224e-008, 0.382619619, 0.923905969))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.145765424, 0.372511417))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 1.29332566))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143642426, 1.01071525, 0.32174015, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923876107, -0.382691681, 0, 0.382691681, 0.923876166))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.014380455, -0.705107212, -0.73434639, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923850656, -0.382753313, 0, 0.382753313, 0.923850656))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.307727039, 0.3077268))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144486427, -0.138548374, 1.73012638, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923772991, -0.38294062, 0, 0.38294059, 0.92377305))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.453492314, 0.583061278))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.01440382, -0.769747734, 0.573980331, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923933685, -0.382552862, -2.98023224e-008, 0.382552892, 0.923933744))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.242942229))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144219398, -0.733915329, 0.825391769, 1.00000012, 1.49011612e-008, 0, 0, 0.92392379, -0.382576406, 0, 0.382576406, 0.92392385))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.242942333, 0.323922902))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.014424324, -1.38064384, -0.353040695, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923933685, -0.382552862, -2.98023224e-008, 0.382552892, 0.923933744))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.890788734, 0.745022833))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143566132, -1.12842798, -0.970887184, 1.00000012, 1.49011612e-008, 0, -1.86264515e-009, 0.923998177, -0.382396936, -2.98023224e-008, 0.382396907, 0.923998117))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.3239232, 0.323922902))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 1.25021493))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144233704, 1.14006543, 2.09680176, 1.00000012, 1.49011612e-008, 0, -1.86264515e-009, 0.923719823, -0.383068979, 5.96046448e-008, 0.383068949, 0.923719764))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.906984746, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144305229, -0.583024979, -1.07998466, 1.00000012, 1.49011612e-008, 0, 0, 0.923861682, -0.382726401, -2.98023224e-008, 0.382726401, 0.923861742))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.583061755, 0.469688207))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144481659, 0.825361252, 0.8253479, 1.00000012, 1.49011612e-008, 0, 0, 0.923942626, -0.382531196, 0, 0.382531166, 0.923942626))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.259138525, 0.323922902))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143418312, 0.86701417, 0.573102951, 1.00000012, 1.49011612e-008, 0, 3.7252903e-009, 0.923902094, -0.382628798, -2.98023224e-008, 0.382628769, 0.923902154))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.242942229))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144238472, 0.400093079, 1.79470062, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923721433, -0.383065045, 2.98023224e-008, 0.383065045, 0.923721433))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.761219323, 0.728826642))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 2.58665133))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143995285, -0.913483143, -0.324422836, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923933685, -0.382552862, -2.98023224e-008, 0.382552892, 0.923933744))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143547058, -0.541141033, 1.62947273, 1.00000012, 1.49011612e-008, 0, -1.86264515e-009, 0.923827887, -0.382808328, -5.96046448e-008, 0.382808298, 0.923827887))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.453492463, 0.356315255))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 2.06932139, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144166946, 0.0481677055, 1.21985817, 1.00000012, 1.49011612e-008, 0, -1.86264515e-009, 0.923881888, -0.382678002, 0, 0.382677972, 0.923881888))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 1, 0.566865087))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143070221, -1.2364192, -0.755374908, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923951864, -0.382508934, 2.98023224e-008, 0.382508904, 0.923951805))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.566865504, 0.161961451))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143699646, -0.769845009, -0.475525856, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923891902, -0.382653743, -2.98023224e-008, 0.382653683, 0.923891902))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.275334477))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 1.33643687, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143666267, 0.0422482491, 0.896986008, 1.00000012, 1.49011612e-008, 0, 0, 0.923899233, -0.38263604, 0, 0.382636011, 0.923899233))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 1, 0.161961451))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143237114, 1.7868042, 2.95180702, 1.00000012, 1.49011612e-008, 0, -1.86264515e-009, 0.923719823, -0.383068979, 5.96046448e-008, 0.383068949, 0.923719764))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.550669432, 0.842199624))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143613815, -0.970600128, 1.38010454, 1.00000012, 1.49011612e-008, 0, 0, 0.382407755, 0.923993766, 1.86264515e-009, -0.923993766, 0.382407755))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.3239232, 0.242942229))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0143671036, 0.867209196, -0.314229965, -1.00000012, -1.49011612e-008, 0, 0, 0.923979223, -0.382442802, 0, -0.382442772, -0.923979282))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196163, 0.340119064))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143041611, 0.76987648, -0.315297127, 1.00000012, 1.49011612e-008, 0, -1.86264515e-009, -0.923951864, 0.382508934, -2.98023224e-008, -0.382508904, -0.923951805))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.340119064))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0141844749, -0.540944099, 1.8880825, 1.00000012, 1.49011612e-008, 0, 0, 0.923842251, -0.382773578, 0, 0.382773548, 0.923842311))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.453492463, 0.226746053))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0142354965, 0.769865513, -0.0939617157, -1.00000012, -1.49011612e-008, 0, 1.86264515e-009, -0.923998177, 0.382396936, -2.98023224e-008, 0.382396907, 0.923998117))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.583061278))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143609047, -1.25842857, 1.07650948, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923933685, -0.382552862, -2.98023224e-008, 0.382552892, 0.923933744))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.615454078, 0.890788138))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143790245, -1.65408182, 0.329648972, 1, -9.68575478e-007, -2.71201134e-006, -1.24797225e-007, 0.923948586, -0.382516891, 2.86102295e-006, 0.382516801, 0.923948526))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.275334716, 0.793611169))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0144429207, 0.633457184, -0.475393295, -1.00000012, -1.49011612e-008, 0, 0, -0.923926353, 0.382570535, 0, 0.382570565, 0.923926353))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.145765424, 0.275334477))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0142507553, 0.446650028, -0.734584808, -1.00000012, -1.49011612e-008, 0, 0, -0.923942626, 0.382531196, 0, 0.382531166, 0.923942626))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.275334716, 0.3077268))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 1.79628587, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0143270493, 0.57338047, 1.31251836, -1.00000012, -1.49011612e-008, 0, 2.98023224e-008, 0.383064389, 0.92372179, 0, 0.923721671, -0.383064389))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 1, 0.518276632))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0146727562, -1.36502552, 1.12885427, 1.00000012, 1.49011612e-008, 0, 0, 0.382083118, 0.924128056, 0, -0.924127996, 0.382083118))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.566865504, 0.323922902))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144696236, 0.467594624, -0.753448486, 1.00000012, 1.49011612e-008, 0, 0, -0.923969984, 0.382465094, -2.98023224e-008, -0.382465065, -0.923969984))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.356315494, 0.161961451))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.014354229, -2.0562439, -0.353294373, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923947215, -0.38252008, 0, 0.38252008, 0.923947275))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.631650209, 0.745022833))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0143246651, 0.552667618, -0.753526688, -1.00000012, -1.49011612e-008, 0, 0, 0.923969984, -0.382465094, -2.98023224e-008, -0.382465065, -0.923969984))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.356315523, 0.161961451))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142321587, 0.399935246, 2.41992378, 1.00000012, 1.49011612e-008, 0, 0, 0.923712194, -0.383087337, 0, 0.383087307, 0.923712134))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.761219621, 0.680238068))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0143885612, -0.93530941, -2.05617285, -1.00000012, -1.49011612e-008, 0, 0, 0.382489145, 0.92395997, 0, 0.92396009, -0.382489204))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.566865504, 0.631649613))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142798424, -0.755475998, 1.63162708, 1.00000012, 1.49011612e-008, 0, -5.96046448e-008, 0.382526159, 0.923944771, 0, -0.923944652, 0.382526159))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.323922902))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0143070221, 0.573734283, -0.66204977, -1.00000012, -1.49011612e-008, 0, 2.98023224e-008, 0.382705569, 0.923870444, 3.7252903e-009, 0.923870444, -0.382705599))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.242942333, 0.0809807107))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 2.14117265))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0142812729, 2.95166302, 3.10169697, -1.00000012, -1.49011612e-008, 0, 2.98023224e-008, 0.383064389, 0.92372179, 0, 0.923721671, -0.383064389))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.842200279, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.014421463, 0.752266407, -0.573197365, -1.00000012, -1.49011612e-008, 0, -1.86264515e-009, 0.923974633, -0.382453978, 2.98023224e-008, -0.382453948, -0.923974633))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.0971769989, 0.242942229))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143566132, -0.864401817, 1.62925529, 1.00000012, 1.49011612e-008, 0, 0, 0.923869073, -0.382708788, 0, 0.382708758, 0.923869133))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.275334716, 0.356315255))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142197609, -1.01076412, 0.396925926, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, -0.923881888, 0.382678002, 0, -0.382677972, -0.923881888))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.161961451))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142817497, -0.139033318, 2.05354595, 1.00000012, 1.49011612e-008, 0, -1.86264515e-009, 0.923675716, -0.383175105, 0, 0.383175135, 0.923675776))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.453492463, 0.145765319))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0144047737, 0.0443925858, -1.07949638, -1.00000012, -1.49011612e-008, 0, -3.7252903e-009, -0.923928738, 0.382564604, 0, 0.382564604, 0.923928857))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.631650209, 0.469688356))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 1.10651183))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143818855, -1.78685999, -2.02521324, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, -0.923719823, 0.383068979, -5.96046448e-008, -0.383068949, -0.923719764))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.550669432, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142259598, 1.14000654, 3.02338028, 1.00000012, 1.49011612e-008, 0, 0, 0.923712194, -0.383087337, 0, 0.383087307, 0.923712134))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.906985044, 0.680238068))
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "Hair"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Bright red")
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Size = Vector3.new(1, 1, 1)
p1.CFrame = CFrame.new(-2.49043155, 8.24595642, -3.40113306, -5.48362732e-006, -0.978699088, 0.205299795, 3.27825546e-007, -0.205299854, -0.978699148, 1, -5.28991222e-006, 1.48639083e-006)
p1.CanCollide = false
p1.Locked = true
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "http://www.roblox.com/asset/?id=0"
b1.TextureId = ""
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.VertexColor = Vector3.new(0, 0, 0)
b1.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Pastel brown")
p2.Transparency = 1
p2.Name = "Head"
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(2, 1, 1)
p2.CFrame = CFrame.new(-1.70008016, 8.14794922, -3.40013027, 4.24603923e-006, 7.4505806e-008, -1, -1.50268988e-007, 1, 1.49011612e-008, 1.00000012, 6.79109462e-008, 4.23316806e-006)
p2.CanCollide = false
p2.Locked = true
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Head
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.25, 1.25, 1.25)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Really black")
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Size = Vector3.new(2, 2, 2)
p3.CFrame = CFrame.new(-1.70003617, 8.71796131, -3.4000442, 2.57710985e-006, 6.95607483e-008, -1.00000012, -1.20466638e-007, 1, 9.95640903e-009, 1.00000024, 3.81086345e-008, 2.56423846e-006)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/asset/?id=0"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.VertexColor = Vector3.new(0, 0, 0)
b3.Scale = Vector3.new(1.04999995, 1.04999995, 1.04999995)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Really black")
p4.FormFactor = Enum.FormFactor.Symmetric
p4.Size = Vector3.new(1, 1, 1)
p4.CFrame = CFrame.new(-1.77981007, 8.84795475, -3.40016508, 5.79576135e-006, 7.9450956e-008, -1.00000012, -1.80071311e-007, 1, 1.98458743e-008, 1.00000024, 9.77132402e-008, 5.78289018e-006)
p4.CanCollide = false
p4.Locked = true
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshId = "http://www.roblox.com/asset/?id=0"
b4.TextureId = ""
b4.MeshType = Enum.MeshType.FileMesh
b4.Name = "Mesh"
b4.VertexColor = Vector3.new(0, 0, 0)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Really black")
p5.FormFactor = Enum.FormFactor.Symmetric
p5.Size = Vector3.new(1, 1, 1)
p5.CFrame = CFrame.new(-1.70003772, 8.46796131, -3.40004301, -3.43517968e-007, 2.98088111e-007, -1, -1.00421907e-007, 1, 2.38484063e-007, 1.00000012, 1.80640072e-008, -3.56389592e-007)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p5)
b5.MeshId = "http://www.roblox.com/asset/?id=0"
b5.TextureId = ""
b5.MeshType = Enum.MeshType.FileMesh
b5.Name = "Mesh"
b5.VertexColor = Vector3.new(0, 0, 0)
b5.Scale = Vector3.new(1, 0.899999976, 1)
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Really black")
p6.FormFactor = Enum.FormFactor.Symmetric
p6.Size = Vector3.new(1, 1, 1)
p6.CFrame = CFrame.new(-1.89967656, 8.58795834, -3.44990659, -5.81936433e-007, 5.36502284e-007, -0.99999994, -1.3998249e-007, 1, 4.76898265e-007, 1, 5.76247672e-008, -5.94808171e-007)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshId = "http://www.roblox.com/asset/?id=0"
b6.TextureId = ""
b6.MeshType = Enum.MeshType.FileMesh
b6.Name = "Mesh"
b6.VertexColor = Vector3.new(0, 0, 0)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Really black")
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Size = Vector3.new(1, 1, 1)
p7.CFrame = CFrame.new(-1.89918542, 8.31796837, -3.50097537, -4.62727087e-007, 5.36502228e-007, -0.999999881, -1.39982518e-007, 1, 4.76898208e-007, 0.99999994, 5.76247459e-008, -4.75598938e-007)
p7.CanCollide = false
p7.Locked = true
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshId = "http://www.roblox.com/asset/?id=0"
b7.TextureId = ""
b7.MeshType = Enum.MeshType.FileMesh
b7.Name = "Mesh"
b7.VertexColor = Vector3.new(0, 0, 0)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Really black")
p8.FormFactor = Enum.FormFactor.Symmetric
p8.Size = Vector3.new(1, 1, 1)
p8.CFrame = CFrame.new(-2.62433338, 7.66397905, -3.4010179, -1.17798254e-006, -0.805111349, 0.593123376, -2.5008859e-007, -0.593123615, -0.805111527, 0.999999881, -9.58229293e-007, 4.4941558e-007)
p8.CanCollide = false
p8.Locked = true
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshId = "http://www.roblox.com/asset/?id=0"
b8.TextureId = ""
b8.MeshType = Enum.MeshType.FileMesh
b8.Name = "Mesh"
b8.VertexColor = Vector3.new(0, 0, 0)
b8.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.FormFactor = Enum.FormFactor.Symmetric
p9.Size = Vector3.new(2, 1, 2)
p9.CFrame = CFrame.new(-1.76505995, 8.56096649, -3.40065479, -9.73168881e-007, -0.0995008349, -0.995037436, -1.70322267e-007, 0.995037675, -0.0995009243, 1, 1.13823972e-007, -6.80968242e-007)
p9.CanCollide = false
p9.Locked = true
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p9)
b9.MeshId = "http://www.roblox.com/asset/?id=0"
b9.TextureId = ""
b9.MeshType = Enum.MeshType.FileMesh
b9.Name = "Mesh"
b9.VertexColor = Vector3.new(0, 0, 0)
b9.Scale = Vector3.new(1.01999998, 1.04999995, 1.04999995)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Really black")
p10.FormFactor = Enum.FormFactor.Symmetric
p10.Size = Vector3.new(1, 1, 1)
p10.CFrame = CFrame.new(-2.0207715, 9.06097031, -3.39961624, -1.10652763e-006, -0.683569431, -0.729885519, -2.85231891e-007, 0.729885638, -0.68356967, 1.00000012, -3.22293062e-007, -8.40051371e-007)
p10.CanCollide = false
p10.Locked = true
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p10)
b10.MeshId = "http://www.roblox.com/asset/?id=0"
b10.TextureId = ""
b10.MeshType = Enum.MeshType.FileMesh
b10.Name = "Mesh"
b10.VertexColor = Vector3.new(0, 0, 0)
b10.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Really black")
p11.FormFactor = Enum.FormFactor.Symmetric
p11.Size = Vector3.new(1, 1, 1)
p11.CFrame = CFrame.new(-2.16468835, 8.78595829, -3.40089417, -1.41617738e-006, -0.989475727, -0.144699216, -4.36450762e-007, 0.144699067, -0.989476085, 1.00000024, -9.47996682e-007, -7.38401468e-007)
p11.CanCollide = false
p11.Locked = true
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("SpecialMesh", p11)
b11.MeshId = "http://www.roblox.com/asset/?id=0"
b11.TextureId = ""
b11.MeshType = Enum.MeshType.FileMesh
b11.Name = "Mesh"
b11.VertexColor = Vector3.new(0, 0, 0)
b11.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Really black")
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(1, 3.5, 1)
p12.CFrame = CFrame.new(-3.74216318, 6.74288082, -3.40101933, -1.20476273e-006, -0.553697288, 0.832718134, -3.31002866e-007, -0.832718611, -0.553697169, 1.00000036, -8.7345768e-007, 3.69213154e-007)
p12.CanCollide = false
p12.Locked = true
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p12)
b12.MeshId = "http://www.roblox.com/asset/?id=0"
b12.TextureId = ""
b12.MeshType = Enum.MeshType.FileMesh
b12.Name = "Mesh"
b12.VertexColor = Vector3.new(0, 0, 0)
b12.Scale = Vector3.new(1, 3, 1.29999995)
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Really black")
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(1, 2, 1)
p13.CFrame = CFrame.new(-3.32689047, 6.86741829, -3.40101862, -9.81709945e-007, -0.319307148, 0.947651446, -5.6545997e-007, -0.947651923, -0.31930691, 1.00000048, -8.39551717e-007, 1.79318391e-007)
p13.CanCollide = false
p13.Locked = true
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("SpecialMesh", p13)
b13.MeshId = "http://www.roblox.com/asset/?id=0"
b13.TextureId = ""
b13.MeshType = Enum.MeshType.FileMesh
b13.Name = "Mesh"
b13.VertexColor = Vector3.new(0, 0, 0)
b13.Scale = Vector3.new(1, 3, 1.29999995)
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Really black")
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(1, 2, 1)
p14.CFrame = CFrame.new(-3.02689028, 7.96740961, -3.40101862, -1.33478545e-006, -0.750354111, 0.661036491, -5.20037702e-008, -0.661037207, -0.750354171, 1.0000006, -6.31296757e-007, 2.01137496e-007)
p14.CanCollide = false
p14.Locked = true
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("SpecialMesh", p14)
b14.MeshId = "http://www.roblox.com/asset/?id=0"
b14.TextureId = ""
b14.MeshType = Enum.MeshType.FileMesh
b14.Name = "Mesh"
b14.VertexColor = Vector3.new(0, 0, 0)
b14.Scale = Vector3.new(1, 3, 1.29999995)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Really black")
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(1, 2.5, 1)
p15.CFrame = CFrame.new(-2.96531463, 7.75924349, -2.90101862, 0.342019022, -0.520305753, 0.782499552, -1.1920929e-007, -0.832718909, -0.553697407, 0.939693451, 0.189374983, -0.284806281)
p15.CanCollide = false
p15.Locked = true
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("SpecialMesh", p15)
b15.MeshId = "http://www.roblox.com/asset/?id=0"
b15.TextureId = ""
b15.MeshType = Enum.MeshType.FileMesh
b15.Name = "Mesh"
b15.VertexColor = Vector3.new(0, 0, 0)
b15.Scale = Vector3.new(1, 3, 1.29999995)
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Really black")
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(1, 2.5, 1)
p16.CFrame = CFrame.new(-2.96531439, 7.75924349, -3.80101967, -0.258820295, -0.534830391, 0.804343879, -1.78813934e-007, -0.832718968, -0.553697228, 0.96592629, -0.143308073, 0.215523779)
p16.CanCollide = false
p16.Locked = true
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b16 = Instance.new("SpecialMesh", p16)
b16.MeshId = "http://www.roblox.com/asset/?id=0"
b16.TextureId = ""
b16.MeshType = Enum.MeshType.FileMesh
b16.Name = "Mesh"
b16.VertexColor = Vector3.new(0, 0, 0)
b16.Scale = Vector3.new(1, 3, 1.29999995)
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Really black")
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(1, 2.4000001, 1)
p17.CFrame = CFrame.new(-2.69075108, 7.07788849, -3.40101933, -1.13248825e-006, -0.319307148, 0.947651625, -1.1920929e-006, -0.947652161, -0.319306791, 1.0000006, -1.54972076e-006, 1.04308128e-007)
p17.CanCollide = false
p17.Locked = true
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b17 = Instance.new("SpecialMesh", p17)
b17.MeshId = "http://www.roblox.com/asset/?id=0"
b17.TextureId = ""
b17.MeshType = Enum.MeshType.FileMesh
b17.Name = "Mesh"
b17.VertexColor = Vector3.new(0, 0, 0)
b17.Scale = Vector3.new(1, 3, 1.29999995)
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Really black")
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(2, 2, 2)
p18.CFrame = CFrame.new(-1.70003319, 8.71796608, -3.40004444, -2.37434961e-006, 1.78813934e-007, 1.00000036, -2.35242567e-007, 1.00000072, 3.27825546e-007, -1.0000006, 7.95440158e-009, -2.91315405e-006)
p18.CanCollide = false
p18.Locked = true
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("SpecialMesh", p18)
b18.MeshId = "http://www.roblox.com/asset/?id=0"
b18.TextureId = ""
b18.MeshType = Enum.MeshType.FileMesh
b18.Name = "Mesh"
b18.VertexColor = Vector3.new(0, 0, 0)
b18.Scale = Vector3.new(1.04999995, 1.04999995, 1.04999995)
w1 = Instance.new("Weld", p1)
w1.Name = "Head_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(3.40111661, -0.744508088, 8.58160019, -5.48362732e-006, 3.27825546e-007, 1, -0.978699088, -0.205299854, -5.30481339e-006, 0.205299824, -0.978699148, 1.49011612e-006)
w1.Part1 = p2
w1.C1 = CFrame.new(3.40013766, -8.14794827, -1.70006609, 4.23192978e-006, -1.08796726e-007, 1.00000012, 2.9664772e-008, 1, 1.08796598e-007, -1.00000012, 2.96642924e-008, 4.23192978e-006)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(3.40013766, -8.14794827, -1.70006609, 4.23192978e-006, -1.08796726e-007, 1.00000012, 2.9664772e-008, 1, 1.08796598e-007, -1.00000012, 2.96642924e-008, 4.23192978e-006)
w2.Part1 = p3
w2.C1 = CFrame.new(3.40004802, -8.71796036, -1.70002759, 2.56299973e-006, -7.89943471e-008, 1, 2.47196947e-008, 1, 7.89942831e-008, -1, 2.47194887e-008, 2.56299973e-006)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(3.40004802, -8.71796036, -1.70002759, 2.56299973e-006, -7.89943471e-008, 1, 2.47196947e-008, 1, 7.89942831e-008, -1, 2.47194887e-008, 2.56299973e-006)
w3.Part1 = p4
w3.C1 = CFrame.new(3.40017533, -8.8479538, -1.77979064, 5.78165054e-006, -1.38599077e-007, 1, 3.46098972e-008, 1, 1.38598878e-007, -1, 3.46090907e-008, 5.78165054e-006)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(3.40017533, -8.8479538, -1.77979064, 5.78165054e-006, -1.38599077e-007, 1, 3.46098972e-008, 1, 1.38598878e-007, -1, 3.46090907e-008, 5.78165054e-006)
w4.Part1 = p5
w4.C1 = CFrame.new(3.40004182, -8.46796036, -1.70004117, -3.57627869e-007, -5.89495883e-008, 0.99999994, 2.53247009e-007, 1, 5.89496665e-008, -0.99999994, 2.53247009e-007, -3.57627869e-007)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(3.40004182, -8.46796036, -1.70004117, -3.57627869e-007, -5.89495883e-008, 0.99999994, 2.53247009e-007, 1, 5.89496665e-008, -0.99999994, 2.53247009e-007, -3.57627869e-007)
w5.Part1 = p6
w5.C1 = CFrame.new(3.44990563, -8.58795738, -1.89968324, -5.96046448e-007, -9.85101565e-008, 1, 4.91661183e-007, 1, 9.85104407e-008, -1, 4.9166124e-007, -5.96046448e-007)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(3.44990563, -8.58795738, -1.89968324, -5.96046448e-007, -9.85101565e-008, 1, 4.91661183e-007, 1, 9.85104407e-008, -1, 4.9166124e-007, -5.96046448e-007)
w6.Part1 = p7
w6.C1 = CFrame.new(3.50097466, -8.31796741, -1.89919162, -4.76837158e-007, -9.85101849e-008, 0.99999994, 4.91661126e-007, 1, 9.85104265e-008, -0.99999994, 4.91661183e-007, -4.76837158e-007)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(3.50097466, -8.31796741, -1.89919162, -4.76837158e-007, -9.85101849e-008, 0.99999994, 4.91661126e-007, 1, 9.85104265e-008, -0.99999994, 4.91661183e-007, -4.76837158e-007)
w7.Part1 = p8
w7.C1 = CFrame.new(3.40101647, 2.43280101, 7.72691393, -1.1920929e-006, -2.08616257e-007, 1, -0.805111527, -0.593123555, -9.83476639e-007, 0.593123496, -0.805111527, 4.17232513e-007)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(3.40101647, 2.43280101, 7.72691393, -1.1920929e-006, -2.08616257e-007, 1, -0.805111527, -0.593123555, -9.83476639e-007, 0.593123496, -0.805111527, 4.17232513e-007)
w8.Part1 = p9
w8.C1 = CFrame.new(3.40065455, -8.6941061, -0.904481649, -8.34465027e-007, -1.67638063e-007, 1.00000012, -0.0995008498, 0.995037496, 1.00582838e-007, -0.995037615, -0.0995008498, -8.34465027e-007)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(3.40065455, -8.6941061, -0.904481649, -8.34465027e-007, -1.67638063e-007, 1.00000012, -0.0995008498, 0.995037496, 1.00582838e-007, -0.995037615, -0.0995008498, -8.34465027e-007)
w9.Part1 = p10
w9.C1 = CFrame.new(3.39961672, -7.99480963, 4.71886492, -9.53674316e-007, -2.98023224e-007, 1, -0.683569372, 0.729885519, -4.47034836e-007, -0.729885459, -0.683569431, -9.53674316e-007)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(3.39961672, -7.99480963, 4.71886492, -9.53674316e-007, -2.98023224e-007, 1, -0.683569372, 0.729885519, -4.47034836e-007, -0.729885459, -0.683569431, -9.53674316e-007)
w10.Part1 = p11
w10.C1 = CFrame.new(3.40089583, -3.41323304, 8.38025856, -1.31130219e-006, -4.76837158e-007, 1.00000012, -0.989475787, 0.144699097, -1.07288361e-006, -0.144699246, -0.989475787, -7.15255737e-007)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(3.40089583, -3.41323304, 8.38025856, -1.31130219e-006, -4.76837158e-007, 1.00000012, -0.989475787, 0.144699097, -1.07288361e-006, -0.144699246, -0.989475787, -7.15255737e-007)
w11.Part1 = p12
w11.C1 = CFrame.new(3.40101814, 3.54288888, 6.84968376, -9.53674316e-007, -4.47034836e-007, 1, -0.553697109, -0.832718134, -9.23871994e-007, 0.832718134, -0.553697109, 6.55651093e-007)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(3.40101814, 3.54288888, 6.84968376, -9.53674316e-007, -4.47034836e-007, 1, -0.553697109, -0.832718134, -9.23871994e-007, 0.832718134, -0.553697109, 6.55651093e-007)
w12.Part1 = p13
w12.C1 = CFrame.new(3.40102005, 5.44561195, 5.34554911, -8.34465027e-007, -6.40749931e-007, 1.00000012, -0.319307029, -0.947651505, -8.19563866e-007, 0.947651386, -0.319307029, 3.57627869e-007)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(3.40102005, 5.44561195, 5.34554911, -8.34465027e-007, -6.40749931e-007, 1.00000012, -0.319307029, -0.947651505, -8.19563866e-007, 0.947651386, -0.319307029, 3.57627869e-007)
w13.Part1 = p14
w13.C1 = CFrame.new(3.40101624, 2.99550176, 7.97925997, -9.53674316e-007, -1.49011612e-007, 1, -0.750353813, -0.661036491, -8.64267349e-007, 0.661036491, -0.750353813, 5.36441803e-007)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(3.40101624, 2.99550176, 7.97925997, -9.53674316e-007, -1.49011612e-007, 1, -0.750353813, -0.661036491, -8.64267349e-007, 0.661036491, -0.750353813, 5.36441803e-007)
w14.Part1 = p15
w14.C1 = CFrame.new(3.74026394, 5.46776819, 5.79039907, 0.34201923, -3.27825546e-007, 0.939692974, -0.520305395, -0.832718134, 0.189374775, 0.782499313, -0.553697109, -0.284805775)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(3.74026394, 5.46776819, 5.79039907, 0.34201923, -3.27825546e-007, 0.939692974, -0.520305395, -0.832718134, 0.189374775, 0.782499313, -0.553697109, -0.284805775)
w15.Part1 = p16
w15.C1 = CFrame.new(2.90401983, 4.33060169, 7.50061178, -0.258819938, -2.68220901e-007, 0.965925574, -0.534830093, -0.832718134, -0.143308043, 0.80434382, -0.55369705, 0.215523928)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(2.90401983, 4.33060169, 7.50061178, -0.258819938, -2.68220901e-007, 0.965925574, -0.534830093, -0.832718134, -0.143308043, 0.80434382, -0.55369705, 0.215523928)
w16.Part1 = p17
w16.C1 = CFrame.new(3.4010253, 5.84818506, 4.80991411, -8.56413749e-007, -1.3483392e-006, 1, -0.31930685, -0.947651386, -1.55121427e-006, 0.947651386, -0.31930685, 3.81047698e-007)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(3.4010253, 5.84818506, 4.80991411, -8.56413749e-007, -1.3483392e-006, 1, -0.31930685, -0.947651386, -1.55121427e-006, 0.947651386, -0.31930685, 3.81047698e-007)
w17.Part1 = p18
w17.C1 = CFrame.new(-3.40004683, -8.71796036, 1.70002675, -2.6504224e-006, -7.89943471e-008, -1, -2.47197018e-008, 1, -7.89942831e-008, 1, 2.47194887e-008, -2.6504224e-006)
m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", char.Hair)
cor.Name = "Link"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 9, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = hed
corw.Part1 = cor
corw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", char.Hair)
weld1.Part0 = cor
weld1.Part1 = char.Hair.Head
weld1.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
----------------------------------------------------
GroundWave1 = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"Royal purple", "Really black"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm.Scale = Vector3.new(6 + i*6.7, 6 + i*6.7, 1)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/30
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end
----------------------------------------------------
GroundWave = function()
        if Transforming == true then
                local wave = Instance.new("Part", torso)
                wave.BrickColor = BrickColor.new("Alder")
                wave.Anchored = true
                wave.CanCollide = false
                wave.Locked = true
                wave.Size = Vector3.new(6, 6, 6)
                wave.TopSurface = "Smooth"
                wave.BottomSurface = "Smooth"
                wave.Material = "Neon"
                wave.Transparency = 0.35
                wave.CFrame = fx.CFrame
                wm = Instance.new("SpecialMesh", wave)
                wm.MeshType = "Sphere"
                wm.Scale = Vector3.new(15,1,15)
                coroutine.wrap(function()
                for i = 1, 18, 1 do
                wm.Scale = Vector3.new(5 + i*5, 0.1 + i*0.1, 5 + i*5)
                --wave.Size = wm.Scale
                wave.CFrame = fx.CFrame
                wave.Transparency = i/14
                wait()
                end
                wait()
                wave:Destroy()
        end)()
        elseif Transforming == false then
        wait()
        end
end

for i = 1, 100 do rs:wait()
        fx.CFrame = torso.CFrame
end

Spawn(function()
	while wait(1) do
		GroundWave()
	end
end)

wait(4)

Transforming = false

for i = 1, 20 do rs:wait()
        fx.Transparency = fx.Transparency + (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(0.5,0.5,0.5)
        rs:wait()
end

local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local wave = Instance.new("Part", torso)
        wave.BrickColor = BrickColor.new("Institutional white")
        wave.Anchored = true
        wave.CanCollide = false
        wave.Locked = true
        wave.Size = Vector3.new(1, 1, 1)
        wave.TopSurface = "Smooth"
        wave.BottomSurface = "Smooth"
        wave.Transparency = 0.35
        wave.CFrame = HandCF
        wm = Instance.new("SpecialMesh", wave)
        wm.MeshId = "rbxassetid://3270017"
        coroutine.wrap(function()
        for i = 1, 14, 1 do
        wm.Scale = Vector3.new(6 + i*6.6, 6 + i*6.6, 1)
        wave.Size = wm.Scale
        wave.CFrame = HandCF
        wave.Transparency = i/14
        wait()
        end
        wait()
        wave:Destroy()
end)()
hum.WalkSpeed = 16
----------------------------------------------------
Blast = function()
	local Colors = {"Alder", "Alder"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = rarm.CFrame
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshType = "Brick"
		wm.Scale = Vector3.new(1,1,1)
		z = Instance.new("Sound",wave)
		z.SoundId = "rbxassetid://237035051"
		z.Volume = 1
		z.Pitch = .9
		z:Play()
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wave.Size = Vector3.new(1 + i*4, 1 + i*4, 1 + i*4)
		--wave.Size = wm.Scale
		wave.CFrame = rarm.CFrame
		wave.Transparency = (1/14)
		rs:wait()
		end
		rs:wait()
		wave:Destroy()
		z:Destroy()
	end)()
end
----------------------------------------------------
rarm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.RPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.RPunched = false
                                end
            end
        end
    end
end)
larm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                        Debounces.LPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.LPunched = false
                                end
            end
        end
    end
end)
----------------------------------------------------
mod4 = Instance.new("Model",char)

ptez = {0.7, 0.8, 0.9, 1}

function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end
                    end
                end
            end
        end
    return List
end

function Punch()
    part=Instance.new('Part',mod4)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,1.5,-2.4)*CFrame.Angles(math.rad(0),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Alder')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(8,8,8)
    part2=Instance.new('Part',mod4)
    part2.Anchored=true
    part2.CanCollide=false
    part2.FormFactor='Custom'
    part2.Size=Vector3.new(.7,.7,.7)
    part2.CFrame=root.CFrame*CFrame.new(0,1.5,-2.4)*CFrame.Angles(math.rad(90),0,0)
    part2.Transparency=.7
    part2.BrickColor=BrickColor.new('Alder')
    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=1323306'
    mesh2.Scale=Vector3.new(12,6,12)
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,4))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(2,6))
        end
    end
    coroutine.resume(coroutine.create(function()
        for i=0,0.62,0.4 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(0.4,0.4,0.4)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(0.4,0.2,0.4)
            end
        part.Parent=nil
        part2.Parent=nil
    end))
end
----------------------------------------------------
rarm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.RPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.RPunched = false
				end
            end
        end
    end
end)
larm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.LPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.LPunched = false
				end
            end
        end
    end
end)
----------------------------------------------------
local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera

local rad = math.rad

local keysDown = {}
local flySpeed = 0
local MAX_FLY_SPEED = 150

local canFly = false
local flyToggled = false

local forward, side = 0, 0
local lastForward, lastSide = 0, 0

local floatBP = Instance.new("BodyPosition")
floatBP.maxForce = Vector3.new(0, math.huge, 0)
local flyBV = Instance.new("BodyVelocity")
flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
local turnBG = Instance.new("BodyGyro")
turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

mouse.KeyDown:connect(function(key)
        keysDown[key] = true

        if key == "f" then
                flyToggled = not flyToggled

        if not flyToggled then
                stanceToggle = "Normal"
                floatBP.Parent = nil
                flyBV.Parent = nil
                turnBG.Parent = nil
                root.Velocity = Vector3.new()
                pchar.Humanoid.PlatformStand = false
        end
end

end)
mouse.KeyUp:connect(function(key)
        keysDown[key] = nil
end)

local function updateFly()

        if not flyToggled then return end

        lastForward = forward
        lastSide = side

        forward = 0
        side = 0

        if keysDown.w then
                forward = forward + 1
        end
        if keysDown.s then
                forward = forward - 1
        end
        if keysDown.a then
                side = side - 1
        end
        if keysDown.d then
                side = side + 1
        end

        canFly = (forward ~= 0 or side ~= 0)

        if canFly then
                stanceToggle = "Floating"
                turnBG.Parent = root
                floatBP.Parent = nil
                flyBV.Parent = root

                flySpeed = flySpeed + 1 + (flySpeed / MAX_FLY_SPEED)
                if flySpeed > MAX_FLY_SPEED then flySpeed = MAX_FLY_SPEED end
        else
                floatBP.position = root.Position
                floatBP.Parent = root

                flySpeed = flySpeed - 1
                if flySpeed < 0 then flySpeed = 0 end
        end

        local camCF = cam.CoordinateFrame
        local in_forward = canFly and forward or lastForward
        local in_side = canFly and side or lastSide

        flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side,
in_forward * 0.2, 0).p) - camCF.p) * flySpeed

        turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0,
0)
end

game:service'RunService'.RenderStepped:connect(function()
        if flyToggled then
                pchar.Humanoid.PlatformStand = true
        end
        updateFly()
end)
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 60
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 8
    end
end)
-------------------------------
local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
-------------------------------
game:GetService("RunService").RenderStepped:connect(function()
--[[if char.Humanoid.Jump == true then
jump = true
else
jump = false
end]]
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
sine = sine + change
if jumpn == true then
animpose = "Jumping"
elseif ffing == true then
animpose = "Freefalling"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
animpose = "Idle"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
animpose = "Walking"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
animpose = "Running"
end
if animpose ~= lastanimpose then
sine = 0
if Debounces.NoIdl == false then
if animpose == "Idle" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8)), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
end
elseif animpose == "Walking" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
end
elseif animpose == "Running" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(-14),math.rad(8+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(14),math.rad(-8-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-10),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20),0, math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(-7)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(7)), 0.4)
wait()
end
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8+2*math.cos(sine/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8-2*math.cos(sine/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(sine/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8+2*math.cos(sine/14))), 0.4)
elseif animpose == "Walking" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
elseif animpose == "Running" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.35,.4)*CFrame.Angles(math.rad(-30),math.rad(14),math.rad(-30+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.55,-.4)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(40-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(20),math.rad(10),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-40),math.rad(-10), math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.2) * CFrame.Angles(math.rad(-20), math.rad(10), math.rad(0)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(10), math.rad(0)), 0.4)
end
end
end)

hum.MaxHealth = 9001
wait(3)
hum.Health = 9001

function Lightning(Part0,Part1,Times,Offset,Color,Thickness,Trans) -- Lightning module
    --[[Part0 = Vector3 (Start pos)
		Part1 = Vector3 (End pos)
		Times = number (Amount of lightning parts)
		Offset = number (Offset)
		Color = color (brickcolor value)
		Thickness = number (thickness)
		Trans = number (transparency)
    ]]--
    local magz = (Part0 - Part1).magnitude
    local curpos = Part0
    local trz = {-Offset,Offset}
    for i=1,Times do
        local li = Instance.new("Part", torso)
		li.Name = "Lightning"
		li.TopSurface =0
		li.Material = "Neon"
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = Trans or 0.4
		li.BrickColor = BrickColor.new(Color)
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(Thickness,Thickness,magz/Times)
        local Offzet = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
        local trolpos = CFrame.new(curpos,Part1)*CFrame.new(0,0,magz/Times).p+Offzet
        if Times == i then
        local magz2 = (curpos - Part1).magnitude
        li.Size = Vector3.new(Thickness,Thickness,magz2)
        li.CFrame = CFrame.new(curpos,Part1)*CFrame.new(0,0,-magz2/2)
        else
        li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p
        game.Debris:AddItem(li,.1)
    end
end

BodyParts = {} -- Parts to emit lightning effects from
for _, v in pairs(char:GetChildren()) do
    if v:IsA("Part") then
        table.insert(BodyParts, v)
    end
end

Bounding = {} -- Calculate the bounding boxes
for _, v in pairs(BodyParts) do
	local temp = {X=nil, Y=nil, Z=nil}
	temp.X = v.Size.X/2 * 10
	temp.Y = v.Size.Y/2 * 10
	temp.Z = v.Size.Z/2 * 10
	Bounding[v.Name] = temp
	--table.insert(Bounding, v.Name, temp)
end

while wait(math.random(1,10)/10) do -- Emit the Lightning effects randomly
	local Body1 = BodyParts[math.random(#BodyParts)]
	local Body2 = BodyParts[math.random(#BodyParts)]
	local Pos1 = Vector3.new(
		math.random(-Bounding[Body1.Name].X, Bounding[Body1.Name].X)/10,
		math.random(-Bounding[Body1.Name].Y, Bounding[Body1.Name].Y)/10,
		math.random(-Bounding[Body1.Name].Z, Bounding[Body1.Name].Z)/10
)
	local Pos2 = Vector3.new(
		math.random(-Bounding[Body2.Name].X, Bounding[Body2.Name].X)/10,
		math.random(-Bounding[Body2.Name].Y, Bounding[Body2.Name].Y)/10,
		math.random(-Bounding[Body2.Name].Z, Bounding[Body2.Name].Z)/10
)
	local SPos1 = Body1.Position + Pos1
	local SPos2 = Body2.Position + Pos2
	Lightning(SPos1, SPos2, 4, 3, "Alder", .3, .56)
end

    Player=game:GetService('Players').LocalPlayer
    Character=Player.Character
    Mouse=Player:GetMouse()
    m=Instance.new('Model',Character)


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

local modelzorz3=Instance.new("Model") 
modelzorz3.Parent=Character 
modelzorz3.Name="Eye"

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,TorsoColor,"Handle",Vector3.new(1.20000005, 1.20000005, 1.20000005))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.22326851, -3.5562191, -0.038143158, 0, 0, 1, 0, 1, 0, -1, 0, 0))
mesh("SpecialMesh",handle,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1, 3, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 1.20000005, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.09672546e-005, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1.102, 0.950000048, 1.16999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 1.20000005, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.09672546e-005, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1.102, 3, 0.863999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(3.79999995, 4, 1.39999998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0999984741, 0, -0.100000381, 0, -1, 0, 0, 0, 1, -1, -0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(4.77400017, 4.96199989, 4.73800039))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,TorsoColor,"Part",Vector3.new(3.79999995, 4, 1.39999998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0999984741, 0, -0.100000381, 0, -1, 0, 0, 0, 1, -1, -0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(4.4920001, 4.70400047, 4.73800039))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.600000024, 2.5999999, 0.599999964))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100013733, -3.48671532, -1.09328079, 1, -2.52891718e-012, -6.81310423e-013, 2.53075664e-012, 0.866021812, 0.500005603, -6.74442273e-013, -0.500005603, 0.866021752))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.600000024, 2.5999999, 0.599999964))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100009918, -3.09970522, 1.40989685, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.600000024, 2.5999999, 0.599999964))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.100009918, -3.09970522, 1.39007568, -0.999999702, 0, 5.96046448e-008, 0, 1, 0, -5.96046448e-008, 0, -0.999999702))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.600000024, 2.5999999, 0.599999964))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100013733, -3.61302567, 0.360752106, 1, -3.69486299e-012, 1.70532143e-012, 3.81851625e-012, 0.707111537, -0.707102001, 1.40679254e-012, 0.70710206, 0.707111537))
local moosick = it("Sound",Character)
moosick.SoundId = "rbxassetid://142653441"
 --142653441, 175067863
moosick.Looped = true
moosick.Pitch = 1
moosick.Volume = 0
moosick:Play()

anim = Character:findFirstChild("Animate")
if anim then
anim:Destroy()
end

local particleemitter = Instance.new("ParticleEmitter", Handle)
particleemitter.VelocitySpread = 180
particleemitter.Lifetime = NumberRange.new(0.1)
particleemitter.Speed = NumberRange.new(2)
particleemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 5.563)})
particleemitter.RotSpeed = NumberRange.new(-45, 45)
particleemitter.Rate = 100
particleemitter.Rotation = NumberRange.new(-45, 45)
particleemitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.701, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter.LightEmission = 0
particleemitter.Color = ColorSequence.new(Color3.new(0, 0, 0), Color3.new(0, 0, 0))

local particleemitter = Instance.new("ParticleEmitter", Handle2)
particleemitter.VelocitySpread = 180
particleemitter.Lifetime = NumberRange.new(0.1)
particleemitter.Speed = NumberRange.new(2)
particleemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 5.563)})
particleemitter.RotSpeed = NumberRange.new(-45, 45)
particleemitter.Rate = 100
particleemitter.Rotation = NumberRange.new(-45, 45)
particleemitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.701, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter.LightEmission = 0
particleemitter.Color = ColorSequence.new(Color3.new(0, 0, 0), Color3.new(0, 0, 0))

local particleemitter = Instance.new("ParticleEmitter", handle)
particleemitter.VelocitySpread = 180
particleemitter.Lifetime = NumberRange.new(0.1)
particleemitter.Speed = NumberRange.new(2)
particleemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 7.563)})
particleemitter.RotSpeed = NumberRange.new(-45, 45)
particleemitter.Rate = 100
particleemitter.Rotation = NumberRange.new(-45, 45)
particleemitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.701, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter.LightEmission = 0.8
particleemitter.Color = ColorSequence.new(Color3.new(0, 0, 0), Color3.new(0, 0, 0))

local light = Instance.new("PointLight", Character.Torso)
light.Color = Color3.new(255,255,255)
light.Brightness = 5
light.Range = 15

particleemitter.Enabled = true

local Footsteps = it("Sound",Character.Torso)
Footsteps.SoundId = "rbxassetid://177510410"
Footsteps.Looped = true
Footsteps.Pitch = 0.8
Footsteps.Volume = 0.3

local Footsteps2 = it("Sound",Character.Torso)
Footsteps2.SoundId = "rbxassetid://177510410"
Footsteps2.Looped = true
Footsteps2.Pitch = 1
Footsteps2.Volume = 0.4

local cam = game.Workspace.CurrentCamera

--cam.CameraSubject = Character

for i,v in pairs(Head:children()) do
    if v:IsA("Sound") then
        v:Destroy()
    end
end

local player = game.Players.LocalPlayer
local char = player.Character
for u,c in pairs(player.Character:GetChildren()) do
  if c.className == "Hat" and c.Name ~= "Swordpack" and c.Name ~= "GlassesBlackFrame" then
    c.Handle.BrickColor = BrickColor.new("Really black")
    c.Handle.Mesh.TextureId = "http://www.roblox.com/asset/?id=0"
  end
end
local setupPart = function(part)
  
  part.Anchored = true
  part.FormFactor = "Custom"
  part.CanCollide = false
  part.BrickColor = BrickColor.new("Gold")
  part.Material = "Neon"
  part.TopSurface = "SmoothNoOutlines"
  part.BottomSurface = "SmoothNoOutlines"
  part.FrontSurface = "SmoothNoOutlines"
  part.BackSurface = "SmoothNoOutlines"
  part.LeftSurface = "SmoothNoOutlines"
  part.RightSurface = "SmoothNoOutlines"
end
--~joshcoolsam
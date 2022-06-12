--[[Delphox Fire Brench edited by grgrgry21.
-- Roblox.LUA | Delphox Fire Brench | Made by Cass.

             A
          A     A
         A   C   A
          A     A
             A
--]]
wait(.2)
local plr = game.Players.LocalPlayer
local chr = plr.Character
chr.Humanoid.MaxHealth = math.huge
wait(.1)
chr.Humanoid.Health = math.huge
chr.Humanoid.JumpPower = 120
local maus = plr:GetMouse()
local PGui=plr.PlayerGui
local lleg = chr["Left Leg"]
local rleg = chr["Right Leg"]
local larm = chr["Left Arm"]
local rarm = chr["Right Arm"]
local hed = chr.Head
local rutprt = chr.HumanoidRootPart
local torso = chr.Torso
local otheranims=false
local armmovement=false
local fireclrs={'Bright red','Bright yellow','Bright orange'}
local holding=false
local flying=false
local jumpdb=false
local spinni = 0
local play = true
local dedly = false
local ffwhileintro = true
local change = 1
local sine = 0
	local Anim = "Idle"
local angles = CFrame.Angles
local lalalclrs={Color3.new(1,.3,0),Color3.new(1,.3,0),Color3.new(1,.3,0),Color3.new(1,.3,0),Color3.new(1,0,0),BrickColor.new('Neon orange').Color}
local hooh=Instance.new("Model", chr)
hooh.Name = "haha yes"
	clerp = function(a, b, t)
	
	return a:lerp(b, t)
	end
		local newMotor = function(part0, part1, c0, c1)
	
	local w = Instance.new("Motor", part0)
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0
	w.C1 = c1
	return w
end

vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
ranclrs={'Bright red','Bright orange','Bright yellow','Neon orange','Br.yellowish orange'}
rangclr=ranclrs[1]

if chr:findFirstChild('Animate') then
chr.Animate:Destroy()
end


function RC(Pos, Dir, Max, Ignore)
    return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999)), Ignore)
end
	rayCast = function(Position, Direction, Range, Ignore)
	
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RemoveOutlines = function(CreatePart)
  CreatePart.TopSurface = 10
end

function CreateSound(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		wait() 
		sou:play() 
		game:GetService("Debris"):AddItem(sou, 6)
	end))
end
 swait = function(num)
  if num == 0 or num == nil then
    game:service("RunService").Heartbeat:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Heartbeat:wait(0)
    end
  end
end

Damage = function(hit, damage, cooldown, Color1, Color2, HSound, HPitch)
  for i,v in pairs(hit:GetChildren()) do
    if v:IsA("Humanoid") and hit.Name ~= chr.Name then
      local find = v:FindFirstChild("Hitz")
      if not find then
        if v.Parent:findFirstChild("Head") then
          local BillG = Create("BillboardGui")({Parent = v.Parent.Head, Size = UDim2.new(1, 0, 1, 0), Adornee = v.Parent.Head, StudsOffset = Vector3.new(math.random(-3, 3), math.random(3, 5), math.random(-3, 3))})
          do
            local TL = Create("TextLabel")({Parent = BillG, Size = UDim2.new(3, 3, 3, 3), BackgroundTransparency = 1, Text = "", TextColor3 = Color1.Color, TextStrokeColor3 = Color2.Color, TextStrokeTransparency = 1, TextXAlignment = Enum.TextXAlignment.Center, TextYAlignment = Enum.TextYAlignment.Center, FontSize = Enum.FontSize.Size42, Font = "ArialBold"})
            coroutine.resume(coroutine.create(function()
    swait(2)
    --for i = 0, 1, 0.1 do
        while wait() and TL and TL.TextTransparency <= 1 do
      swait()
      BillG.StudsOffset = BillG.StudsOffset + Vector3.new(0, 0.1, 0)
      TL.TextTransparency = TL.TextTransparency + 0.04
      TL.TextStrokeTransparency = TL.TextStrokeTransparency + 0.04
    end
    BillG:Destroy()
  end))
          end
        end
        do
          HitHealth = v.Health
          v.Health = v.Health - damage
         --[[ if HitHealth ~= v.Health and HitHealth ~= 0 and v.Health <= 0 and v.Parent.Name ~= "Lost Soul" then
            print("gained spree")
            plr:FindFirstChild("leaderstats").Spree.Value = plr.leaderstats.Spree.Value + 1
          end]]
          do
            local bool = Create("BoolValue")({Parent = v, Name = "Hitz"})
            if HSound ~= nil and HPitch ~= nil then
              CreateSound(HSound, hit, 1, HPitch)
            end
            game:GetService("Debris"):AddItem(bool, cooldown)
          end
        end
      end
    end
  end
end
MagnitudeDamage = function(Part, magni, mindam, maxdam)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= plr.Name then
          Damage(head.Parent, math.random(mindam, maxdam), 0.5, BrickColor.new("Bright orange"), BrickColor.new("Bright yellow"), "", 1)
        end
      end
    end
  end
end
UltraMagnitudeDamage = function(Part, magni, mindam, maxdam) -- kek
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= plr.Name then
          Damage(head.Parent, math.random(mindam, maxdam), 0.5, BrickColor.new("Bright orange"), BrickColor.new("Bright yellow"), "", 1)
          head.Size = Vector3.new(1.995, 1.995, 0.995)
        end
      end
    end
  end
end

--[[function UltExplodeFast(rad,par)
	local expart = Instance.new("Part",script.Parent)
	local expart2 = Instance.new("Part",script.Parent)
	local partMesh = Instance.new("SpecialMesh",expart)
	partMesh.MeshType = "Sphere"
	local partMesh2 = Instance.new("SpecialMesh",expart2)
	partMesh2.MeshType = "Sphere"
	local expld = Instance.new("Explosion", script.Parent)
local plode = Instance.new("Sound",expart)
  plode.SoundId = "rbxassetid://153274423"
  plode.Volume = 2.5*2
  plode.Pitch = 1/1.075
  plode.Looped = false
  plode:Play()
local ploder = Instance.new("Sound",expart)
  ploder.SoundId = "rbxassetid://130972023"
  ploder.Volume = 2.5*2
  ploder.Pitch = 1/1.075
  ploder.Looped = false
  ploder:Play()
	expld.BlastRadius = rad
	expld.Position = par.Position
	partMesh.Scale = vt(rad,rad,rad)
	expart.Size = vt(1,1,1)*1.5
	expart.Transparency = 0
	expart.Anchored = true
	expart.Material = "Neon"
	expart.BrickColor = bc("Really black")
	expart.CFrame = par.CFrame
	partMesh2.Scale = vt(rad,rad,rad)
	expart2.Size = vt(1.15,1.15,1.15)*1.5
	expart2.Transparency = 0.5
	expart2.Anchored = true
	expart2.Material = "Neon"
	expart2.BrickColor = bc("Royal purple")
	expart2.CFrame = par.CFrame
        local value = 1*rad/6.5
par:Destroy()
	for i = 0, 100 do
                partMesh.Scale = partMesh.Scale + vt(value,value,value)
		expart.CFrame = expart.CFrame
                partMesh2.Scale = partMesh2.Scale + vt(value,value,value)
		expart2.CFrame = expart.CFrame
                value = value - 0.035*rad/6.5
                if value < 1 then
                value = 0.25
		expart.Transparency = expart.Transparency + 0.025
		expart2.Transparency = expart2.Transparency + 0.025
                end
		wait()
	end
  plode.Parent = nil
  ploder.Parent = nil
	expart.Parent = nil
	expart2.Parent = nil
	expld.Parent = nil
end

function UltExplode(rad,par)
	local expart = Instance.new("Part",script.Parent)
	local expart2 = Instance.new("Part",script.Parent)
	local partMesh = Instance.new("SpecialMesh",expart)
	partMesh.MeshType = "Sphere"
	local partMesh2 = Instance.new("SpecialMesh",expart2)
	partMesh2.MeshType = "Sphere"
	local expld = Instance.new("Explosion", script.Parent)
local plode = Instance.new("Sound",expart)
  plode.SoundId = "rbxassetid://288641686"
  plode.Volume = 2.5*2
  plode.Pitch = 0.75/1.075
  plode.Looped = false
  plode:Play()
local ploder = Instance.new("Sound",expart)
  ploder.SoundId = "rbxassetid://206049428"
  ploder.Volume = 3.25*2
  ploder.Pitch = 0.5/1.075
  ploder.Looped = false
  ploder:Play()
	expld.BlastRadius = rad
	expld.Position = par.Position
	partMesh.Scale = vt(rad,rad,rad)
	expart.Size = vt(1,1,1)*1.5
	expart.Transparency = 0
	expart.Anchored = true
	expart.Material = "Neon"
	expart.BrickColor = bc("Really black")
	expart.CFrame = par.CFrame
	partMesh2.Scale = vt(rad,rad,rad)
	expart2.Size = vt(1.15,1.15,1.15)*1.5
	expart2.Transparency = 0.5
	expart2.Anchored = true
	expart2.Material = "Neon"
	expart2.BrickColor = bc("Royal purple")
	expart2.CFrame = par.CFrame
        local value = 1*rad/6.5
par:Destroy()
	for i = 0, 100 do
                partMesh.Scale = partMesh.Scale + vt(value,value,value)
		expart.CFrame = expart.CFrame
                partMesh2.Scale = partMesh2.Scale + vt(value,value,value)
		expart2.CFrame = expart.CFrame
                value = value - 0.035*rad/6.5
                if value < 1 then
                value = 0.25
		expart.Transparency = expart.Transparency + 0.025
		expart2.Transparency = expart2.Transparency + 0.025
                end
		wait()
	end
  plode.Parent = nil
  ploder.Parent = nil
	expart.Parent = nil
	expart2.Parent = nil
	expld.Parent = nil
end
]]
function UltExplodeMass(rad,par)
	local expart = Instance.new("Part",script.Parent)
	local expart2 = Instance.new("Part",script.Parent)
		local expart3 = Instance.new("Part",script.Parent)
		local expart4 = Instance.new("Part",script.Parent)
	local partMesh = Instance.new("SpecialMesh",expart)
	partMesh.MeshType = "Sphere"
	local partMesh2 = Instance.new("SpecialMesh",expart2)
	partMesh2.MeshType = "Sphere"
		local partMesh3 = Instance.new("SpecialMesh",expart3)
	partMesh3.MeshType = "Sphere"
		local partMesh4 = Instance.new("SpecialMesh",expart4)
	partMesh4.MeshType = "Sphere"
	local expld = Instance.new("Explosion", script.Parent)
local plode = Instance.new("Sound",workspace)
  plode.SoundId = "rbxassetid://579687077"
  plode.Volume = 1*2
  plode.Pitch = 0.75/1.075
  plode.Looped = false
  plode:Play()
local plodez = Instance.new("Sound",workspace)
  plodez.SoundId = "rbxassetid://288641686"
  plodez.Volume = 1*2
  plodez.Pitch = 0.625/1.075
  plodez.Looped = false
  plodez:Play()
local plodeza = Instance.new("Sound",workspace)
  plodeza.SoundId = "rbxassetid://197161452"
  plodeza.Volume = 0.85*2
  plodeza.Pitch = 0.5/1.075
  plodeza.Looped = false
  plodeza:Play()
local plodezar = Instance.new("Sound",workspace)
  plodezar.SoundId = "rbxassetid://197161452"
  plodezar.Volume = 0.85*2
  plodezar.Pitch = 0.2/1.075
  plodezar.Looped = false
  plodezar:Play()
  local s3 = Instance.new("Sound",workspace)
  s3.SoundId = "rbxassetid://268931189"
  s3.Pitch = 0.875/1.05
  s3.Volume = 1*2
  s3.Looped = false
  s3:Play()

	expld.Position = par.Position
	expld.DestroyJointRadiusPercent = 500000000
	  expld.BlastPressure = 500000000
  expld.BlastRadius = 10000000000
  expld.ExplosionType = "CratersAndDebris"
	
	partMesh.Scale = vt(rad,rad,rad)
	expart.Size = vt(.6,.6,.6)*1.5
	expart.Transparency = 0
	expart.Anchored = true
	expart.CanCollide=false
	expart.Material = "Neon"
	expart.BrickColor = bc("Bright orange")
	expart.CFrame = par.CFrame
	partMesh2.Scale = vt(rad,rad,rad)
	expart2.Size = vt(.65,.65,.65)*1.5
	expart2.Transparency = 0.5
	expart2.Anchored = true
	expart2.Material = "Neon"
	expart2.CanCollide=false
	expart2.BrickColor = bc("Bright red")
	expart2.CFrame = par.CFrame
	partMesh3.Scale = vt(rad,rad,rad)
	expart3.Size = vt(.25,9,.25)*1.5
	expart3.Transparency = 0.5
	expart3.Anchored = true
	expart3.CanCollide=false
	expart3.Material = "Neon"
	expart3.BrickColor = bc("Bright red")
	expart3.CFrame = par.CFrame
partMesh4.Scale = vt(rad,rad,rad)
	expart4.Size = vt(.15,8,.15)*1.5
	expart4.Transparency = 0.5
	expart4.Anchored = true
	expart4.CanCollide=false
	expart4.Material = "Neon"
	expart4.BrickColor = bc("Bright orange")
	expart4.CFrame = par.CFrame
	wait(.0167)
	UltraMagnitudeDamage(expart, 3000, 99999999, 999999999)
        local value = 1*rad/10

        par:Destroy()
	for i = 0, 300 do
                partMesh.Scale = partMesh.Scale + vt(value,value,value)
		expart.CFrame = expart.CFrame
                partMesh2.Scale = partMesh2.Scale + vt(value,value,value)
		expart2.CFrame = expart.CFrame
		partMesh3.Scale = partMesh3.Scale + vt(value,value,value)
		expart3.CFrame = expart.CFrame
		partMesh4.Scale = partMesh4.Scale + vt(value,value,value)
		expart4.CFrame = expart.CFrame
                value = value - 0.0175*rad/10
                if value <= 0 then
		expart.Transparency = expart.Transparency + 0.0125
		expart2.Transparency = expart2.Transparency + 0.0125
		
				expart3.Transparency = expart3.Transparency + 0.0125
		expart4.Transparency = expart4.Transparency + 0.0125
                value = 0.25
                end
		wait()
	end
	
  plode.Parent = nil
  plodez.Parent = nil
  plodeza.Parent = nil
  plodezar.Parent = nil
  s3.Parent = nil
	expart.Parent = nil
	expart2.Parent = nil
		expart3.Parent = nil
			expart4.Parent = nil
	expld.Parent = nil
end

--[[function ExplodeFast(rad,par)
	local expart = Instance.new("Part",script.Parent)
	local expart2 = Instance.new("Part",script.Parent)
	local partMesh = Instance.new("SpecialMesh",expart)
	partMesh.MeshType = "Sphere"
	local partMesh2 = Instance.new("SpecialMesh",expart2)
	partMesh2.MeshType = "Sphere"
	local expld = Instance.new("Explosion", script.Parent)
local plode = Instance.new("Sound",expart)
  plode.SoundId = "rbxassetid://153274423"
  plode.Volume = 2.5
  plode.Pitch = 1
  plode.Looped = false
  plode:Play()
local ploder = Instance.new("Sound",expart)
  ploder.SoundId = "rbxassetid://130972023"
  ploder.Volume = 2.5
  ploder.Pitch = 1
  ploder.Looped = false
  ploder:Play()
	expld.BlastRadius = rad
	expld.Position = par.Position
	partMesh.Scale = vt(rad,rad,rad)
	expart.Size = vt(1,1,1)*1.5
	expart.Transparency = 0
	expart.Anchored = true
	expart.Material = "Neon"
	expart.BrickColor = bc("Bright yellow")
	expart.CFrame = par.CFrame
	partMesh2.Scale = vt(rad,rad,rad)
	expart2.Size = vt(1.15,1.15,1.15)*1.5
	expart2.Transparency = 0.5
	expart2.Anchored = true
	expart2.Material = "Neon"
	expart2.BrickColor = bc("Bright orange")
	expart2.CFrame = par.CFrame
        local value = 1*rad/6.5
par:Destroy()
	for i = 0, 100 do
                partMesh.Scale = partMesh.Scale + vt(value,value,value)
		expart.CFrame = expart.CFrame
                partMesh2.Scale = partMesh2.Scale + vt(value,value,value)
		expart2.CFrame = expart.CFrame
                value = value - 0.035*rad/6.5
                if value < 1 then
                value = 0.25
		expart.Transparency = expart.Transparency + 0.025
		expart2.Transparency = expart2.Transparency + 0.025
                end
		wait()
	end
  plode.Parent = nil
  ploder.Parent = nil
	expart.Parent = nil
	expart2.Parent = nil
	expld.Parent = nil
end]]

function Explode2(rad,par)
	local expart = Instance.new("Part",script.Parent)
	local expart2 = Instance.new("Part",script.Parent)
	local partMesh = Instance.new("SpecialMesh",expart)
	partMesh.MeshType = "Sphere"
	local partMesh2 = Instance.new("SpecialMesh",expart2)
	partMesh2.MeshType = "Sphere"
	--local expld = Instance.new("Explosion", script.Parent) y explosion tho

CreateSound("http://roblox.com/asset/?id=579687077", expart, 2, 1.1)

CreateSound("http://roblox.com/asset/?id=206049428", expart, 3, 0.8)
	partMesh.Scale = vt(rad,rad,rad)
	expart.Size = vt(.3,.3,.3)*1.5
	expart.Transparency = 0
	expart.Anchored = true
	expart.Material = "Neon"
	expart.BrickColor = bc("Bright orange")
	expart.CFrame = par.CFrame
	partMesh2.Scale = vt(rad,rad,rad)
	expart2.Size = vt(0.4,0.4,0.4)*1.5
	expart2.Transparency = 0.5
	expart2.Anchored = true
	expart2.Material = "Neon"
	expart2.BrickColor = bc("Bright red")
	expart2.CFrame = par.CFrame
        local value = 1*rad/6.5
MagnitudeDamage(expart, 15, 8, 15)
par:Destroy()
	for i = 0, 100 do
                partMesh.Scale = partMesh.Scale + vt(value,value,value)
		expart.CFrame = expart.CFrame
                partMesh2.Scale = partMesh2.Scale + vt(value,value,value)
		expart2.CFrame = expart.CFrame
                value = value - 0.035*rad/6.5
                if value < 1 then
                value = 0.25
		expart.Transparency = expart.Transparency + 0.025
		expart2.Transparency = expart2.Transparency + 0.025
                end
		wait()
	end
  --plode.Parent = nil
  --ploder.Parent = nil
	expart.Parent = nil
	expart2.Parent = nil
	--expld.Parent = nil
end
function Explode(rad,par)
	local expart = Instance.new("Part",script.Parent)
	local expart2 = Instance.new("Part",script.Parent)
	local partMesh = Instance.new("SpecialMesh",expart)
	partMesh.MeshType = "Sphere"
	local partMesh2 = Instance.new("SpecialMesh",expart2)
	partMesh2.MeshType = "Sphere"
	--local expld = Instance.new("Explosion", script.Parent) y explosion tho

CreateSound("http://roblox.com/asset/?id=579687077", expart, 2.5, 0.75)

CreateSound("http://roblox.com/asset/?id=206049428", expart, 3.25, 0.5)
	partMesh.Scale = vt(rad,rad,rad)
	expart.Size = vt(1,1,1)*1.5
	expart.Transparency = 0
	expart.Anchored = true
	expart.Material = "Neon"
	expart.BrickColor = bc("Bright orange")
	expart.CFrame = par.CFrame
	partMesh2.Scale = vt(rad,rad,rad)
	expart2.Size = vt(1.15,1.15,1.15)*1.5
	expart2.Transparency = 0.5
	expart2.Anchored = true
	expart2.Material = "Neon"
	expart2.BrickColor = bc("Bright red")
	expart2.CFrame = par.CFrame
        local value = 1*rad/6.5
MagnitudeDamage(expart, 50, 15, 35)
par:Destroy()
	for i = 0, 100 do
                partMesh.Scale = partMesh.Scale + vt(value,value,value)
		expart.CFrame = expart.CFrame
                partMesh2.Scale = partMesh2.Scale + vt(value,value,value)
		expart2.CFrame = expart.CFrame
                value = value - 0.035*rad/6.5
                if value < 1 then
                value = 0.25
		expart.Transparency = expart.Transparency + 0.025
		expart2.Transparency = expart2.Transparency + 0.025
                end
		wait()
	end
  --plode.Parent = nil
  --ploder.Parent = nil
	expart.Parent = nil
	expart2.Parent = nil
	--expld.Parent = nil
end
--[[function ExplodeMass(rad,par)
	local expart = Instance.new("Part",script.Parent)
	local expart2 = Instance.new("Part",script.Parent)
	local partMesh = Instance.new("SpecialMesh",expart)
	partMesh.MeshType = "Sphere"
	local partMesh2 = Instance.new("SpecialMesh",expart2)
	partMesh2.MeshType = "Sphere"
	local expld = Instance.new("Explosion", script.Parent)
local plode = Instance.new("Sound",workspace)
  plode.SoundId = "rbxassetid://579687077"
  plode.Volume = 1
  plode.Pitch = 0.75
  plode.Looped = false
  plode:Play()
local plodez = Instance.new("Sound",workspace)
  plodez.SoundId = "rbxassetid://288641686"
  plodez.Volume = 1
  plodez.Pitch = 0.625
  plodez.Looped = false
  plodez:Play()
local plodeza = Instance.new("Sound",workspace)
  plodeza.SoundId = "rbxassetid://197161452"
  plodeza.Volume = 0.85
  plodeza.Pitch = 0.5
  plodeza.Looped = false
  plodeza:Play()
local plodezar = Instance.new("Sound",workspace)
  plodezar.SoundId = "rbxassetid://197161452"
  plodezar.Volume = 0.85
  plodezar.Pitch = 0.2
  plodezar.Looped = false
  plodezar:Play()
  local s3 = Instance.new("Sound",workspace)
  s3.SoundId = "rbxassetid://268931189"
  s3.Pitch = 0.875
  s3.Volume = 1
  s3.Looped = false
  s3:Play()
	expld.BlastRadius = rad
	expld.Position = par.Position
	partMesh.Scale = vt(rad,rad,rad)
	expart.Size = vt(1,1,1)*1.5
	expart.Transparency = 0
	expart.Anchored = true
	expart.Material = "Neon"
	expart.BrickColor = bc("Really black")
	expart.CFrame = par.CFrame
	partMesh2.Scale = vt(rad,rad,rad)
	expart2.Size = vt(1.15,1.15,1.15)*1.5
	expart2.Transparency = 0.5
	expart2.Anchored = true
	expart2.Material = "Neon"
	expart2.BrickColor = bc("Bright violet")
	expart2.CFrame = par.CFrame
        local value = 1*rad/10
        par:Destroy()
	for i = 0, 300 do
                partMesh.Scale = partMesh.Scale + vt(value,value,value)
		expart.CFrame = expart.CFrame
                partMesh2.Scale = partMesh2.Scale + vt(value,value,value)
		expart2.CFrame = expart.CFrame
                value = value - 0.0175*rad/10
                if value <= 0 then
		expart.Transparency = expart.Transparency + 0.0125
		expart2.Transparency = expart2.Transparency + 0.0125
                value = 0.25
                end
		wait()
	end
  plode.Parent = nil
	expart.Parent = nil
	expart2.Parent = nil
	expld.Parent = nil
end]]

--

function Lerp(a, b, i)
local com1 = {a.X, a.Y, a.Z, a:toEulerAnglesXYZ()}
local com2 = {b.X, b.Y, b.Z, b:toEulerAnglesXYZ()}
local calx = com1[1] + (com2[1] - com1[1]) * i
local caly = com1[2] + (com2[2] - com1[2]) * i
local calz = com1[3] + (com2[3] - com1[3]) * i
local cala = com1[4] + (com2[4] - com1[4]) * i
local calb = com1[5] + (com2[5] - com1[5]) * i
local calc = com1[6] + (com2[6] - com1[6]) * i
return CFrame.new(calx, caly, calz) * CFrame.Angles(cala, calb, calc)
end

function TwnSingleNumber(s,f,m)
local wot=s+(f-s)*m
return wot
end

function TwnPartSize(q,w,e)
local begin={q.x,q.y,q.z}
local ending={w.x,w.y,w.z}
local bgx=begin[1]+(ending[1]-begin[1])*e
local bgy=begin[2]+(ending[2]-begin[2])*e
local bgz=begin[3]+(ending[3]-begin[3])*e
return Vector3.new(bgx,bgy,bgz)
end

newWeld = function(wld, wp0, wp1, wc0x, wc0y, wc0z)
wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end

newWeld(law, torso, larm, -1.5, 0.5, 0)
newWeld(raw, torso, rarm, 1.5, 0.5, 0)
newWeld(llw, torso, lleg, -.5, -2, 0)
newWeld(rlw, torso, rleg, .5, -2, 0)
newWeld(hw, torso, hed, 0, 1.5, 0)
local rutwald=Instance.new('Weld',rutprt)
rutwald.Part0=rutprt
rutwald.Part1=torso
rutwald.Name="RootJoint"
rutprt.RootJoint.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
rleg.Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0)
lleg.Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0)

local anim = "Idling"
local lastanim = "Idling"
local val = 0
local syne = 0
local num = 0
local runtime = 0

----------------------------------------------------------------------------

--http://www.roblox.com/asset/?id=269748808  neon ;0


local tail=Instance.new('Model',chr)
tail.Name='Tail'
local obj1=Instance.new('Part',tail)
obj1.formFactor='Custom'
obj1.Size=Vector3.new(1.25,1,1.25)
obj1.BrickColor=BrickColor.new('Cool yellow')
obj1.Anchored=false
obj1.CanCollide=false
obj1.TopSurface=10
obj1.BottomSurface=10
obj1.LeftSurface=10
obj1.RightSurface=10
obj1.FrontSurface=10
obj1.BackSurface=10
obj1:breakJoints()
obj1.Locked=true
obj1.Material='SmoothPlastic'
local obj1m=Instance.new('SpecialMesh',obj1)
obj1m.MeshId="http://www.roblox.com/asset/?id=1033714"
obj1m.Scale=Vector3.new(1.25,2,1.25)
obj1w=Instance.new('Weld',obj1)
obj1w.Part0=torso
obj1w.Part1=obj1
obj1w.C0=CFrame.new(0,-.9,.65)*CFrame.Angles(math.rad(-97.5),0,0)

local partasdeffb = Instance.new("ParticleEmitter",torso)
partasdeffb.Color = ColorSequence.new(Color3.new(1, .5, 0), Color3.new(1, .2, 0))
partasdeffb.LightEmission = 1
partasdeffb.Size = NumberSequence.new(0.2)
partasdeffb.Texture = "http://www.roblox.com/asset/?ID=68137067"
aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 8)})
bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
partasdeffb.Transparency = bbb
partasdeffb.Size = aaa
partasdeffb.ZOffset = .9
partasdeffb.Acceleration = Vector3.new(0, 0, 0)
partasdeffb.LockedToPart = true
partasdeffb.EmissionDirection = "Top"
partasdeffb.Lifetime = NumberRange.new(1)
partasdeffb.Rate = 200
partasdeffb.Rotation = NumberRange.new(-100, 100)
partasdeffb.RotSpeed = NumberRange.new(-100, 100)
partasdeffb.Speed = NumberRange.new(5)
partasdeffb.VelocitySpread = 1000
partasdeffb.Enabled=false


local partasdeff = Instance.new("ParticleEmitter",torso)
partasdeff.Color = ColorSequence.new(Color3.new(1, .5, 0), Color3.new(1, .2, 0))
partasdeff.LightEmission = 1
partasdeff.Size = NumberSequence.new(0.2)
partasdeff.Texture = "http://www.roblox.com/asset/?ID=68137067"
aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 12)})
bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
partasdeff.Transparency = bbb
partasdeff.Size = aaa
partasdeff.ZOffset = .9
partasdeff.Acceleration = Vector3.new(0, 0, 0)
partasdeff.LockedToPart = false
partasdeff.EmissionDirection = "Top"
partasdeff.Lifetime = NumberRange.new(1)
partasdeff.Rate = 200
partasdeff.Rotation = NumberRange.new(-100, 100)
partasdeff.RotSpeed = NumberRange.new(-100, 100)
partasdeff.Speed = NumberRange.new(5)
partasdeff.VelocitySpread = 1000
partasdeff.Enabled=false

local introo = Instance.new("ParticleEmitter",torso)
introo.Color = ColorSequence.new(Color3.new(1, .5, 0), Color3.new(1, .2, 0))
introo.LightEmission = 1
introo.Size = NumberSequence.new(0.2)
introo.Texture = "http://www.roblox.com/asset/?id=99210382"
aas = NumberSequence.new({NumberSequenceKeypoint.new(0, 5.22),NumberSequenceKeypoint.new(1, 0)})
asd = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
introo.Transparency = asd
introo.Size = aas
introo.ZOffset = 1
introo.Acceleration = Vector3.new(0, 0, 0)
introo.LockedToPart = true
introo.EmissionDirection = "Top"
introo.Lifetime = NumberRange.new(0.8)
introo.Rate = 500
introo.Rotation = NumberRange.new(-100, 100)
introo.RotSpeed = NumberRange.new(-100, 100)
introo.Speed = NumberRange.new(10)
introo.VelocitySpread = 1000
introo.Enabled=true
--
local int1 = Instance.new("ParticleEmitter",torso)
int1.Color = ColorSequence.new(Color3.new(1, .5, 0), Color3.new(1, .2, 0))
int1.LightEmission = 1
int1.Size = NumberSequence.new(0.2)
int1.Texture = "http://www.roblox.com/asset/?id=99210382"
ff = NumberSequence.new({NumberSequenceKeypoint.new(0, 5.22),NumberSequenceKeypoint.new(1, 0)})
fff = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
int1.Transparency = fff
int1.Size = ff
int1.ZOffset = 1
int1.Acceleration = Vector3.new(0, 0, 0)
int1.LockedToPart = true
int1.EmissionDirection = "Top"
int1.Lifetime = NumberRange.new(1)
int1.Rate = 3000
int1.Rotation = NumberRange.new(-100, 100)
int1.RotSpeed = NumberRange.new(-100, 100)
int1.Speed = NumberRange.new(100)
int1.VelocitySpread = 1000
int1.Enabled=false
local int2 = Instance.new("ParticleEmitter",torso)
int2.Color = ColorSequence.new(Color3.new(1, .5, 0), Color3.new(1, .2, 0))
int2.LightEmission = 1
int2.Size = NumberSequence.new(0.2)
int2.Texture = "http://www.roblox.com/asset/?id=99210382"
aaaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 5.22),NumberSequenceKeypoint.new(1, 0)})
bbbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
int2.Transparency = bbbb
int2.Size = aaaa
int2.ZOffset = 1
int2.Acceleration = Vector3.new(0, 0, 0)
int2.LockedToPart = true
int2.EmissionDirection = "Top"
int2.Lifetime = NumberRange.new(1)
int2.Rate = 3000
int2.Rotation = NumberRange.new(-100, 100)
int2.RotSpeed = NumberRange.new(-100, 100)
int2.Speed = NumberRange.new(100)
int2.VelocitySpread = 1000
int2.Enabled=false
local int3 = Instance.new("ParticleEmitter",torso)
int3.Color = ColorSequence.new(Color3.new(1, .5, 0), Color3.new(1, .2, 0))
int3.LightEmission = 1
int3.Size = NumberSequence.new(0.2)
int3.Texture = "http://www.roblox.com/asset/?id=99210382"
aaaaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 5.22),NumberSequenceKeypoint.new(1, 0)})
bbbbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
int3.Transparency = bbbbb
int3.Size = aaaaa
int3.ZOffset = 1
int3.Acceleration = Vector3.new(0, 0, 0)
int3.LockedToPart = true
int3.EmissionDirection = "Top"
int3.Lifetime = NumberRange.new(1)
int3.Rate = 3000
int3.Rotation = NumberRange.new(-100, 100)
int3.RotSpeed = NumberRange.new(-100, 100)
int3.Speed = NumberRange.new(100)
int3.VelocitySpread = 1000
int3.Enabled=false
--
local objd=Instance.new('Part',tail)
objd.formFactor='Custom'
objd.Size=Vector3.new(.2,.2,.2)
objd.BrickColor=BrickColor.new('Cool yellow')
objd.Anchored=false
objd.CanCollide=false
objd.Transparency=1
objd:breakJoints()
objd.Locked=true
objd.Name="aaa"
local parti = Instance.new("ParticleEmitter",objd)
parti.Color = ColorSequence.new(Color3.new(1, .7, 0), Color3.new(1, .6, 0))
parti.LightEmission = 1
parti.Size = NumberSequence.new(0.2)
parti.Texture = "http://www.roblox.com/asset/?ID=68137067"
sizeseq = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 10)})
transseq = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
parti.Transparency = transseq
parti.Size = sizeseq
parti.ZOffset = 1
parti.Acceleration = Vector3.new(0, 0, 0)
parti.LockedToPart = true
parti.EmissionDirection = "Top"
parti.Lifetime = NumberRange.new(1)
parti.Rate = 2
parti.Rotation = NumberRange.new(-50, 50)
parti.RotSpeed = NumberRange.new(-50, 50)
parti.Speed = NumberRange.new(0)
parti.VelocitySpread = 0
obj1waah=Instance.new('Weld',objd)
obj1waah.Part0=torso
obj1waah.Part1=objd
obj1waah.C0=CFrame.new(0,0,0)*CFrame.Angles(0,0,0)

local objd2=Instance.new('Part',tail)
objd2.formFactor='Custom'
objd2.Size=Vector3.new(.2,.2,.2)
objd2.BrickColor=BrickColor.new('Cool yellow')
objd2.Anchored=false
objd2.CanCollide=false
objd2.Transparency=1
objd2:breakJoints()
objd2.Locked=true
objd2.Name="bbb"

obj1wbb=Instance.new('Weld',objd2)
obj1wbb.Part0=torso
obj1wbb.Part1=objd2
obj1wbb.C0=CFrame.new(0,0,0)*CFrame.Angles(0,0,0)

local obd=Instance.new('Part',tail)
obd.formFactor='Custom'
obd.Size=Vector3.new(.2,.2,.2)
obd.BrickColor=BrickColor.new('Cool yellow')
obd.Anchored=false
obd.CanCollide=false
obd.Transparency=1
obd:breakJoints()
obd.Locked=true
obd.Name="ccc"
local partid = Instance.new("ParticleEmitter",obd)
partid.Color = ColorSequence.new(Color3.new(1, .7, 0), Color3.new(1, .6, 0))
partid.LightEmission = 1
partid.Size = NumberSequence.new(0.2)
partid.Texture = "http://www.roblox.com/asset/?ID=68137067"
sizeseq = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.833),NumberSequenceKeypoint.new(1, 0)})
transseq = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
partid.Transparency = transseq
partid.Size = sizeseq
partid.ZOffset = 0
partid.Acceleration = Vector3.new(0, 10, 0)
partid.LockedToPart = false
partid.EmissionDirection = "Top"
partid.Lifetime = NumberRange.new(1)
partid.Rate = 250
partid.Rotation = NumberRange.new(-50, 50)
partid.RotSpeed = NumberRange.new(-50, 50)
partid.Speed = NumberRange.new(0)
partid.VelocitySpread = 0
ob1w=Instance.new('Weld',obd)
ob1w.Part0=objd
ob1w.Part1=obd
ob1w.C0=CFrame.new(4,0,0)*CFrame.Angles(0,0,0)

local obd2=Instance.new('Part',tail)
obd2.formFactor='Custom'
obd2.Size=Vector3.new(.2,.2,.2)
obd2.BrickColor=BrickColor.new('Cool yellow')
obd2.Anchored=false
obd2.CanCollide=false
obd2.Transparency=1
obd2:breakJoints()
obd2.Locked=true
obd2.Name="ccc"
local partif = Instance.new("ParticleEmitter",obd2)
partif.Color = ColorSequence.new(Color3.new(1, .7, 0), Color3.new(1, .6, 0))
partif.LightEmission = 1
partif.Size = NumberSequence.new(0.2)
partif.Texture = "http://www.roblox.com/asset/?ID=68137067"
sizeseq = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.833),NumberSequenceKeypoint.new(1, 0)})
transseq = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
partif.Transparency = transseq
partif.Size = sizeseq
partif.ZOffset = 0
partif.Acceleration = Vector3.new(0, 10, 0)
partif.LockedToPart = false
partif.EmissionDirection = "Top"
partif.Lifetime = NumberRange.new(1)
partif.Rate = 250
partif.Rotation = NumberRange.new(-50, 50)
partif.RotSpeed = NumberRange.new(-50, 50)
partif.Speed = NumberRange.new(0)
partif.VelocitySpread = 0
ob1w=Instance.new('Weld',obd2)
ob1w.Part0=objd2
ob1w.Part1=obd2
ob1w.C0=CFrame.new(-4,0,0)*CFrame.Angles(0,0,0)


local obj2=Instance.new('Part',tail)
obj2.formFactor='Custom'
obj2.Size=Vector3.new(1.5,1.5,1.5)
obj2.BrickColor=BrickColor.new('Cool yellow')
obj2.Anchored=false
obj2.CanCollide=false
obj2.TopSurface=10
obj2.BottomSurface=10
obj2.LeftSurface=10
obj2.RightSurface=10
obj2.FrontSurface=10
obj2.BackSurface=10
obj2.Material='SmoothPlastic'
obj2:breakJoints()
obj2.Locked=true
local obj2m=Instance.new('SpecialMesh',obj2)
obj2m.MeshType='Sphere'
obj2m.Scale=Vector3.new(2,2,2)
obj2w=Instance.new('Weld',obj2)
obj2w.Part0=obj1
obj2w.Part1=obj2
obj2w.C0=CFrame.new(0,-1.525,0)


local obj3=Instance.new('Part',tail)
obj3.formFactor='Custom'
obj3.Size=Vector3.new(1.25,1,1.25)
obj3.BrickColor=BrickColor.new('Cool yellow')
obj3.Anchored=false
obj3.CanCollide=false
obj3.TopSurface=10
obj3.BottomSurface=10
obj3.LeftSurface=10
obj3.RightSurface=10
obj3.FrontSurface=10
obj3.BackSurface=10
obj3:breakJoints()
obj3.Locked=true
obj3.Material='SmoothPlastic'
local obj3m=Instance.new('SpecialMesh',obj3)
obj3m.MeshId="http://www.roblox.com/asset/?id=1033714"
obj3m.Scale=Vector3.new(1.2,2.75,1.2)
obj3w=Instance.new('Weld',obj3)
obj3w.Part0=obj2
obj3w.Part1=obj3
obj3w.C0=CFrame.new(0,-1.9,-.35)*CFrame.Angles(math.rad(10.5),0,math.rad(180))

local obj4=Instance.new('Part',tail)
obj4.formFactor='Custom'
obj4.Size=Vector3.new(1.25,1,1.25)
obj4.BrickColor=BrickColor.new('Bright red')
obj4.Anchored=false
obj4.CanCollide=false
obj4.TopSurface=10
obj4.BottomSurface=10
obj4.LeftSurface=10
obj4.RightSurface=10
obj4.FrontSurface=10
obj4.BackSurface=10
obj4:breakJoints()
obj4.Locked=true
obj4.Material='SmoothPlastic'
local obj4m=Instance.new('SpecialMesh',obj4)
obj4m.MeshId="http://www.roblox.com/asset/?id=1033714"
obj4m.Scale=Vector3.new(.915,2.25,.915)
obj4w=Instance.new('Weld',obj4)
obj4w.Part0=obj2
obj4w.Part1=obj4
obj4w.C0=CFrame.new(0,-2.25,-.405)*CFrame.Angles(math.rad(10.5),0,math.rad(180))

local obj5=Instance.new('Part',tail)
obj5.formFactor='Custom'
obj5.Size=Vector3.new(.3,3,.3)
obj5.BrickColor=BrickColor.new('Reddish brown')
obj5.Anchored=false
obj5.CanCollide=false
obj5.TopSurface=10
obj5.BottomSurface=10
obj5.LeftSurface=10
obj5.RightSurface=10
obj5.FrontSurface=10
obj5.BackSurface=10
obj5:breakJoints()
obj5.Locked=true
obj5.Material='Wood'
local obj5m=Instance.new('CylinderMesh',obj5)
obj5w=Instance.new('Weld',obj5)
obj5w.Part0=obj2
obj5w.Part1=obj5
obj5w.C0=CFrame.new(0,0,2.5)*CFrame.Angles(math.rad(95),0,0)



local obj6=Instance.new('Part',tail)
obj6.formFactor='Custom'
obj6.Size=Vector3.new(1.25,1,1.25)
obj6.BrickColor=BrickColor.new('Cool yellow')
obj6.Anchored=false
obj6.CanCollide=false
obj6.TopSurface=10
obj6.BottomSurface=10
obj6.LeftSurface=10
obj6.RightSurface=10
obj6.FrontSurface=10
obj6.BackSurface=10
obj6.Locked=true
obj6:breakJoints()
obj6.Material='SmoothPlastic'
local obj6m=Instance.new('SpecialMesh',obj6)
obj6m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj6m.Scale=Vector3.new(.215,.25,.215)
obj6w=Instance.new('Weld',obj6)
obj6w.Part0=obj2
obj6w.Part1=obj6
obj6w.C0=CFrame.new(0,.115,1.45)*CFrame.Angles(math.rad(95),0,math.rad(0))

local obj7=Instance.new('Part',tail)
obj7.formFactor='Custom'
obj7.Size=Vector3.new(1.25,1,1.25)
obj7.BrickColor=BrickColor.new('Cool yellow')
obj7.Anchored=false
obj7.CanCollide=false
obj7.TopSurface=10
obj7.BottomSurface=10
obj7.LeftSurface=10
obj7.RightSurface=10
obj7.FrontSurface=10
obj7:breakJoints()
obj7.BackSurface=10
obj7.Locked=true
obj7.Material='SmoothPlastic'
local obj7m=Instance.new('SpecialMesh',obj7)
obj7m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj7m.Scale=Vector3.new(.25,.275,.225)
obj7w=Instance.new('Weld',obj7)
obj7w.Part0=obj2
obj7w.Part1=obj7
obj7w.C0=CFrame.new(0,.115,1.45)*CFrame.Angles(math.rad(95),math.rad(15),math.rad(0))

local obj8=Instance.new('Part',tail)
obj8.formFactor='Custom'
obj8.Size=Vector3.new(1.25,1,1.25)
obj8.BrickColor=BrickColor.new('Cool yellow')
obj8.Anchored=false
obj8.CanCollide=false
obj8.TopSurface=10
obj8.BottomSurface=10
obj8.LeftSurface=10
obj8.RightSurface=10
obj8.FrontSurface=10
obj8.BackSurface=10
obj8:breakJoints()
obj8.Locked=true
obj8.Material='SmoothPlastic'
local obj8m=Instance.new('SpecialMesh',obj8)
obj8m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj8m.Scale=Vector3.new(.25,.265,.25)
obj8w=Instance.new('Weld',obj8)
obj8w.Part0=obj2
obj8w.Part1=obj8
obj8w.C0=CFrame.new(0,.115,1.45)*CFrame.Angles(math.rad(95),math.rad(35),math.rad(0))

local obj9=Instance.new('Part',tail)
obj9.formFactor='Custom'
obj9.Size=Vector3.new(.2,1,.2)
obj9.BrickColor=BrickColor.new('Reddish brown')
obj9.Anchored=false
obj9.CanCollide=false
obj9.TopSurface=10
obj9.BottomSurface=10
obj9.LeftSurface=10
obj9.RightSurface=10
obj9.FrontSurface=10
obj9.BackSurface=10
obj9.Material='Wood'
obj9:breakJoints()
obj9.Locked=true
local obj9m=Instance.new('CylinderMesh',obj9)
obj9w=Instance.new('Weld',obj9)
obj9w.Part0=obj5
obj9w.Part1=obj9
obj9w.C0=CFrame.new(0,1.1,.25)*CFrame.Angles(math.rad(25),0,0)

local obj10=Instance.new('Part',tail)
obj10.formFactor='Custom'
obj10.Size=Vector3.new(1.25,1,1.25)
obj10.BrickColor=BrickColor.new('Cool yellow')
obj10.Anchored=false
obj10.CanCollide=false
obj10.TopSurface=10
obj10.BottomSurface=10
obj10.LeftSurface=10
obj10.RightSurface=10
obj10.FrontSurface=10
obj10.BackSurface=10
obj10:breakJoints()
obj10.Locked=true
obj10.Material='SmoothPlastic'
local obj10m=Instance.new('SpecialMesh',obj10)
obj10m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj10m.Scale=Vector3.new(1.8,1,1.8)
obj10w=Instance.new('Weld',obj10)
obj10w.Part0=obj2
obj10w.Part1=obj10
obj10w.C0=CFrame.new(0,-1,-.35)*CFrame.Angles(math.rad(10.5),0,math.rad(180))

local obj11=Instance.new('Part',tail)
obj11.formFactor='Custom'
obj11.Size=Vector3.new(1.25,1,1.25)
obj11.BrickColor=BrickColor.new('Cool yellow')
obj11.Anchored=false
obj11.CanCollide=false
obj11.TopSurface=10
obj11.BottomSurface=10
obj11.LeftSurface=10
obj11.RightSurface=10
obj11.FrontSurface=10
obj11.BackSurface=10
obj11:breakJoints()
obj11.Locked=true
obj11.Material='SmoothPlastic'
local obj11m=Instance.new('SpecialMesh',obj11)
obj11m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj11m.Scale=Vector3.new(1.7,1,1.7)
obj11w=Instance.new('Weld',obj11)
obj11w.Part0=obj2
obj11w.Part1=obj11
obj11w.C0=CFrame.new(0,-1.2,-.35)*CFrame.Angles(math.rad(10.5),math.rad(5),math.rad(180))

local obj12=Instance.new('Part',tail)
obj12.formFactor='Custom'
obj12.Size=Vector3.new(1.25,1,1.25)
obj12.BrickColor=BrickColor.new('Cool yellow')
obj12.Anchored=false
obj12.CanCollide=false
obj12.TopSurface=10
obj12.BottomSurface=10
obj12.LeftSurface=10
obj12.RightSurface=10
obj12.FrontSurface=10
obj12.BackSurface=10
obj12:breakJoints()
obj12.Locked=true
obj12.Material='SmoothPlastic'
local obj12m=Instance.new('SpecialMesh',obj12)
obj12m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj12m.Scale=Vector3.new(1.6,1,1.6)
obj12w=Instance.new('Weld',obj12)
obj12w.Part0=obj2
obj12w.Part1=obj12
obj12w.C0=CFrame.new(0,-1.4,-.35)*CFrame.Angles(math.rad(10.5),math.rad(10),math.rad(180))

local obj13=Instance.new('Part',tail)
obj13.formFactor='Custom'
obj13.Size=Vector3.new(1.25,1,1.25)
obj13.BrickColor=BrickColor.new('Cool yellow')
obj13.Anchored=false
obj13.CanCollide=false
obj13.TopSurface=10
obj13.BottomSurface=10
obj13.LeftSurface=10
obj13.RightSurface=10
obj13.FrontSurface=10
obj13.BackSurface=10
obj13:breakJoints()
obj13.Locked=true
obj13.Material='SmoothPlastic'
local obj13m=Instance.new('SpecialMesh',obj13)
obj13m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj13m.Scale=Vector3.new(1.5,1,1.5)
obj13w=Instance.new('Weld',obj13)
obj13w.Part0=obj2
obj13w.Part1=obj13
obj13w.C0=CFrame.new(0,-1.6,-.35)*CFrame.Angles(math.rad(10.5),math.rad(15),math.rad(180))

local obj14=Instance.new('Part',tail)
obj14.formFactor='Custom'
obj14.Size=Vector3.new(1.25,1,1.25)
obj14.BrickColor=BrickColor.new('Bright red')
obj14.Anchored=false
obj14.CanCollide=false
obj14.TopSurface=10
obj14.BottomSurface=10
obj14.LeftSurface=10
obj14.RightSurface=10
obj14.FrontSurface=10
obj14.BackSurface=10
obj14:breakJoints()
obj14.Locked=true
obj14.Material='SmoothPlastic'
local obj14m=Instance.new('SpecialMesh',obj14)
obj14m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj14m.Scale=Vector3.new(1.5,1,1.5)
obj14w=Instance.new('Weld',obj14)
obj14w.Part0=obj2
obj14w.Part1=obj14
obj14w.C0=CFrame.new(0,-1.8,-.35)*CFrame.Angles(math.rad(10.5),math.rad(20),math.rad(180))

local obj15=Instance.new('Part',tail)
obj15.formFactor='Custom'
obj15.Size=Vector3.new(1.25,1,1.25)
obj15.BrickColor=BrickColor.new('Bright red')
obj15.Anchored=false
obj15.CanCollide=false
obj15.TopSurface=10
obj15.BottomSurface=10
obj15.LeftSurface=10
obj15.RightSurface=10
obj15.FrontSurface=10
obj15.BackSurface=10
obj15:breakJoints()
obj15.Locked=true
obj15.Material='SmoothPlastic'
local obj15m=Instance.new('SpecialMesh',obj15)
obj15m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj15m.Scale=Vector3.new(1.4,.9,1.4)
obj15w=Instance.new('Weld',obj15)
obj15w.Part0=obj2
obj15w.Part1=obj15
obj15w.C0=CFrame.new(0,-2,-.35)*CFrame.Angles(math.rad(10.5),math.rad(25),math.rad(180))

local obj16=Instance.new('Part',tail)
obj16.formFactor='Custom'
obj16.Size=Vector3.new(1.25,1,1.25)
obj16.BrickColor=BrickColor.new('Bright red')
obj16.Anchored=false
obj16.CanCollide=false
obj16.TopSurface=10
obj16.BottomSurface=10
obj16.LeftSurface=10
obj16.RightSurface=10
obj16.FrontSurface=10
obj16.BackSurface=10
obj16:breakJoints()
obj16.Locked=true
obj16.Material='SmoothPlastic'
local obj16m=Instance.new('SpecialMesh',obj16)
obj16m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj16m.Scale=Vector3.new(1.5,.8,1.5)
obj16w=Instance.new('Weld',obj16)
obj16w.Part0=obj2
obj16w.Part1=obj16
obj16w.C0=CFrame.new(0,-2.2,-.35)*CFrame.Angles(math.rad(10.5),math.rad(30),math.rad(180))

local obj17=Instance.new('Part',tail)
obj17.formFactor='Custom'
obj17.Size=Vector3.new(1.25,1,1.25)
obj17.BrickColor=BrickColor.new('Bright red')
obj17.Anchored=false
obj17.CanCollide=false
obj17.TopSurface=10
obj17.BottomSurface=10
obj17.LeftSurface=10
obj17.RightSurface=10
obj17.FrontSurface=10
obj17.BackSurface=10
obj17:breakJoints()
obj17.Locked=true
obj17.Material='SmoothPlastic'
local obj17m=Instance.new('SpecialMesh',obj17)
obj17m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj17m.Scale=Vector3.new(1.3,1,1.3)
obj17w=Instance.new('Weld',obj17)
obj17w.Part0=obj2
obj17w.Part1=obj17
obj17w.C0=CFrame.new(0,-2.4,-.35)*CFrame.Angles(math.rad(10.5),math.rad(35),math.rad(180))

local obj18=Instance.new('Part',tail)
obj18.formFactor='Custom'
obj18.Size=Vector3.new(1.25,1,1.25)
obj18.BrickColor=BrickColor.new('Bright red')
obj18.Anchored=false
obj18.CanCollide=false
obj18.TopSurface=10
obj18.BottomSurface=10
obj18.LeftSurface=10
obj18.RightSurface=10
obj18.FrontSurface=10
obj18.BackSurface=10
obj18:breakJoints()
obj18.Locked=true
obj18.Material='SmoothPlastic'
local obj18m=Instance.new('SpecialMesh',obj18)
obj18m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj18m.Scale=Vector3.new(1.2,1.1,1.2)
obj18w=Instance.new('Weld',obj18)
obj18w.Part0=obj2
obj18w.Part1=obj18
obj18w.C0=CFrame.new(0,-2.6,-.35)*CFrame.Angles(math.rad(10.5),math.rad(40),math.rad(180))

local obj19=Instance.new('Part',tail)
obj19.formFactor='Custom'
obj19.Size=Vector3.new(1.25,1,1.25)
obj19.BrickColor=BrickColor.new('Bright red')
obj19.Anchored=false
obj19.CanCollide=false
obj19.TopSurface=10
obj19.BottomSurface=10
obj19.LeftSurface=10
obj19.RightSurface=10
obj19.FrontSurface=10
obj19.BackSurface=10
obj19.Locked=true
obj19:breakJoints()
obj19.Material='SmoothPlastic'
local obj19m=Instance.new('SpecialMesh',obj19)
obj19m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj19m.Scale=Vector3.new(1.1,1.2,1.1)
obj19w=Instance.new('Weld',obj19)
obj19w.Part0=obj2
obj19w.Part1=obj19
obj19w.C0=CFrame.new(0,-2.8,-.35)*CFrame.Angles(math.rad(10.5),math.rad(45),math.rad(180))


local ff=Instance.new('Part',tail)
ff.formFactor='Custom'
ff.Size=Vector3.new(.2,.2,.2)
ff.BrickColor=BrickColor.new('Cool yellow')
ff.Anchored=false
ff.CanCollide=false
ff.Transparency=1
ff:breakJoints()
ff.Locked=true
ff.Name="firaahhhhh"
obj111w=Instance.new('Weld',ff)
obj111w.Part0=obj5
obj111w.Part1=ff
obj111w.C0=CFrame.new(0,1.5,0)

local lst=Instance.new('PointLight',ff)
lst.Brightness=123123
lst.Range=8
lst.Enabled=false
lst.Color=lalalclrs[math.random(1,#lalalclrs)]

local partasd = Instance.new("ParticleEmitter",ff)
partasd.Color = ColorSequence.new(Color3.new(1, .5, 0), Color3.new(1, .2, 0))
partasd.LightEmission = 1
partasd.Size = NumberSequence.new(0.2)
partasd.Texture = "http://www.roblox.com/asset/?ID=68137067"
sizeseqe = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.722),NumberSequenceKeypoint.new(1, 0)})
transseqe = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
partasd.Transparency = transseqe
partasd.Size = sizeseqe
partasd.ZOffset = .9
partasd.Acceleration = Vector3.new(0, 30, 0)
partasd.LockedToPart = false
partasd.EmissionDirection = "Top"
partasd.Lifetime = NumberRange.new(.5)
partasd.Rate = 200
partasd.Rotation = NumberRange.new(-100, 100)
partasd.RotSpeed = NumberRange.new(-100, 100)
partasd.Speed = NumberRange.new(1)
partasd.VelocitySpread = 1000
partasd.Enabled=false


---------------------------------------------------------------------------- 
function makeball()
local proj=Instance.new('Part',hooh)
proj.Shape='Ball'
proj.Anchored=false
proj.Name='Fireball'
proj.Locked=true
proj.Material="Neon"
proj.Size=Vector3.new(1,1,1)
proj.BrickColor=BrickColor.new('Neon orange')
proj.Transparency=0
proj.CFrame=torso.CFrame*CFrame.new(3,3,-2)
local lt=Instance.new('PointLight',proj)
lt.Brightness=123123
lt.Range=6
lt.Color=lalalclrs[math.random(1,#lalalclrs)]
CreateSound("http://roblox.com/asset/?id=200633327", chr, 1.5, 1.2)
local partasdef = Instance.new("ParticleEmitter",proj)
partasdef.Color = ColorSequence.new(Color3.new(1, .5, 0), Color3.new(1, .2, 0))
partasdef.LightEmission = 1
partasdef.Size = NumberSequence.new(0.2)
partasdef.Texture = "http://www.roblox.com/asset/?ID=68137067"
aa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.722),NumberSequenceKeypoint.new(1, 2.11)})
bb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
partasdef.Transparency = bb
partasdef.Size = aa
partasdef.ZOffset = .9
partasdef.Acceleration = Vector3.new(0, 0, 0)
partasdef.LockedToPart = false
partasdef.EmissionDirection = "Top"
partasdef.Lifetime = NumberRange.new(.5)
partasdef.Rate = 200
partasdef.Rotation = NumberRange.new(-100, 100)
partasdef.RotSpeed = NumberRange.new(-100, 100)
partasdef.Speed = NumberRange.new(5)
partasdef.VelocitySpread = 1000


local prj=Instance.new('BodyVelocity',proj)
prj.velocity=((torso.CFrame*CFrame.new(3,3,-2)).p-maus.Hit.p).unit*-300

--pewdiepie=spart.Touched:connect(function(hit) 

proj.Touched:connect(function(hit)
if hit and hit.CanCollide then
	Explode(20,proj)
	proj.Anchored=true
local hum=hit.Parent and hit.Parent:findFirstChild('Torso') and hit.Parent:findFirstChild('Humanoid') and hit.Parent ~= chr and hit.Parent.ClassName=='Model'
if hum then hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-(999999*(hit.Parent.Humanoid.MaxHealth/100)) end end

wait(1)
proj:Destroy()
end)
coroutine.wrap(function()
wait(10)
proj:Destroy()
end)()
end

function makeball2()
	local proj=Instance.new('Part',hooh)
proj.Shape='Ball'
proj.Anchored=false
proj.Name='Fireball'
proj.Locked=true
proj.Material="Neon"
proj.Size=Vector3.new(.6,.6,.6)
proj.BrickColor=BrickColor.new('Neon orange')
proj.Transparency=0
proj.CFrame=torso.CFrame*CFrame.new(3,3,-2)
local lt=Instance.new('PointLight',proj)
lt.Brightness=123123
lt.Range=6
lt.Color=lalalclrs[math.random(1,#lalalclrs)]
CreateSound("http://roblox.com/asset/?id=200633327", chr, 1.5, 1.2)
local partasdef = Instance.new("ParticleEmitter",proj)
partasdef.Color = ColorSequence.new(Color3.new(1, .5, 0), Color3.new(1, .2, 0))
partasdef.LightEmission = 1
partasdef.Size = NumberSequence.new(0.2)
partasdef.Texture = "http://www.roblox.com/asset/?ID=68137067"
aa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.722),NumberSequenceKeypoint.new(1, 1.51)})
bb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
partasdef.Transparency = bb
partasdef.Size = aa
partasdef.ZOffset = .9
partasdef.Acceleration = Vector3.new(0, 0, 0)
partasdef.LockedToPart = false
partasdef.EmissionDirection = "Top"
partasdef.Lifetime = NumberRange.new(.5)
partasdef.Rate = 200
partasdef.Rotation = NumberRange.new(-100, 100)
partasdef.RotSpeed = NumberRange.new(-100, 100)
partasdef.Speed = NumberRange.new(5)
partasdef.VelocitySpread = 1000


local prj=Instance.new('BodyVelocity',proj)
prj.velocity=((torso.CFrame*CFrame.new(3,3,-2)).p-maus.Hit.p).unit*-300

--pewdiepie=spart.Touched:connect(function(hit) 

proj.Touched:connect(function(hit)
if hit and hit.CanCollide then
	Explode2(20,proj)
	proj.Anchored=true
local hum=hit.Parent and hit.Parent:findFirstChild('Torso') and hit.Parent:findFirstChild('Humanoid') and hit.Parent ~= chr and hit.Parent.ClassName=='Model'
if hum then hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-(999999*(hit.Parent.Humanoid.MaxHealth/100)) end end

wait(1)
proj:Destroy()
end)
coroutine.wrap(function()
wait(10)
proj:Destroy()
end)()
end

function spam()
armpose='Swing1'
wait(.2)
makeball2()
armpose='Swing2'
wait(.2)
armpose='Swing3'
wait(.2)
makeball2()
armpose='Swing4'
wait(.2)
end

maus.KeyDown:connect(function(kei)
if string.byte(kei)==48 then
chr.Humanoid.WalkSpeed=chr.Humanoid.WalkSpeed+70
end


if kei=='q' and not armmovement then
if holding then armmovement=true armpose='ReplacingStick' wait(.5) armmovement=false holding=false

obj5w.Part0=obj2
obj5w.C0=CFrame.new(0,0,2.5)*CFrame.Angles(math.rad(95),0,0)
lst.Enabled=false
partasd.Enabled=false
elseif not holding then armmovement=true armpose='ReplacingStick' wait(.5) armmovement=false holding=true 

obj5w.Part0=rarm
obj5w.C0=CFrame.new(0,-1,-.5)*CFrame.Angles(-math.rad(92),0,0)
lst.Enabled=true
partasd.Enabled=true
end
end

if kei=='m' and play == true and dedly == false then
	dedly = true
while wait() and kkk and kkk.Volume >= 0.05 do
	kkk.Volume = kkk.Volume - 0.05
end
wait(0.1)
kkk.Pitch = 0
kkk.PlaybackSpeed = 0
dedly = false 
play = false
else
	if kei=='m' and play == false and dedly == false then
	dedly = true
	kkk.Pitch = 1
    kkk.PlaybackSpeed = 1
while wait() and kkk and kkk.Volume <= 1.2 do
	kkk.Volume = kkk.Volume + 0.05
end
wait(0.1)
dedly = false 
play = true
end


end

if kei=='x' and not jumpdb and not otheranims then
jumpdb=true
otheranims=true
anim='SuperCrouch'
CreateSound("http://roblox.com/asset/?id=200633529", workspace, .6, .8)


partasdeff.Enabled=true
partasdeffb.Enabled=true
--[[coroutine.resume(coroutine.create(function()
for lal=1,20 do wait()
local jm=Instance.new('Part',chr)
jm.formFactor='Custom'
jm.BrickColor=BrickColor.new(fireclrs[math.random(1,3)])
jm.Size=Vector3.new(3,3,3)
jm.Name='soprjmp'
jm.Material="Neon"
jm.TopSurface=10
jm.BottomSurface=10
jm.FrontSurface=10
jm.Locked=true
jm.LeftSurface=10
jm.RightSurface=10
jm.BackSurface=10
jm.CanCollide=false
jm.Anchored=true
jm.CFrame=rleg.CFrame*CFrame.new(-.5,-1,0)*CFrame.Angles(math.random(1,3),math.random(1,3),math.random(1,3))
local jmp=Instance.new('BlockMesh',jm)
game:service'Debris':AddItem(jm,1.5)
coroutine.wrap(function()
for qq=1,20 do wait()
jmp.Scale=jmp.Scale+Vector3.new(.1,.1,.1)
jm.Transparency=jm.Transparency+.1
jm.CFrame=jm.CFrame*CFrame.Angles(math.random(1,3),math.random(1,3),math.random(1,3))
end
end)()
end
end))]]
wait(.6)
coroutine.resume(coroutine.create(function()
for t=1,5 do wait()
rangclr=ranclrs[t]
local rang=Instance.new('Part',chr)
rang.formFactor='Custom'
rang.BrickColor=BrickColor.new(rangclr)
rang.Size=Vector3.new(2,2,2)
rang.Name='rang'
rang.Material="Neon"
rang.TopSurface=10
rang.BottomSurface=10
rang.Locked=true
rang.FrontSurface=10
rang.LeftSurface=10
rang.RightSurface=10
rang.BackSurface=10
rang.CanCollide=false
rang.Anchored=true
rang.CFrame=rleg.CFrame*CFrame.new(-.5,-.75,0)*CFrame.Angles(math.rad(90),0,0)
local rmsh=Instance.new('SpecialMesh',rang)
rmsh.MeshId="http://www.roblox.com/asset/?id=3270017"
rmsh.Scale=Vector3.new(3,3,1.5)
game:service'Debris':AddItem(rang,5)
coroutine.wrap(function()
for lalal=1,50 do wait()
rmsh.Scale=rmsh.Scale+Vector3.new(1,1,.25)
rang.Transparency=rang.Transparency+1/33
end
end)()
end
end))
anim='SuperJump'
local ded=Instance.new('Part',hooh)
ded.formFactor='Custom'
ded.Size=Vector3.new(.2,.2,.2)
ded.BrickColor=BrickColor.new('Cool yellow')
ded.Anchored=false
ded.CanCollide=false
ded.Transparency=1
ded:breakJoints()
ded.Locked=true
ded.Name="aaa"
ded.CFrame=torso.CFrame
local vl=Instance.new("BodyVelocity",torso)
vl.maxForce=Vector3.new(0,1/0,0)
vl.velocity=Vector3.new(0,200,0)
game:service'Debris':AddItem(vl,1)
chr.Humanoid.Jump=true
coroutine.wrap(function()
Explode(20,ded)
end)()
wait(.5)
ded:Remove()
otheranims=false
anim='Jumping'
wait(.4)
--
local proj1=Instance.new('Part',hooh)
proj1.Shape='Ball'
proj1.Anchored=false
proj1.Name='Fireball'
proj1.Locked=true
proj1.Material="Neon"
proj1.Size=Vector3.new(1,1,1)
proj1.BrickColor=BrickColor.new('Neon orange')
proj1.Transparency=0
proj1.CFrame=torso.CFrame*CFrame.new(70,6,0)
local lt=Instance.new('PointLight',proj1)
lt.Brightness=123123
lt.Range=6
lt.Color=lalalclrs[math.random(1,#lalalclrs)]
CreateSound("http://roblox.com/asset/?id=377357848", chr, 1.2, 1)
local partasdef = Instance.new("ParticleEmitter",proj1)
partasdef.Color = ColorSequence.new(Color3.new(1, .5, 0), Color3.new(1, .2, 0))
partasdef.LightEmission = 1
partasdef.Size = NumberSequence.new(0.2)
partasdef.Texture = "http://www.roblox.com/asset/?ID=68137067"
aa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.722),NumberSequenceKeypoint.new(1, 2.11)})
bb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
partasdef.Transparency = bb
partasdef.Size = aa
partasdef.ZOffset = .9
partasdef.Acceleration = Vector3.new(0, 0, 0)
partasdef.LockedToPart = false
partasdef.EmissionDirection = "Top"
partasdef.Lifetime = NumberRange.new(.5)
partasdef.Rate = 200
partasdef.Rotation = NumberRange.new(-100, 100)
partasdef.RotSpeed = NumberRange.new(-100, 100)
partasdef.Speed = NumberRange.new(5)
partasdef.VelocitySpread = 1000
coroutine.wrap(function()
	wait(.5)
proj1.Touched:connect(function(hit)
if hit and hit.CanCollide then
	Explode(20,proj1)
	proj1.Anchored=true
local hum=hit.Parent and hit.Parent:findFirstChild('Torso') and hit.Parent:findFirstChild('Humanoid') and hit.Parent ~= chr and hit.Parent.ClassName=='Model'
if hum then hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-(999999*(hit.Parent.Humanoid.MaxHealth/100)) end end
wait(1)
proj1:Destroy()
end)
end)()

local proj2=Instance.new('Part',hooh)
proj2.Shape='Ball'
proj2.Anchored=false
proj2.Name='Fireball'
proj2.Locked=true
proj2.Material="Neon"
proj2.Size=Vector3.new(1,1,1)
proj2.BrickColor=BrickColor.new('Neon orange')
proj2.Transparency=0
proj2.CFrame=torso.CFrame*CFrame.new(-70,6,0)


local lt=Instance.new('PointLight',proj2)
lt.Brightness=123123
lt.Range=6
lt.Color=lalalclrs[math.random(1,#lalalclrs)]
CreateSound("http://roblox.com/asset/?id=377357848", chr, 1.2, 1)
local partasdef = Instance.new("ParticleEmitter",proj2)
partasdef.Color = ColorSequence.new(Color3.new(1, .5, 0), Color3.new(1, .2, 0))
partasdef.LightEmission = 1
partasdef.Size = NumberSequence.new(0.2)
partasdef.Texture = "http://www.roblox.com/asset/?ID=68137067"
aa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.722),NumberSequenceKeypoint.new(1, 2.11)})
bb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
partasdef.Transparency = bb
partasdef.Size = aa
partasdef.ZOffset = .9
partasdef.Acceleration = Vector3.new(0, 0, 0)
partasdef.LockedToPart = false
partasdef.EmissionDirection = "Top"
partasdef.Lifetime = NumberRange.new(.5)
partasdef.Rate = 200
partasdef.Rotation = NumberRange.new(-100, 100)
partasdef.RotSpeed = NumberRange.new(-100, 100)
partasdef.Speed = NumberRange.new(5)
partasdef.VelocitySpread = 1000
coroutine.wrap(function()
	wait(.5)
proj2.Touched:connect(function(hit)
if hit and hit.CanCollide then
	Explode(20,proj2)
	proj2.Anchored=true
local hum=hit.Parent and hit.Parent:findFirstChild('Torso') and hit.Parent:findFirstChild('Humanoid') and hit.Parent ~= chr and hit.Parent.ClassName=='Model'
if hum then hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-(999999*(hit.Parent.Humanoid.MaxHealth/100)) end end
wait(1)
proj2:Destroy()
end)
end)()

local proj3=Instance.new('Part',hooh)
proj3.Shape='Ball'
proj3.Anchored=false
proj3.Name='Fireball'
proj3.Locked=true
proj3.Material="Neon"
proj3.Size=Vector3.new(1,1,1)
proj3.BrickColor=BrickColor.new('Neon orange')
proj3.Transparency=0
proj3.CFrame=torso.CFrame*CFrame.new(0,6,70)



local lt=Instance.new('PointLight',proj3)
lt.Brightness=123123
lt.Range=6
lt.Color=lalalclrs[math.random(1,#lalalclrs)]
CreateSound("http://roblox.com/asset/?id=377357848", chr, 1.2, 1)
local partasdef = Instance.new("ParticleEmitter",proj3)
partasdef.Color = ColorSequence.new(Color3.new(1, .5, 0), Color3.new(1, .2, 0))
partasdef.LightEmission = 1
partasdef.Size = NumberSequence.new(0.2)
partasdef.Texture = "http://www.roblox.com/asset/?ID=68137067"
aa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.722),NumberSequenceKeypoint.new(1, 2.11)})
bb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
partasdef.Transparency = bb
partasdef.Size = aa
partasdef.ZOffset = .9
partasdef.Acceleration = Vector3.new(0, 0, 0)
partasdef.LockedToPart = false
partasdef.EmissionDirection = "Top"
partasdef.Lifetime = NumberRange.new(.5)
partasdef.Rate = 200
partasdef.Rotation = NumberRange.new(-100, 100)
partasdef.RotSpeed = NumberRange.new(-100, 100)
partasdef.Speed = NumberRange.new(5)
partasdef.VelocitySpread = 1000
coroutine.wrap(function()
	wait(.5)
proj3.Touched:connect(function(hit)
if hit and hit.CanCollide then
	Explode(20,proj3)
	proj3.Anchored=true
local hum=hit.Parent and hit.Parent:findFirstChild('Torso') and hit.Parent:findFirstChild('Humanoid') and hit.Parent ~= chr and hit.Parent.ClassName=='Model'
if hum then hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-(999999*(hit.Parent.Humanoid.MaxHealth/100)) end end
wait(1)
proj3:Destroy()
end)
end)()

local proj4=Instance.new('Part',hooh)
proj4.Shape='Ball'
proj4.Anchored=false
proj4.Name='Fireball'
proj4.Locked=true
proj4.Material="Neon"
proj4.Size=Vector3.new(1,1,1)
proj4.BrickColor=BrickColor.new('Neon orange')
proj4.Transparency=0
proj4.CFrame=torso.CFrame*CFrame.new(0,6,-70)



local lt=Instance.new('PointLight',proj4)
lt.Brightness=123123
lt.Range=6
lt.Color=lalalclrs[math.random(1,#lalalclrs)]
CreateSound("http://roblox.com/asset/?id=377357848", chr, 1.2, 1)
local partasdef = Instance.new("ParticleEmitter",proj4)
partasdef.Color = ColorSequence.new(Color3.new(1, .5, 0), Color3.new(1, .2, 0))
partasdef.LightEmission = 1
partasdef.Size = NumberSequence.new(0.2)
partasdef.Texture = "http://www.roblox.com/asset/?ID=68137067"
aa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.722),NumberSequenceKeypoint.new(1, 2.11)})
bb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
partasdef.Transparency = bb
partasdef.Size = aa
partasdef.ZOffset = .9
partasdef.Acceleration = Vector3.new(0, 0, 0)
partasdef.LockedToPart = false
partasdef.EmissionDirection = "Top"
partasdef.Lifetime = NumberRange.new(.5)
partasdef.Rate = 200
partasdef.Rotation = NumberRange.new(-100, 100)
partasdef.RotSpeed = NumberRange.new(-100, 100)
partasdef.Speed = NumberRange.new(5)
partasdef.VelocitySpread = 1000
coroutine.wrap(function()
	wait(.5)
proj4.Touched:connect(function(hit)
if hit and hit.CanCollide then
	Explode(20,proj4)
	proj4.Anchored=true
local hum=hit.Parent and hit.Parent:findFirstChild('Torso') and hit.Parent:findFirstChild('Humanoid') and hit.Parent ~= chr and hit.Parent.ClassName=='Model'
if hum then hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-(999999*(hit.Parent.Humanoid.MaxHealth/100)) end end
wait(1)
proj4:Destroy()
end)
end)()
--
wait(.6)
partasdeff.Enabled=false
partasdeffb.Enabled=false
wait(1)
jumpdb=false
end

if kei=='z' and holding and not armmovement and not otheranims and not flying then
flying=true
armmovement=true
armpose='Spin'
CreateSound("http://roblox.com/asset/?id=199145095", chr, 1, 1.4)
wait(.3)
CreateSound("http://roblox.com/asset/?id=199145095", chr, 1, 1.4)
wait(.3)
CreateSound("http://roblox.com/asset/?id=199145095", chr, 1, 1.4)
wait(.3)
CreateSound("http://roblox.com/asset/?id=199145095", chr, 1, 1.4)
wait(.3)
obj5w.C0=CFrame.new(0,-1,-.5)*CFrame.Angles(-math.rad(92),0,0)
spam()
wait(0.0001)
spam()
wait(0.0001)
spam()
wait(0.0001)
spam()
wait(0.0001)
spam()
wait(0.0001)
flying=false
armmovement=false

end


end)


plr.Chatted:connect(function(ms)
if ms:lower()=='q' and not armmovement then
if holding then armmovement=true armpose='ReplacingStick' wait(.5) armmovement=false holding=false
obj5w.Part0=obj2
obj5w.C0=CFrame.new(0,0,2.5)*CFrame.Angles(math.rad(95),0,0)

partasd.Enabled=false
lst.Enabled=false
elseif not holding then armmovement=true armpose='ReplacingStick' wait(.5) armmovement=false holding=true 

obj5w.Part0=rarm
obj5w.C0=CFrame.new(0,-1,-.5)*CFrame.Angles(-math.rad(92),0,0)
partasd.Enabled=true
lst.Enabled=true
end
end
if ms:lower()=='x' and not jumpdb and not otheranims then
jumpdb=true
otheranims=true
anim='SuperCrouch'

partasdeff.Enabled=true
partasdeffb.Enabled=true
--[[coroutine.resume(coroutine.create(function()
for lal=1,20 do wait()
local jm=Instance.new('Part',chr)
jm.formFactor='Custom'
jm.BrickColor=BrickColor.new(fireclrs[math.random(1,3)])
jm.Size=Vector3.new(3,3,3)
jm.Name='soprjmp'
jm.TopSurface=10
jm.BottomSurface=10
jm.FrontSurface=10
jm.Locked=true
jm.LeftSurface=10
jm.RightSurface=10
jm.BackSurface=10
jm.CanCollide=false
jm.Anchored=true
jm.CFrame=rleg.CFrame*CFrame.new(-.5,-1,0)*CFrame.Angles(math.random(1,3),math.random(1,3),math.random(1,3))
local jmp=Instance.new('BlockMesh',jm)
game:service'Debris':AddItem(jm,1.5)
coroutine.wrap(function()
for qq=1,20 do wait()
jmp.Scale=jmp.Scale+Vector3.new(.1,.1,.1)
jm.Transparency=jm.Transparency+.1
jm.CFrame=jm.CFrame*CFrame.Angles(math.random(1,3),math.random(1,3),math.random(1,3))
end
end)()
end
end))]]
wait(.6)
coroutine.resume(coroutine.create(function()
for t=1,5 do wait()
rangclr=ranclrs[t]
local rang=Instance.new('Part',chr)
rang.formFactor='Custom'
rang.BrickColor=BrickColor.new(rangclr)
rang.Size=Vector3.new(2,2,2)
rang.Name='rang'
rang.TopSurface=10
rang.Material="Neon"
rang.BottomSurface=10
rang.Locked=true
rang.FrontSurface=10
rang.LeftSurface=10
rang.RightSurface=10
rang.BackSurface=10
rang.CanCollide=false
rang.Anchored=true
rang.CFrame=rleg.CFrame*CFrame.new(-.5,-.75,0)*CFrame.Angles(math.rad(90),0,0)
local rmsh=Instance.new('SpecialMesh',rang)
rmsh.MeshId="http://www.roblox.com/asset/?id=3270017"
rmsh.Scale=Vector3.new(3,3,1.5)
game:service'Debris':AddItem(rang,5)
coroutine.wrap(function()
for lalal=1,50 do wait()
rmsh.Scale=rmsh.Scale+Vector3.new(1,1,.25)
rang.Transparency=rang.Transparency+1/33
end
end)()
end
end))
anim='SuperJump'
local ded=Instance.new('Part',hooh)
ded.formFactor='Custom'
ded.Size=Vector3.new(.2,.2,.2)
ded.BrickColor=BrickColor.new('Cool yellow')
ded.Anchored=false
ded.CanCollide=false
ded.Transparency=1
ded:breakJoints()
ded.Locked=true
ded.Name="aaa"
ded.CFrame=torso.CFrame
local tv=Instance.new("BodyVelocity",rutprt)
tv.maxForce=Vector3.new(0,math.huge,0)
tv.velocity=Vector3.new(0,200,0)
coroutine.resume(coroutince.create(function()
wait(.5)
tv:Destroy''
end))
chr.Humanoid.Jump=true
coroutine.wrap(function()
Explode(20,ded)
end)()
wait(.5)
ded:Remove()
otheranims=false
anim='Jumping'
wait(1)
partasdeff.Enabled=false
partasdeffb.Enabled=false
wait(1)

jumpdb=false
end
end)


maus.KeyUp:connect(function(kei)
if string.byte(kei)==48 then
chr.Humanoid.WalkSpeed=chr.Humanoid.WalkSpeed-70
end
end)



maus.Button1Down:connect(function()
if holding and not armmovement and not otheranims and not flying then
flying=true
armmovement=true
armpose='PreSwing'
wait(.2)
armpose='Swing'
wait(.1)
makeball()
armmovement=false
--[[coroutine.resume(coroutine.create(function()
for kthen=1,125 do wait()
local ex=math.random(0,300)*.01
local wy=math.random(0,300)*.01
local ze=math.random(0,300)*.01
local dy=math.random(5,30)*.01
local fir=Instance.new('Part',proj)
fir.formFactor='Custom'
fir.Anchored=true
fir.CanCollide=false
fir.Size=Vector3.new(.8,.8,.8)
fir.TopSurface=10
fir.BottomSurface=10
fir.LeftSurface=10
fir.RightSurface=10
fir.FrontSurface=10
fir.Material="Neon"
fir.Locked=true
fir.BackSurface=10
fir.BrickColor=BrickColor.new(fireclrs[math.random(1,#fireclrs)])
fir.CFrame=proj.CFrame*CFrame.Angles(ex,wy,ze)
local lt=Instance.new('PointLight',fir)
lt.Brightness=123123
lt.Range=6
lt.Color=lalalclrs[math.random(1,#lalalclrs)]
game:service'Debris':AddItem(fir,.5)
local frms=Instance.new('BlockMesh',fir)
frms.Scale=Vector3.new(1,1,1)
coroutine.wrap(function()
for lal=1,10 do
frms.Scale=frms.Scale-Vector3.new(.1,.1,.1)
fir.CFrame=fir.CFrame*CFrame.new(0,dy,0)
wait()
end
end)() end end))]]
wait(.375)
flying=false
end
end)

------------------

coroutine.resume(coroutine.create(function()
while wait() do if holding then
	partasd.Enabled=true

--[[local ex=math.random(0,300)*.01
local wy=math.random(0,300)*.01
local ze=math.random(0,300)*.01
local dy=math.random(5,30)*.01
local fir=Instance.new('Part',obj5)
fir.formFactor='Custom'
fir.Anchored=true
fir.CanCollide=false
fir.Size=Vector3.new(.65,.65,.65)
fir.TopSurface=10
fir.BottomSurface=10
fir.LeftSurface=10
fir.RightSurface=10
fir.Material="Neon"
fir.FrontSurface=10
fir.Locked=true
fir.BackSurface=10
fir.BrickColor=BrickColor.new(fireclrs[math.random(1,#fireclrs)])
fir.CFrame=obj5.CFrame*CFrame.new(0,(-obj9.Size.y)-.5,0)*CFrame.Angles(ex,wy,ze)
local lt=Instance.new('PointLight',fir)
lt.Brightness=123123
lt.Range=6
lt.Color=lalalclrs[math.random(1,#lalalclrs)]
game:service'Debris':AddItem(fir,.5)
local frms=Instance.new('BlockMesh',fir)
coroutine.wrap(function()
for lal=1,10 do
frms.Scale=frms.Scale-Vector3.new(.1,.1,.1)
fir.CFrame=fir.CFrame*CFrame.new(0,dy,0)
wait()
end
end)()]] end end end))


function joej()
	flying=true
	otheranims=true
	anim="Intro"
	partid.Enabled=false
	partif.Enabled=false
	wait(0.1)
	armmovement=true
	introo.Enabled=false
	rutprt.CFrame = rutprt.CFrame * CFrame.new(0, 20, 0)
	hed.face.Transparency=1
	            for _,v in pairs(chr:children()) do
                if v:IsA("Part") then
                v.Transparency=1
                elseif v:IsA("Accessory") then
                v.Handle.Anchored=false
                v.Handle.Transparency=1
                end
	            end
	            for _,v in pairs(tail:children()) do
                if v:IsA("Part") then
                v.Transparency=1
                end
	            end
                wait(0.016666666667)
	            for _,v in pairs(chr:children()) do
                if v:IsA("Part") then
                v.Anchored=true
                end
                end
	wait(1)
	local FFed = Instance.new("ForceField",chr)
	obd.Anchored=false
	obd2.Anchored=false
	introo.Enabled=true
	wait(1.5)
	local deed=Instance.new('Part',script.Parent)
	deed.formFactor='Custom'
	deed.Size=Vector3.new(1,1,1)
	deed.BrickColor=BrickColor.new('Bright orange')
	deed.Anchored=true
	deed.CanCollide=false
	deed.Transparency=1
	deed:breakJoints()
	deed.Locked=true
	deed.Material="Neon"
	deed.Name="ded"
	deed.CFrame=torso.CFrame
	local obj1m=Instance.new('SpecialMesh',deed)
	obj1m.MeshType="Sphere"
	obj1m.Scale=Vector3.new(1, 1, 1)
	local obj1waaddh=Instance.new('Weld',deed)
	obj1waaddh.Part0=torso
	obj1waaddh.Part1=deed
	
CreateSound("http://roblox.com/asset/?id=486262895", chr, 1.5, 1)
wait(2.5)
for i = 0, 8, 0.1 do
obj1m.Scale=obj1m.Scale+Vector3.new(.2, .2, .2)
deed.Transparency=deed.Transparency-.05
wait()
end
wait(.05)
	hed.face.Transparency=0
               deed:remove()
	            for _,v in pairs(chr:children()) do
                if v:IsA("Part") then
                v.Transparency=0
                elseif v:IsA("Accessory") then
                v.Handle.Transparency=0
                end
	            end
	            for _,v in pairs(tail:children()) do
                if v:IsA("Part") then
                v.Transparency=0
                end
	            end
		partid.Enabled=true
	partif.Enabled=true
	
CreateSound("http://roblox.com/asset/?id=579687077", chr, 1.5, .5)
CreateSound("http://roblox.com/asset/?id=203691653", chr, 1.5, .5)
CreateSound("http://roblox.com/asset/?id=161006069", chr, 1.5, 1)
int1.Enabled=true
int2.Enabled=true
int3.Enabled=true
FFed:Remove()
wait(.1)
ff.Transparency=1
obd.Transparency=1
obd2.Transparency=1
rutprt.Transparency=1
introo.Enabled=false
wait(.0000001)
int1.Enabled=false
int2.Enabled=false
int3.Enabled=false
wait(2)
	            for _,v in pairs(chr:children()) do
                if v:IsA("Part") then
                v.Anchored=false
                end
	             end
	otheranims=false
anim="Falling"
flying=false
armmovement=false
chr.Humanoid.MaxHealth = 10000
wait(.1)
chr.Humanoid.Health = 10000
ffwhileintro = false
coroutine.wrap(function()
wait(15)
kkk:Play()
end)()
end
--380888758
--380888410
----------------------------------------------------------------------------


game:service'RunService'.RenderStepped:connect(function()
syne=syne+1
if not otheranims then
if (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 1 and torso.Velocity.y<1 and torso.Velocity.y>-1 then
anim="Idling"

elseif (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude > 1 and (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude < 30 and torso.Velocity.y<1 and torso.Velocity.y>-1 then
anim="Walking"

elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 30 and torso.Velocity.y<1 and torso.Velocity.y>-1 then
anim="Sprinting"

elseif (torso.Velocity.y > 1) then
anim="Jumping"

elseif (torso.Velocity.y < -1) then
anim="Falling"
--torso.Velocity=(((rutprt.CFrame*CFrame.new(0,0,-3)).p-rutprt.CFrame.p).unit*chr.Humanoid.WalkSpeed)+Vector3.new(0,-(27.5),0)
end
end
if anim=="Idling" then
idlesineinc=40
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525+math.cos(syne/idlesineinc)/25,0)*CFrame.Angles(0,0,math.rad(3)),.1)
end

larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525+math.cos(syne/idlesineinc)/25,0)*CFrame.Angles(0,0,math.rad(-3)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.9-math.cos(syne/idlesineinc)/20,(math.cos(syne/idlesineinc)/35))*CFrame.Angles(-(math.cos(syne/idlesineinc)/35),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.9-math.cos(syne/idlesineinc)/20,(math.cos(syne/idlesineinc)/35))*CFrame.Angles(-(math.cos(syne/idlesineinc)/35),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/idlesineinc)/50,0)*CFrame.Angles(math.cos(syne/idlesineinc)/40,0,0),.1)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,-.1+math.cos(syne/idlesineinc)/20,0)*CFrame.Angles(math.cos(syne/idlesineinc)/35+math.rad(0),math.rad(0),math.rad(0)),.1)
end
if anim=="Walking" then
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525+math.cos(syne/15)/25,0)*CFrame.Angles(math.cos(syne/6)/1.25,math.rad(5),-(math.cos(syne/6.75)/15)+math.rad(3)),.1)
end

larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525+math.cos(syne/15)/25,0)*CFrame.Angles(-(math.cos(syne/6)/1.25),0,-(math.cos(syne/6.75)/15)-math.rad(3)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.9-math.cos(syne/6)/10,-(math.cos(syne/6)/1.125))*CFrame.Angles(math.cos(syne/6)/1.125,0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.9-math.cos(syne/6)/10,math.cos(syne/6)/1.125)*CFrame.Angles(-(math.cos(syne/6)/1.125),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/20)/50,0)*CFrame.Angles(-math.cos(syne/3)/20,0,0),.1)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,-.1+math.cos(syne/3.375)/20,math.cos(syne/3)/5)*CFrame.Angles(math.cos(syne/3)/20+math.rad(-3.5),math.cos(syne/6)/10,-math.cos(syne/6)/30+math.sin(rutprt.RotVelocity.y/2)/7.5),.1)
end

if anim=="Sprinting" then
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(-math.cos(syne/2.5)/10+math.rad(-55),0,math.rad(12.5)),.1)
end

obj1w.C0=Lerp(obj1w.C0,CFrame.new(0,-.9,.65)*CFrame.Angles(-math.sin(syne/4)/3+(math.rad(-92.5)),-math.sin(syne/4)/3,0),.05)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(-math.cos(syne/2.5)/10+math.rad(-55),0,math.rad(-12.5)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.6-math.cos(syne/4)/4,-(math.cos(syne/4)*2))*CFrame.Angles(math.cos(syne/4)*2,0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.6-math.cos(syne/4)/4,math.cos(syne/4)*2)*CFrame.Angles(-(math.cos(syne/4)*2),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/20)/50,0)*CFrame.Angles(-math.cos(syne/2.5)/10+math.rad(10),0,0),.1)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,-.3+math.cos(syne/2.5)/15,math.cos(syne/2.5)/1.5)*CFrame.Angles(math.cos(syne/2.5)/10+math.rad(-15),math.cos(syne/2.5)/10,math.cos(syne/4)/20+math.sin(rutprt.RotVelocity.y/2)/4),.1)
end

if anim=="Jumping" then if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(30),0,math.rad(30)),.15)
end

larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(30),0,math.rad(-30)),.15)
obj1w.C0=Lerp(obj1w.C0,CFrame.new(0,-.9,.65)*CFrame.Angles((math.rad(-55)),0,0),.05)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.85,-.1)*CFrame.Angles(0,0,math.rad(-2.5)),.05)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.85,-.1)*CFrame.Angles(0,0,math.rad(2.5)),.05)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),0,0),.05)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,-.3,0)*CFrame.Angles(math.rad(-20),0,math.sin(rutprt.RotVelocity.y/2)/4),.1)
end

if anim=="Falling" then
 if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.425,.525,0)*CFrame.Angles(math.rad(65),0,math.rad(45)),.15)
end

larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.425,.525,0)*CFrame.Angles(math.rad(65),0,math.rad(-45)),.15)
obj1w.C0=Lerp(obj1w.C0,CFrame.new(0,-.9,.65)*CFrame.Angles((math.rad(-95)),0,0),.05)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.75,-1.3,-.8)*CFrame.Angles(math.rad(55),0,math.rad(-15)),.05)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.75,-1.3,-.8)*CFrame.Angles(math.rad(55),0,math.rad(15)),.05)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),0,0),.05)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,-.3,0)*CFrame.Angles(math.rad(-40),0,math.sin(rutprt.RotVelocity.y/2)/4),.1)
end
if armpose=='ReplacingStick' and armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(-140),0,math.rad(-20)),.075)

end

if armpose=='PreSwing' and armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(179),0,math.rad(10)),.15)

end

if armpose=='Swing' and armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(25),0,math.rad(10)),.2)

end

if armpose=='Spin' and armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5592658, 0.940554738, -0.591176093, 0.987018883, -0.149630487, -0.0583479553, -0.129796982, -0.529219866, -0.838498175, 0.0945859849, 0.835186839, -0.541771591) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),  .2)
obj5w.C0=CFrame.new(0,-1,-.5)*CFrame.Angles(-math.rad(92),0,0+5*syne/10)
end

if armpose=='Swing1' and armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.7384234, 0.825379133, -0.523169041, 0.736852169, -0.642609894, -0.210003436, -0.523633122, -0.34600994, -0.778514922, 0.427618086, 0.683615208, -0.591450036) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .35)
end

if armpose=='Swing2' and armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.11459601, 0.150975525, -0.581117749, 0.720169067, 0.459199309, 0.520088971, 0.21414803, 0.565899074, -0.796177685, -0.659922063, 0.684758663, 0.309206367) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .35)
end

if armpose=='Swing3' and armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.2455333, 0.818116605, -0.699264765, 0.648813188, 0.57158792, 0.502323449, 0.737601161, -0.310140967, -0.599797666, -0.187046051, 0.759670854, -0.622827411) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .35)
end

if armpose=='Swing4' and armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.68857183, 0.0793643594, -0.213749051, 0.534891903, -0.749955297, -0.389175683, 0.214147955, 0.565899074, -0.796177745, 0.817331791, 0.342527866, 0.463296235) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .35)
end



if otheranims then
if anim=='SuperCrouch' then
if not equipped and not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(50)),.05)
end
obj1w.C0=Lerp(obj1w.C0,CFrame.new(0,-.9,.65)*CFrame.Angles((math.rad(-25)),0,0),.05)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(-50)),.05)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1,0)*CFrame.Angles(math.rad(-20),0,math.rad(-2.5)),.05)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-.8,-.65)*CFrame.Angles(math.rad(10),0,math.rad(2.5)),.05)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,.3)*CFrame.Angles(math.rad(40),0,0),.05)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,-1.4,.2)*CFrame.Angles(math.rad(-14),math.rad(0),math.rad(0)),.05)
end

if anim=="SuperJump" then
if not armmovement and not equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.4,.525,0)*CFrame.Angles(math.rad(-10),0,math.rad(20)),.1)
end
obj1w.C0=Lerp(obj1w.C0,CFrame.new(0,-.9,.65)*CFrame.Angles((math.rad(-75)),0,0),.05)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.4,.525,0)*CFrame.Angles(math.rad(-10),0,math.rad(-20)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.8,0)*CFrame.Angles(math.rad(-2.5),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.8,0)*CFrame.Angles(math.rad(-2.5),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,.3)*CFrame.Angles(math.rad(30),0,0),.1)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(0),math.rad(0)),.1)
end

if anim=="Intro" then
if not armmovement and not equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.77279222, 0.206299603, 0.555094302, 0.687406182, -0.625818074, -0.368543863, 0.726155162, 0.601381421, 0.333225369, 0.0130970031, -0.496681184, 0.86783427) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .9)
end
obj1w.C0=Lerp(obj1w.C0,CFrame.new(0,-.9,.65)*CFrame.Angles((math.rad(-75)),0,0),.9)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.836748, 0.286180377, 0.595903277, 0.532871246, 0.734829843, 0.419610947, -0.846196413, 0.462740898, 0.264239609, -0, -0.495878875, 0.868391752) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .9)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-0.873395443, -1.71634007, 0.653988361, 0.924032331, 0.382314533, -1.11196096e-006, -0.326452106, 0.789017379, 0.520461977, 0.198981076, -0.480923235, 0.853884876) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .9)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(0.632278264, -1.65728009, 0.470435083, 0.952669501, -0.25970006, -0.158040062, 0.304007858, 0.81382215, 0.495250195, 0, -0.519855142, 0.854254484) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),  .9)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0, 1.40877497, 0.197028607, 1, 0, -0, 0, 0.907470882, -0.420114934, 0, 0.420114934, 0.907470882) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),  .9)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), .9)
end

end

chr.Humanoid.CameraOffset=(rutprt.CFrame:toObjectSpace(hed.CFrame)).p+Vector3.new(0,-1.25,0)
end)


--[[		while 1 do
		swait()
		if hobb <= 360 then
			hobb = hobb + 2
		else
			hobb = 0
			end
		Torsovelocity = (rutprt.Velocity * Vector3.new(1, 0, 1)).magnitude
		velocity = rutprt.Velocity.y
		sine = sine + change
		local hit, pos = rayCast(rutprt.Position, CFrame.new(rutprt.Position, rutprt.Position - Vector3.new(0, 1, 0)).lookVector, 4, chr)



                            Anim="Idle"
							--change = 1
							 
							objd.C0 = clerp(objd.C0, CFrame.new(0,0,0) * angles(math.rad(hobb),0,0+ 2 * math.cos((sine) / 30)), 0.3)
							objd2.C0 = clerp(objd2.C0, CFrame.new(0,0,0) * angles(math.rad(-hobb),0,0+ 2 * math.cos((sine) / 30)), 0.3)
]]
--end
--[[		Torsovelocity = (rutprt.Velocity * Vector3.new(1, 0, 1)).magnitude
		velocity = rutprt.Velocity.y
		local hit, pos = rayCast(rutprt.Position, CFrame.new(rutprt.Position, rutprt.Position - Vector3.new(0, 1, 0)).lookVector, 4, chr)

sine = sine + change
if Torsovelocity < 1 and hit ~= nil then]]
Rotate1 = coroutine.create(function()
while wait() do
obj1waah.C0 = obj1waah.C0 * CFrame.Angles(0, 0.1, 0)-- * * math.cos(sine / 30)
obj1waah.C1 = obj1waah.C1 * CFrame.Angles(0.05, 0,0.03)
end
end)
coroutine.resume(Rotate1)
Rotate2 = coroutine.create(function()
while wait() do
obj1wbb.C0 = obj1wbb.C0 * CFrame.Angles(0, -0.1, 0)
obj1wbb.C1 = obj1waah.C1 * CFrame.Angles(0.05, 0, 0.03)
end
end)
coroutine.resume(Rotate2)
--end
kkk = Instance.new("Sound",chr)
kkk.Volume = 1.2
kkk.PlaybackSpeed = 1
kkk.Pitch = 1
kkk.SoundId = "rbxassetid://380888758"
kkk:Stop()
kkk.Name = "stolen"
kkk.Looped = true

ahd = Instance.new("Sound",chr)
ahd.Volume = 1.2
ahd.PlaybackSpeed = 1
ahd.Pitch = 1
ahd.SoundId = "rbxassetid://380888410"
ahd:Play()
ahd.Name = "aa"
ahd.Looped = false

antibrokball = Instance.new("Part",hooh)
antibrokball.Size = Vector3.new(2050, 0.2, 2050)
antibrokball.Name = "cri"
antibrokball.CanCollide = false
antibrokball.Anchored = true
antibrokball.Transparency = 1
antibrokball.CFrame = CFrame.new(0,-200,0)

coroutine.wrap(function()
	while true and wait(1) do
		if antibrokball.Parent == nil then
			antibrokball = Instance.new("Part",hooh)
			antibrokball.Size = Vector3.new(2050, 0.2, 2050)
			antibrokball.Name = "cri"
			antibrokball.CanCollide = false
			antibrokball.Anchored = true
			antibrokball.Transparency = 1
			antibrokball.CFrame = CFrame.new(0,-200,0)
		end
	end
end)()

coroutine.wrap(function()
while wait(.0001) and ffwhileintro == true do
	local FFed = Instance.new("ForceField",chr)
	wait(.0001)
	FFed:Remove()
end
end)()

joej()


--V sinc u use dis, i disabled dis aboose nuk
--[[function onDied()
script.Parent=game.Workspace
coroutine.wrap(function()
while wait() and kkk and kkk.Volume >= 0 do
	kkk.Volume = kkk.Volume - 0.05
	ahd.Volume = ahd.Volume - 0.05
end
end)()


local eed=Instance.new('Part',script.Parent)
eed.formFactor='Custom'
eed.Size=Vector3.new(.2,.2,.2)
eed.BrickColor=BrickColor.new('Bright orange')
eed.Anchored=true
eed.CanCollide=false
eed.Transparency=1
eed:breakJoints()
eed.Locked=true
eed.Material="Neon"
eed.Name="ded"
eed.CFrame=torso.CFrame
local obj1m=Instance.new('SpecialMesh',eed)
obj1m.MeshType="Sphere"
obj1m.Scale=Vector3.new(100, 100, 100)
obj1waaht=Instance.new('Weld',eed)
obj1waaht.Part0=torso
obj1waaht.Part1=eed

	obj1.Anchored=true
	            for _,v in pairs(chr:children()) do
                if v:IsA("Part") then
                v.Anchored=true
                elseif v:IsA("Accessory") then
                v.Handle.Anchored=true

                end
	            end
	            for _,v in pairs(tail:children()) do
                if v:IsA("Part") then
                v.Anchored=true
                end
	            end
	wait(.2)

CreateSound("http://roblox.com/asset/?id=200633529", workspace, 1, .4)
obj1m.Scale=Vector3.new(100, 100, 100)
for i = 0, 4, 0.1 do
obj1m.Scale=obj1m.Scale-Vector3.new(1.2, 1.2, 1.2)
eed.Transparency=eed.Transparency-.03
wait()
end

wait(.4)

	            for _,v in pairs(chr:children()) do
                if v:IsA("Part") then
                v.Anchored=false
                v.Transparency=1
                elseif v:IsA("Accessory") then
                v.Handle.Anchored=false
                v.Handle.Transparency=1
                end
	                end
	            for _,v in pairs(tail:children()) do
                if v:IsA("Part") then
                v.Anchored=false
                end
	            end
	           
                UltExplodeMass(125*2,eed)

wait(12)
eed:Remove()
script.Parent=nil
end
chr.Humanoid.Died:connect(onDied)]]
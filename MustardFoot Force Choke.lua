local plr = game.Players.LocalPlayer
local good = true
local R15 = false
while plr.Character == nil or plr.Character:FindFirstChildOfClass('Humanoid') == nil do
	wait()
end
if plr.Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
	R15 = true
end

function makegui()
	-- Objects

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextLabel")

-- Properties

ScreenGui.Parent = plr.PlayerGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Frame.BackgroundTransparency = 0.5
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(1, 0, 0, 0)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BackgroundTransparency = 1
TextBox.Position = UDim2.new(0.05, 0, 0.05, 0)
TextBox.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
TextBox.Font = Enum.Font.Code
TextBox.FontSize = Enum.FontSize.Size14
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.TextScaled = true
TextBox.TextSize = 14
TextBox.TextWrapped = true
Frame:TweenSize(UDim2.new(1, 0, 0.2, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Bounce,1,false)
wait(1.5)
local text = "This script doesn't work in R15, sorry!"
for i=1,string.len(text) do
	TextBox.Text = string.sub(text,1,i)
	wait()
end
wait(2)
TextBox.Text = ""
Frame:TweenSize(UDim2.new(1, 0, 0, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Bounce,1,false)
end
function makegui2()
	-- Objects

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextLabel")

-- Properties

ScreenGui.Parent = plr.PlayerGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Frame.BackgroundTransparency = 0.5
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(1, 0, 0, 0)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BackgroundTransparency = 1
TextBox.Position = UDim2.new(0.05, 0, 0.05, 0)
TextBox.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
TextBox.Font = Enum.Font.Code
TextBox.FontSize = Enum.FontSize.Size14
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.TextScaled = true
TextBox.TextSize = 14
TextBox.TextWrapped = true
Frame:TweenSize(UDim2.new(1, 0, 0.2, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Bounce,1,false)
wait(1.5)
local text = "This script doesn't work in Filtering Enabled, sorry!"
for i=1,string.len(text) do
	TextBox.Text = string.sub(text,1,i)
	wait()
end
wait(2)
TextBox.Text = ""
Frame:TweenSize(UDim2.new(1, 0, 0, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Bounce,1,false)
end
function makegui3()
	-- Objects

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextLabel")

-- Properties

ScreenGui.Parent = plr.PlayerGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Frame.BackgroundTransparency = 0.5
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(1, 0, 0, 0)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BackgroundTransparency = 1
TextBox.Position = UDim2.new(0.05, 0, 0.05, 0)
TextBox.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
TextBox.Font = Enum.Font.Code
TextBox.FontSize = Enum.FontSize.Size14
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.TextScaled = true
TextBox.TextSize = 14
TextBox.TextWrapped = true
Frame:TweenSize(UDim2.new(1, 0, 0.2, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Bounce,1,false)
wait(1.5)
local text = "Press F on a player to force choke them, and hold G to use force lightning."
for i=1,string.len(text) do
	TextBox.Text = string.sub(text,1,i)
	wait()
end
wait(2)
TextBox.Text = ""
Frame:TweenSize(UDim2.new(1, 0, 0, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Bounce,1,false)
end


local coru = coroutine.wrap(function()
if R15 then
	good = false
	makegui()
elseif workspace.FilteringEnabled then
	good = false
	makegui2()
else
	makegui3()
end
end)
coru()


if good then
local mou = plr:GetMouse()
local choking = false
local zapping = false
local target = nil
local lastzap = nil
local oldHit = nil
local startpos = CFrame.new(0,0,0)
local beforehealth = 100
local timez = 0

Gibs = workspace
 
function Kill(Character,yee,oh)
if Character:FindFirstChildOfClass('Humanoid') then
Character:FindFirstChildOfClass('Humanoid').Health = 0
    local svch = Character
    local hum = Character:findFirstChild("Humanoid")
    Character.Archivable = true
    local chrclone = Character:clone()
    Character.Archivable = false
 
    local ch = chrclone:GetChildren()
    local i
    for i = 1,#ch do
        if ch[i].Name == "THandle1" or ch[i].Name == "THandle2" or ch[i].ClassName == "Script" then
            ch[i]:remove()
        end
    end
    local function Scan(ch)
        local e
        for e = 1,#ch do
            Scan(ch[e]:GetChildren())
            if ch[e].ClassName == "Weld" or ch[e].ClassName == "Motor6D" then
                ch[e]:remove()
            end
        end
    end
    Scan(chrclone:GetChildren())
 
    local hum2 = chrclone:findFirstChild("Humanoid")
 
 
    if hum2 ~= nil then
        hum2.Name = "Humanoid2"
        hum2.PlatformStand = true
        hum2.Sit = true
        hum2.MaxHealth = 0
        hum2.Health = 0
    end
 
    local ch = Character:GetChildren()
    local i
    for i = 1,#ch do
        if ch[i].Name == "THandle1" or ch[i].Name == "THandle2" then
            ch[i]:remove()
        end
    end
 
    wait(0.2)
 
    local ch = Character:GetChildren()
    local i
    for i = 1,#ch do
        if ch[i].ClassName == "Part" or ch[i].ClassName == "Hat" or ch[i].Name == "THandle1" or ch[i].Name == "THandle2" then
            ch[i]:remove()
        end
    end
    Character = chrclone
    local Torso = Character.Torso
    local movevector = Vector3.new()
 	if Character.Torso ~= nil then
                local killtors = Character:findFirstChild("Torso")
                if killtors ~= nil then
                    movevector = CFrame.new(plr.Character["Right Arm"].Position,Torso.Position).lookVector
                end
            end
    if Torso then
        local Head = Character:FindFirstChild("Head")
        if Head and yee == false then
            local Neck = Instance.new("Weld")
            Neck.Name = "Neck"
            Neck.Part0 = Torso
            Neck.Part1 = Head
            Neck.C0 = CFrame.new(0, 1.5, 0)
            Neck.C1 = CFrame.new()
            Neck.Parent = Torso
        end
        local Limb = Character:FindFirstChild("Right Arm")
        if Limb then  
        Limb.CFrame = Torso.CFrame * CFrame.new(1.5, 0, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "RightShoulder"
            Joint.Part0 = Torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.Parent = Torso
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = Character
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
        local Limb = Character:FindFirstChild("Left Arm")
        if Limb then
            Limb.CFrame = Torso.CFrame * CFrame.new(-1.5, 0, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "LeftShoulder"
            Joint.Part0 = Torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.Parent = Torso
 
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = Character
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
        local Limb = Character:FindFirstChild("Right Leg")
        if Limb then
 
            Limb.CFrame = Torso.CFrame * CFrame.new(0.5, -2, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "RightHip"
            Joint.Part0 = Torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.Parent = Torso
 
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = Character
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
 
        end
        local Limb = Character:FindFirstChild("Left Leg")
        if Limb then
 
            Limb.CFrame = Torso.CFrame * CFrame.new(-0.5, -2, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "LeftHip"
            Joint.Part0 = Torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.Parent = Torso
 
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = Character
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
 
        end
        --[
        local Bar = Instance.new("Part")
        Bar.TopSurface = 0
        Bar.BottomSurface = 0
        Bar.formFactor = "Symmetric"
        Bar.Size = Vector3.new(1, 1, 1)
        Bar.Transparency = 1
        Bar.CFrame = Torso.CFrame * CFrame.new(0, 0.5, 0)
        Bar.Parent = Character
        local Weld = Instance.new("Weld")
        Weld.Part0 = Torso
        Weld.Part1 = Bar
        Weld.C0 = CFrame.new(0, 0.5, 0)
        Weld.Parent = Torso
        --]]
    end
    Character.Parent = Gibs
    game.Debris:AddItem(Character, 12)
    Character.Torso.Velocity = plr.Character.Torso.CFrame.lookVector*10
    Character.Head.Velocity = plr.Character.Torso.CFrame.lookVector*10
	if oh then
		local repulse = Instance.new('BodyForce',Torso)
      		repulse.Force = movevector*10000 + Vector3.new(0,1000,0)
       		game.Debris:AddItem(repulse,0.05)
		for i,v in pairs(chrclone:GetChildren()) do
			if v:IsA('BasePart') then
				v.BrickColor = BrickColor.Black()
			end
		end
		local sound = Instance.new('Sound',Torso)
		sound.EmitterSize = 50
		sound.MaxDistance = 100
		sound.Volume = 6
		sound.SoundId = 'rbxassetid://157325701'
		sound:Play()
		sound.Ended:connect(function()
			sound:Destroy()
		end)
	end
    local duh = Torso
if yee == true then
ee = Instance.new("Part")
ee.Anchored = false
ee.CanCollide = false
ee.Parent = duh
ee.Transparency =1
ee.Size = Vector3.new(0.15, 0.15, 0.15)
wee = Instance.new("Weld")
wee.Parent = duh
wee.Part0 = duh
wee.Part1 = ee
wee.C0 = CFrame.new(0, 1, 0)
ge = Instance.new('ParticleEmitter')
ge.Parent = ee
ge.Texture = "rbxassetid://29712167"
ge.Size = NumberSequence.new(0.2,0.05)
ge.Acceleration = Vector3.new(0, -20, 0)
ge.Rate = 100000
ge.Speed = NumberRange.new(7,8)
ge.Lifetime = NumberRange.new(3,4)
ge.VelocitySpread = 10
ge.VelocityInheritance = 0.3
ea = Instance.new("Part")
ea.Anchored = false
ea.CanCollide = false
ea.Parent = Character.Head
ea.Transparency =1
ea.Size = Vector3.new(0.15, 0.15, 0.15)
wea = Instance.new("Weld")
wea.Parent = Character.Head
wea.Part0 = Character.Head
wea.Part1 = ea
wea.C0 = CFrame.new(0, -0.7, 0)
ga = Instance.new('ParticleEmitter')
ga.Parent = ea
ga.Texture = "rbxassetid://29712167"
ga.Size = NumberSequence.new(0.2,0.05)
ga.Acceleration = Vector3.new(0, -20, 0)
ga.Rate = 100000
ga.Speed = NumberRange.new(7,8)
ga.Lifetime = NumberRange.new(3,4)
ga.VelocitySpread = 10
ga.VelocityInheritance = 0.3
ga.EmissionDirection = Enum.NormalId.Bottom
end
end
end

function gettouching(startpos,endpos,dont)
	local ray = Ray.new(startpos,(endpos-startpos).unit*300)
	local ignore = {}
	for i,v in pairs(game:GetService('Players'):GetChildren()) do
		if v.Character and v ~= plr then
			table.insert(ignore,v.Character)
		end
	end
	local part,pos = workspace:FindPartOnRayWithWhitelist(ray,ignore,false)
	if part then
		if part.Parent:FindFirstChildOfClass('Humanoid') and part.Parent:FindFirstChildOfClass('Humanoid').Health > 0 then
			local coru = coroutine.wrap(function()
				Kill(part.Parent,false,true)
			end)
			coru()
		end
	end
	table.insert(ignore,dont)
	local part2,pos2 = workspace:FindPartOnRayWithIgnoreList(ray,ignore,false,true)
	if part2 and part2.Parent and part2.Parent ~= plr.Character and part2.Parent:FindFirstChildOfClass('Humanoid') and part2.Parent:FindFirstChildOfClass('Humanoid').Health > 0 then
		local coru = coroutine.wrap(function()
			Kill(part2.Parent,false,true)
		end)
		coru()
	end
end

function makelaser(parent)
	local part = Instance.new('Part',parent)
	part.Size = Vector3.new(0.2,0.2,0.2)
	part.Transparency = 1
	part.CanCollide = false
	local weld = Instance.new('Weld',part)
	weld.Part0 = part
	weld.Part1 = plr.Character["Right Arm"]
	weld.C0 = CFrame.new(0,1.25,0)
	for i=1,5 do
	local mouse = mou
	targ = mouse.Target
	if targ then
	hum = targ.Parent:findFirstChild("Humanoid")
	Hit = mouse.hit
	local P = Instance.new("Part") 
	P.Name = "Guideline" 
	P.Material = Enum.Material.Neon
	local Place0 = part.CFrame
	P.formFactor = 0 
	P.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
	if plr.Character:FindFirstChild('Right Arm') then
		for i,v in pairs(plr.Character:FindFirstChild('Right Arm'):GetChildren()) do
			if v:IsA('Sound') and v.Name == "Electricity" then
				if Place0 and Hit and (Place0.p - Hit.p).magnitude >= 20 then
					v.MaxDistance = (Place0.p - Hit.p).magnitude
					v.EmitterSize = (Place0.p - Hit.p).magnitude
				elseif Place0 and Hit then
					v.MaxDistance = 20
					v.EmitterSize = 20
				end
			end
		end
	end
	P.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
	P.Parent = parent
	P.BrickColor = BrickColor.Yellow()
	P.Anchored = true 
	P.CanCollide = false
	P.Transparency = 1
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.1,0.1,1)
	m.Parent = P
	local mh = mouse.Hit
	for c1 = 1, 1 do
		oldHit = part.CFrame
		for count = 1, 9 do
			local val1 = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
			local val2 = P.Size.z / 10
			local val3 = P.CFrame.lookVector * -1
			local val4 = count * val2
			local val5 = val4 * val3
			local val6 = part.CFrame.p
			local Hit = CFrame.new(val5 + val1 + val6)
			local s = Instance.new("Part") 
			s.Name = "Spark" 
			s.Material = Enum.Material.Neon
			local Place0 = oldHit
			s.formFactor = 0 
			s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude)
			s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
			s.Parent = parent
			s.BrickColor = BrickColor.new('Instatutional white')
			s.Anchored = true 
			s.CanCollide = false
			m = Instance.new("BlockMesh")
			m.Scale = Vector3.new(0.1,0.1,1)
			m.Parent = s
			local clone = s:clone()
			clone.Mesh.Scale = Vector3.new(0.3,0.3,1.1)
			clone.BrickColor = BrickColor.new('Electric blue')
			clone.Transparency = 0.8
			clone.Parent = s.Parent
			oldHit = Hit
		end
		Hit = oldHit
		local s = Instance.new("Part") 
		s.Name = "Spark" 
		s.Material = Enum.Material.Neon
		local Place0 = mh
		s.formFactor = 0 
		s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
		s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
		s.Parent = parent
		s.BrickColor = BrickColor.new('Instatutional white')
		s.Anchored = true 
		s.CanCollide = false
		m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.1,0.1,1)
		m.Parent = s
		local clone = s:clone()
		clone.Mesh.Scale = Vector3.new(0.3,0.3,1.1)
        clone.BrickColor = BrickColor.new('Electric blue')
		clone.Transparency = 0.8
		clone.Parent = s.Parent
		gettouching(part.Position,mou.Hit.p,parent)
	end
	P:remove()
	end
	end
end

function chokearms(chr)
	if chr:FindFirstChild('Torso') then
		if chr:FindFirstChild('Right Arm') then
			if chr.Torso:FindFirstChild('Right Shoulder') then
				chr.Torso["Right Shoulder"]:Destroy()
			end
			local thing = Instance.new('Weld',chr.Torso)
			thing.Name = "Right Shoulder"
			thing.Part0 = chr.Torso
			thing.Part1 = chr["Right Arm"]
			thing.C0 = CFrame.new(0.811074257, 0.835914135, -0.381313324, 0.27563563, 0.961260796, 2.0569455e-06, 0.488285512, -0.140010983, -0.861379266, -0.828009903, 0.237427771, -0.50796169)		
		end
		if chr:FindFirstChild('Left Arm') then
			if chr.Torso:FindFirstChild('Left Shoulder') then
				chr.Torso["Left Shoulder"]:Destroy()
			end
			local thing = Instance.new('Weld',chr.Torso)
			thing.Name = "Left Shoulder"
			thing.Part0 = chr["Left Arm"]
			thing.Part1 = chr.Torso
			thing.C0 = CFrame.new(0.962814331, -0.457080841, 0.306755066, 0.309041202, -0.579310298, 0.754249752, -0.951046288, -0.188228443, 0.245104745, -2.09111568e-05, -0.793076754, -0.609121859)		
		end
	end
end

function fixarms(chr)
	if chr:FindFirstChild('Torso') then
		for i,v in pairs(chr.Torso:GetChildren()) do
			if v.Name == "Right Shoulder" or v.Name == "Left Shoulder" then
				v:Destroy()
			end
		end
		if chr:FindFirstChild('Right Arm') then
			local rs = Instance.new('Motor6D',chr.Torso)
			rs.Name = "Right Shoulder"
			rs.Part0 = chr.Torso
			rs.Part1 = chr:FindFirstChild('Right Arm')
			rs.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			rs.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
		end
		if chr:FindFirstChild('Left Arm') then
			local ls = Instance.new('Motor6D',chr.Torso)
			ls.Name = "Left Shoulder"
			ls.Part0 = chr.Torso
			ls.Part1 = chr:FindFirstChild('Left Arm')
			ls.C0 = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			ls.C1 = CFrame.new(0.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
		end
	end
end

mou.KeyDown:connect(function(key)
	if key == "f" and mou.Target and zapping == false then
		if choking == false then
			local hum = mou.Target.Parent:FindFirstChildOfClass('Humanoid')
		
			if hum == nil then
				hum = mou.Target.Parent.Parent:FindFirstChildOfClass('Humanoid')
			end
		
			if hum and hum.Parent:FindFirstChild('Torso') and hum.Health > 0 then
				beforehealth = hum.Health
				choking = true
				target = hum.Parent.Torso
				local sound = Instance.new('Sound',target)
				sound.Volume = 5
				sound.EmitterSize = 50
				sound.MaxDistance = 100
				sound.SoundId = 'rbxassetid://418658161'
				sound.Looped = false
				sound.PlaybackSpeed = 0.75
				sound.Name = "Choking"
				sound:Play()
				startpos = target.CFrame
				chokearms(target.Parent)
				local bod = Instance.new('BodyPosition',hum.Parent.Torso)
				bod.Position = target.Position+Vector3.new(0,12,0)
				bod.MaxForce = Vector3.new(100000,100000,100000)
				bod.P = 1000
				bod.D = 500
			end
			if target and target:FindFirstChild('Breathing') then
				target.Breathing:Destroy()
			end
			local coru = coroutine.wrap(function()
				while timez < 5 and choking do
					timez = timez + 0.1
					if target.Parent:FindFirstChildOfClass('Humanoid') then
						if target.Parent:FindFirstChildOfClass('Humanoid').Health - (beforehealth/49) > 0 then
							target.Parent:FindFirstChildOfClass('Humanoid').Health = target.Parent:FindFirstChildOfClass('Humanoid').Health - (beforehealth/49)
						end
					end
					wait(0.1)				
				end
				if timez >= 5 then
					if target and target.Parent and target.Parent:FindFirstChildOfClass('Humanoid') and target.Parent:FindFirstChildOfClass('Humanoid').Health > 0 then
						if target and target:FindFirstChild('Choking') then
							target.Choking:Stop()
							target.Choking:Destroy()
						end
						if target then
							for i,v in pairs(target:GetChildren()) do
								if v:IsA("BodyPosition") then
									v:Destroy()
								end
							end
						end
						Kill(target.Parent,false,false)
					end
				end
				target = nil
				choking = false
				startpos = CFrame.new(0,0,0)
				timez = 0
				for i,v in pairs(plr.Character.Torso:GetChildren()) do
					if v.Name == "Right Shoulder" and v:IsA('Weld') then
						v:Destroy()
					end
				end
				if plr.Character.Torso:FindFirstChild('Right Shoulder') == nil then
					local rs = Instance.new('Motor6D',plr.Character.Torso)
					rs.Name = "Right Shoulder"
					rs.Part0 = plr.Character.Torso
					rs.Part1 = plr.Character:FindFirstChild('Right Arm')
					rs.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
					rs.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				end
			end)
			coru()
		else
			if target and target:FindFirstChild('Choking') then
				fixarms(target.Parent)
				target.Choking:Stop()
				target.Choking:Destroy()
				local sound = Instance.new('Sound',target)
				sound.Volume = 5
				sound.EmitterSize = 50
				sound.MaxDistance = 100
				sound.SoundId = 'rbxassetid://304511128'
				sound.Looped = true
				sound.PlaybackSpeed = 1
				sound.Name = "Breathing"
				sound:Play()
				game:GetService('Debris'):AddItem(sound,timez)
				for i,v in pairs(target:GetChildren()) do
					if v:IsA("BodyPosition") then
						v:Destroy()
					end
				end
			end
			if target.Parent:FindFirstChildOfClass('Humanoid') then
				target.Parent:FindFirstChildOfClass('Humanoid').Health = beforehealth
			end
			target = nil
			choking = false
			startpos = CFrame.new(0,0,0)
			timez = 0
		end
	elseif key == "g" and choking == false then
		zapping = true
		local electricity = Instance.new("Sound",plr.Character:FindFirstChild('Right Arm'))
		electricity.Name = "Electricity"
		electricity.SoundId = "rbxassetid://379557765"
		electricity.Volume = 5
		electricity.EmitterSize = 100
		electricity.MaxDistance = 100
		electricity.Looped = true
		electricity:Play()
	end
end)

mou.KeyUp:connect(function(key)
	if key == "g" then
		zapping = false
		if plr.Character:FindFirstChild('Right Arm') then
			for i,v in pairs(plr.Character:FindFirstChild('Right Arm'):GetChildren()) do
				if v:IsA('Sound') and v.Name == "Electricity" then
					v:Destroy()
				end
			end
		end
	end
end)


while true do
	if choking and plr.Character and target and target.Parent and plr.Character:FindFirstChild('Head') and plr.Character:FindFirstChild('Right Arm') and plr.Character:FindFirstChild('Torso') then
		for i,v in pairs(plr.Character.Torso:GetChildren()) do
			if v.Name == "Right Shoulder" then
				v:Destroy()
			end
		end
        local Head = plr.Character.Head
        local RightArm = plr.Character["Right Arm"]
		local RightShoulder = Instance.new('Weld',plr.Character.Torso)
		RightShoulder.Name = "Right Shoulder"
		RightShoulder.Part0 = plr.Character.Torso
		RightShoulder.Part1 = RightArm
		RightShoulder.C0 = CFrame.new(1,1,-0.75)
        local MousePosition = target.Position+(target.Size/2)
        local ToMouse = (MousePosition - Head.Position).unit
        local Angle = math.acos(ToMouse:Dot(Vector3.new(0, 1, 0)))
        local FromRightArmPos = (Head.Position + Head.CFrame:vectorToWorldSpace(Vector3.new(((Head.Size.X / 2) + (RightArm.Size.X / 2)), ((Head.Size.Y / 2) - (RightArm.Size.Z / 2)), 0)))
        local ToMouseRightArm = ((MousePosition - FromRightArmPos) * Vector3.new(1 ,0, 1)).unit
        local Look = (Head.CFrame.lookVector * Vector3.new(1, 0, 1)).unit
        local LateralAngle = math.acos(ToMouseRightArm:Dot(Look))
        if tostring(LateralAngle) == "-1.#IND" then
            LateralAngle = 0
        end
        local Cross = Head.CFrame.lookVector:Cross(ToMouseRightArm)
		local change = false
        if LateralAngle > (math.pi / 2) then
            LateralAngle = (math.pi / 2)
			change = true
        end
        if Cross.Y < 0 then
            LateralAngle = -LateralAngle
        end
        RightShoulder.C0 = CFrame.new(RightShoulder.C0.p) * CFrame.Angles(((math.pi / 2) - Angle), ((math.pi / 2) + LateralAngle), math.pi/2)
		for i,v in pairs(target.Parent:GetChildren()) do
			if v:IsA('Tool') then
				v.ManualActivationOnly = true
			end
		end
	elseif zapping == false and plr and plr.Character and plr.Character:FindFirstChild("Torso") and plr.Character:FindFirstChild('Right Arm') then
		for i,v in pairs(plr.Character.Torso:GetChildren()) do
			if v.Name == "Right Shoulder" and v:IsA('Weld') then
				v:Destroy()
			end
		end
		if target then
		for i,v in pairs(target:GetChildren()) do
			if v:IsA("BodyPosition") then
				v:Destroy()
			end
		end
		if plr.Character.Torso:FindFirstChild('Right Shoulder') == nil then
			local rs = Instance.new('Motor6D',plr.Character.Torso)
			rs.Name = "Right Shoulder"
			rs.Part0 = plr.Character.Torso
			rs.Part1 = plr.Character:FindFirstChild('Right Arm')
			rs.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			rs.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
		end
		if target.Parent then
			for i,v in pairs(target.Parent:GetChildren()) do
				if v:IsA('Tool') then
					v.ManualActivationOnly = false
				end
			end
		end
		end
		target = nil
		choking = false
		startpos = CFrame.new(0,0,0)
		timez = 0
	end
	if zapping and plr.Character and mou.Hit and plr.Character:FindFirstChild('Head') and plr.Character:FindFirstChild('Right Arm') and plr.Character:FindFirstChild('Torso') then
		if lastzap then
			lastzap:Destroy()
			lastzap = nil
		end
		for i,v in pairs(plr.Character.Torso:GetChildren()) do
			if v.Name == "Right Shoulder" then
				v:Destroy()
			end
		end
        local Head = plr.Character.Head
        local RightArm = plr.Character["Right Arm"]
		local RightShoulder = Instance.new('Weld',plr.Character.Torso)
		RightShoulder.Name = "Right Shoulder"
		RightShoulder.Part0 = plr.Character.Torso
		RightShoulder.Part1 = RightArm
		RightShoulder.C0 = CFrame.new(1,1,-0.75)
        local MousePosition = mou.Hit.p
        local ToMouse = (MousePosition - Head.Position).unit
        local Angle = math.acos(ToMouse:Dot(Vector3.new(0, 1, 0)))
        local FromRightArmPos = (Head.Position + Head.CFrame:vectorToWorldSpace(Vector3.new(((Head.Size.X / 2) + (RightArm.Size.X / 2)), ((Head.Size.Y / 2) - (RightArm.Size.Z / 2)), 0)))
        local ToMouseRightArm = ((MousePosition - FromRightArmPos) * Vector3.new(1 ,0, 1)).unit
        local Look = (Head.CFrame.lookVector * Vector3.new(1, 0, 1)).unit
        local LateralAngle = math.acos(ToMouseRightArm:Dot(Look))
        if tostring(LateralAngle) == "-1.#IND" then
            LateralAngle = 0
        end
        local Cross = Head.CFrame.lookVector:Cross(ToMouseRightArm)
		local change = false
        if LateralAngle > (math.pi / 2) then
            LateralAngle = (math.pi / 2)
			change = true
        end
        if Cross.Y < 0 then
            LateralAngle = -LateralAngle
        end
        RightShoulder.C0 = CFrame.new(RightShoulder.C0.p) * CFrame.Angles(((math.pi / 2) - Angle), ((math.pi / 2) + LateralAngle), math.pi/2)
		local thing = Instance.new('Model',workspace)
		thing.Name = "Zap"
		lastzap = thing
		makelaser(thing)
	elseif choking == false and zapping == false then
		if lastzap then
			lastzap:Destroy()
			lastzap = nil
		end
		if plr.Character:FindFirstChild('Torso') then
		for i,v in pairs(plr.Character.Torso:GetChildren()) do
			if v.Name == "Right Shoulder" and v:IsA('Weld') then
				v:Destroy()
			end
		end
		if plr.Character.Torso:FindFirstChild('Right Shoulder') == nil then
			local rs = Instance.new('Motor6D',plr.Character.Torso)
			rs.Name = "Right Shoulder"
			rs.Part0 = plr.Character.Torso
			rs.Part1 = plr.Character:FindFirstChild('Right Arm')
			rs.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			rs.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
		end
		end
	end
	wait()
end
end
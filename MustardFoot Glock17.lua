wait(1)
---------------------------[[[ VARIABLES ]]]---------------------------

local plr = game.Players.LocalPlayer
local chr = plr.Character
local mou = plr:GetMouse()
local leftarm = false
local active = false
local curkey = "f"
local stunneds = {}

---------------------------[[[ PARTS ]]]---------------------------

-- 1 - Glock
obj1 = Instance.new("Model")
obj1.Name = "Glock"
obj1.Parent = chr

-- 2 - Part
obj2 = Instance.new("Part")
obj2.CFrame = CFrame.new(Vector3.new(14.25, 3.51428652, 46.8584824)) * CFrame.Angles(0.69812995195389, 0, -0)
obj2.TopSurface = Enum.SurfaceType.Smooth
obj2.BottomSurface = Enum.SurfaceType.Smooth
obj2.Material = Enum.Material.Metal
obj2.Size = Vector3.new(0.300000012, 0.200000003, 0.200000003)
obj2.Anchored = true
obj2.BrickColor = BrickColor.new("Black")
obj2.Friction = 0.30000001192093
obj2.Shape = Enum.PartType.Block
obj2.CanCollide = false
obj2.Parent = obj1

-- 3 - Top
obj3 = Instance.new("Part")
obj3.CFrame = CFrame.new(Vector3.new(14.25, 3.8499999, 47.1499977)) * CFrame.Angles(-0, 0, -0)
obj3.TopSurface = Enum.SurfaceType.Smooth
obj3.BottomSurface = Enum.SurfaceType.Smooth
obj3.Material = Enum.Material.Metal
obj3.Size = Vector3.new(0.300000012, 0.300000012, 1.5)
obj3.Anchored = true
obj3.BrickColor = BrickColor.new("Ghost grey")
obj3.Friction = 0.30000001192093
obj3.Shape = Enum.PartType.Block
obj3.CanCollide = false
obj3.Name = "Top"
obj3.Parent = obj1

-- 4 - Top
obj4 = Instance.new("Part")
obj4.CFrame = CFrame.new(Vector3.new(14.25, 3.8499999, 47.8999977)) * CFrame.Angles(0, 1.5707963705063, 0)
obj4.TopSurface = Enum.SurfaceType.Smooth
obj4.BottomSurface = Enum.SurfaceType.Smooth
obj4.Material = Enum.Material.Metal
obj4.Size = Vector3.new(0.200000003, 0.299999982, 0.300000012)
obj4.Anchored = true
obj4.BrickColor = BrickColor.new("Ghost grey")
obj4.Friction = 0.30000001192093
obj4.Shape = Enum.PartType.Cylinder
obj4.Name = "Top"
obj4.CanCollide = false
obj4.Parent = obj1

-- 5 - Part
obj5 = Instance.new("Part")
obj5.CFrame = CFrame.new(Vector3.new(14.25, 3.35359001, 47.1499939)) * CFrame.Angles(-1.5707978010178, 0, -0)
obj5.TopSurface = Enum.SurfaceType.Smooth
obj5.BottomSurface = Enum.SurfaceType.Smooth
obj5.Material = Enum.Material.Metal
obj5.Size = Vector3.new(0.300000012, 0.200000003, 0.299999982)
obj5.Anchored = true
obj5.BrickColor = BrickColor.new("Black")
obj5.Friction = 0.30000001192093
obj5.Shape = Enum.PartType.Block
obj5.CanCollide = false
obj5.Parent = obj1

-- 6 - Part
obj6 = Instance.new("Part")
obj6.CFrame = CFrame.new(Vector3.new(14.25, 3.5999999, 47.1499977)) * CFrame.Angles(-0, 0, -0)
obj6.TopSurface = Enum.SurfaceType.Smooth
obj6.BottomSurface = Enum.SurfaceType.Smooth
obj6.Material = Enum.Material.Metal
obj6.Size = Vector3.new(0.300000012, 0.200000003, 1.5)
obj6.Anchored = true
obj6.BrickColor = BrickColor.new("Black")
obj6.CanCollide = false
obj6.Friction = 0.30000001192093
obj6.Shape = Enum.PartType.Block
obj6.Parent = obj1

-- 7 - Part
obj7 = Instance.new("Part")
obj7.CFrame = CFrame.new(Vector3.new(14.25, 3.60000014, 47.8999977)) * CFrame.Angles(0, 1.5707963705063, 0)
obj7.TopSurface = Enum.SurfaceType.Smooth
obj7.BottomSurface = Enum.SurfaceType.Smooth
obj7.Material = Enum.Material.Metal
obj7.Size = Vector3.new(0.200000003, 0.200000003, 0.300000012)
obj7.Anchored = true
obj7.BrickColor = BrickColor.new("Black")
obj7.CanCollide = false
obj7.Friction = 0.30000001192093
obj7.Shape = Enum.PartType.Cylinder
obj7.Parent = obj1

-- 8 - Part
obj8 = Instance.new("Part")
obj8.CFrame = CFrame.new(Vector3.new(14.25, 3.15358996, 46.8499985)) * CFrame.Angles(1.1920913323138e-007, 0, -0)
obj8.TopSurface = Enum.SurfaceType.Smooth
obj8.BottomSurface = Enum.SurfaceType.Smooth
obj8.Material = Enum.Material.Metal
obj8.Size = Vector3.new(0.300000012, 0.200000003, 0.699999988)
obj8.Anchored = true
obj8.BrickColor = BrickColor.new("Black")
obj8.Friction = 0.30000001192093
obj8.CanCollide = false
obj8.Shape = Enum.PartType.Block
obj8.Parent = obj1

-- 9 - Part
obj9 = Instance.new("Part")
obj9.CFrame = CFrame.new(Vector3.new(14.25, 3.27858996, 46.5067024)) * CFrame.Angles(-1.0471963882446, 0, -0)
obj9.TopSurface = Enum.SurfaceType.Smooth
obj9.BottomSurface = Enum.SurfaceType.Smooth
obj9.Material = Enum.Material.Metal
obj9.Size = Vector3.new(0.300000012, 0.300000012, 0.699999988)
obj9.Anchored = true
obj9.BrickColor = BrickColor.new("Black")
obj9.CanCollide = false
obj9.Friction = 0.30000001192093
obj9.Shape = Enum.PartType.Block
obj9.Parent = obj1

local previous = nil
for i,v in pairs(obj1:GetChildren()) do
	if v:IsA('BasePart') then
		if previous then
			local weld = Instance.new('Weld',v)
			weld.Part0 = v
			weld.Part1 = previous
			weld.C0 = v.CFrame:inverse() * previous.CFrame
			previous.Anchored = false
		end
		previous = v
	end
end
previous.Anchored = false

---------------------------[[[ FUNCTIONS ]]]---------------------------

function notify(msg,forever)
    local doit = coroutine.wrap(function()
		for i,v in pairs(plr.PlayerGui:GetChildren()) do
			if v.Name == "Notification" and v:IsA('ScreenGui') then
				v:Destroy()
			end
		end
        local gui = Instance.new('ScreenGui',plr.PlayerGui)
        gui.Name = "Notification"
        local frame = Instance.new('Frame',gui)
        frame.Position = UDim2.new(0,0,0,0)
        frame.Size = UDim2.new(1,0,0.2,0)
        frame.BackgroundTransparency = 1
        local txt = Instance.new('TextLabel',frame)
        txt.TextColor3 = Color3.new(255,255,255)
        txt.TextStrokeColor3 = Color3.new(0, 0, 0)
        txt.TextStrokeTransparency = 0
        txt.BackgroundTransparency = 1
        txt.Text = ""
        txt.Size = UDim2.new(1,0,0.3,0)
        txt.Position = UDim2.new(0,0,0.4,0)
        txt.TextScaled = true
        txt.Font = "Code"
        txt.TextXAlignment = "Center"
        local tap = Instance.new("Sound")
        tap.Parent = plr.Backpack
        tap.SoundId = "rbxassetid://147982968"
        tap.TimePosition = 0.1
        local str = msg
        local len = string.len(str)
        for i=1,len do
            txt.Text = string.sub(str,1,i)
            local pitche = math.random(2, 4)
            tap.PlaybackSpeed = pitche
            tap:Play()
            wait(0.05)
        end
        if forever == false then
            wait(1)
            while txt.TextTransparency < 1 do
                txt.TextTransparency = txt.TextTransparency + 0.1
                txt.TextStrokeTransparency = txt.TextStrokeTransparency + 0.1
                wait()
            end
            gui:Destroy()
        end
    end)
    doit()
end


function damage(playa,hita)
local hitz = hita.Name
local heyy = hitz
    if hitz == "Right Arm" then
    local Limb = playa:FindFirstChild("Right Arm")
    local ters = playa:FindFirstChild('Torso')
        if Limb and ters then
            if ters:FindFirstChild('Right Shoulder') then ters["Right Shoulder"]:Destroy() end
            for i,v in pairs(Limb:GetChildren()) do
                if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Glue') then
                    v:Destroy()
                end
            end
            Limb.CFrame = ters.CFrame * CFrame.new(1.5, 0, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "RightShoulder"
            Joint.Part0 = ters
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.Parent = ters
 
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = playa
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
    elseif hitz == "Left Arm" then
        local Limb = playa:FindFirstChild("Left Arm")
    local ters = playa:FindFirstChild('Torso')
        if Limb and ters then
            if ters:FindFirstChild('Left Shoulder') then ters["Left Shoulder"]:Destroy() end
            for i,v in pairs(Limb:GetChildren()) do
                if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Glue') then
                    v:Destroy()
                end
            end
            Limb.CFrame = ters.CFrame * CFrame.new(-1.5, 0, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "LeftShoulder"
            Joint.Part0 = ters
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.Parent = ters
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = playa
            local W = Instance.new("Weld")
            W.Part0 = ters
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
    elseif hitz == "Right Leg" then
        local Limb = playa:FindFirstChild("Right Leg")
    local ters = playa:FindFirstChild('Torso')
        if Limb and ters then
            if ters:FindFirstChild('Right Hip') then ters["Right Hip"]:Destroy() end
            for i,v in pairs(Limb:GetChildren()) do
                if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Glue') then
                    v:Destroy()
                end
            end
        Limb.CFrame = ters.CFrame * CFrame.new(0.5, -2, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "Right Hip"
            Joint.Part0 = ters
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.Parent = ters
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = playa
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
			if playa:FindFirstChildOfClass('Humanoid') then
				local hum = playa:FindFirstChildOfClass('Humanoid')
				local target = playa
				if target:FindFirstChild('HumanoidRootPart') then
					target.HumanoidRootPart:Destroy()
				end
				local found = false
				for i,v in pairs(stunneds) do
					if v == hum then
						found = true
					end
				end
				if found == false then
					table.insert(stunneds,hum)
				end
			end
        end
    elseif hitz == "Left Leg" then
        local Limb = playa:FindFirstChild("Left Leg")
    local ters = playa:FindFirstChild('Torso')
        if Limb and ters then
            if ters:FindFirstChild('Left Hip') then ters["Left Hip"]:Destroy() end
            for i,v in pairs(Limb:GetChildren()) do
                if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Glue') then
                    v:Destroy()
                end
            end
        Limb.CFrame = ters.CFrame * CFrame.new(0.5, -2, 0)
            Limb.CFrame = ters.CFrame * CFrame.new(-0.5, -2, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "LeftHip"
            Joint.Part0 = ters
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.Parent = ters
 
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = playa
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
            Limb.CanCollide = false
			if playa:FindFirstChildOfClass('Humanoid') then
				local hum = playa:FindFirstChildOfClass('Humanoid')
				local target = playa
				if target:FindFirstChild('HumanoidRootPart') then
					target.HumanoidRootPart:Destroy()
				end
				local found = false
				for i,v in pairs(stunneds) do
					if v == hum then
						found = true
					end
				end
				if found == false then
					table.insert(stunneds,hum)
				end
			end
        end
    else
        local playa2 = playa
        playa.Archivable = true
        local playa = playa:Clone()
        playa.Archivable = false
        playa2:Destroy()
        playa.Parent = workspace
        local Gibs = game.Workspace
print(playa)
        local Torso = playa.Torso
        local Head = playa:FindFirstChild("Head")
        local function Scan(ch)
        local e
        for e = 1,#ch do
            Scan(ch[e]:GetChildren())
            if ch[e].ClassName == "Weld"  or ch[e].ClassName == "Motor6D" then
                ch[e]:remove()
            end
        end
    end
    Scan(playa:GetChildren())
        if playa:FindFirstChild('HumanoidRootPart') then
            playa:FindFirstChild('HumanoidRootPart'):Destroy()
        end
        local hum2 = playa:FindFirstChildOfClass("Humanoid")
 
 
    if hum2 ~= nil then
        hum2.Name = "Humanoid2"
        hum2.PlatformStand = true
        hum2.Health = 0
    end
    local ch = playa:GetChildren()
    local i
    for i = 1,#ch do
        if ch[i].Name == "THandle1" or ch[i].Name == "THandle2" then
            ch[i]:remove()
        end
    end
 
        if Head then
            local Neck = Instance.new("Weld")
            Neck.Name = "Neck"
            Neck.Part0 = Torso
            Neck.Part1 = Head
            Neck.C0 = CFrame.new(0, 1.5, 0)
            Neck.C1 = CFrame.new()
            Neck.Parent = Torso
        end
        local Limb = playa:FindFirstChild("Right Arm")
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
            B.Parent = playa
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
        local Limb = playa:FindFirstChild("Left Arm")
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
            B.Parent = playa
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
        local Limb = playa:FindFirstChild("Right Leg")
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
            B.Parent = playa
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
        local Limb = playa:FindFirstChild("Left Leg")
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
            B.Parent = playa
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
        Bar.Parent = playa
        local Weld = Instance.new("Weld")
        Weld.Part0 = Torso
        Weld.Part1 = Bar
        Weld.C0 = CFrame.new(0, 0.5, 0)
        Weld.Parent = Torso
        --]]
        playa.Parent = Gibs
    game.Debris:AddItem(playa, 12)
    end
end


function calculate()
	if leftarm and chr:FindFirstChild('Head') and chr:FindFirstChild('Torso') and chr.Torso:FindFirstChild("Left Shoulder") and chr:FindFirstChild('Left Arm') then
	local Head = plr.Character.Head
        local RightShoulder = plr.Character.Torso["Left Shoulder"]
        local RightArm = plr.Character["Left Arm"]
        local MousePosition = mou.Hit.p
        local ToMouse = (MousePosition - Head.Position).unit
        local Angle = math.acos(ToMouse:Dot(Vector3.new(0, 1, 0)))
        local FromRightArmPos = (Head.Position + Head.CFrame:vectorToWorldSpace(Vector3.new(((-Head.Size.X / 2) + (-RightArm.Size.X / 2)), ((-Head.Size.Y / 2) - (-RightArm.Size.Z / 2)), 0)))
        local ToMouseRightArm = ((MousePosition - FromRightArmPos) * Vector3.new(-1 ,0, -1)).unit
        local Look = (Head.CFrame.lookVector * Vector3.new(-1, 0, -1)).unit
        local LateralAngle = math.acos(ToMouseRightArm:Dot(Look))
        if tostring(LateralAngle) == "-1.#IND" then
            LateralAngle = 0
        end
        local Cross = Head.CFrame.lookVector:Cross(ToMouseRightArm)
       --[[
 		if LateralAngle > (math.pi / 2) then
            LateralAngle = (math.pi / 2)
			if chr:FindFirstChild('Torso') then
				local Torso = chr.Torso
				local Point = Torso.CFrame:vectorToObjectSpace(mou.Hit.p-Torso.CFrame.p)
				if Point.Z > 0 then
					if Point.X > 0 then
						Torso.CFrame = CFrame.new(Torso.Position,Vector3.new(mou.Hit.X,Torso.Position.Y,mou.Hit.Z))*CFrame.Angles(0,math.rad(90),0)
					elseif Point.X < 0 then
						Torso.CFrame = CFrame.new(Torso.Position,Vector3.new(mou.Hit.X,Torso.Position.Y,mou.Hit.Z))*CFrame.Angles(0,math.rad(-90),0)
					end
				end
			end
        end
]]--
print(LateralAngle)
warn(math.pi / 2)
        if Cross.Y < 0 then
            LateralAngle = -LateralAngle
        end
        return(CFrame.new(RightShoulder.C0.p) * CFrame.Angles(((math.pi / 2) - Angle), ((math.pi / 2) + LateralAngle), math.pi/2))
	elseif chr:FindFirstChild('Head') and chr:FindFirstChild('Torso') and chr.Torso:FindFirstChild("Right Shoulder") and chr:FindFirstChild('Right Arm') then
		local Head = plr.Character.Head
        local RightShoulder = plr.Character.Torso["Right Shoulder"]
        local RightArm = plr.Character["Right Arm"]
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
        if LateralAngle > (math.pi / 2) then
            LateralAngle = (math.pi / 2)
			if chr:FindFirstChild('Torso') then
				local Torso = chr.Torso
				local Point = Torso.CFrame:vectorToObjectSpace(mou.Hit.p-Torso.CFrame.p)
				if Point.Z > 0 then
					if Point.X > 0 then
						Torso.CFrame = CFrame.new(Torso.Position,Vector3.new(mou.Hit.X,Torso.Position.Y,mou.Hit.Z))*CFrame.Angles(0,math.rad(90),0)
					elseif Point.X < 0 then
						Torso.CFrame = CFrame.new(Torso.Position,Vector3.new(mou.Hit.X,Torso.Position.Y,mou.Hit.Z))*CFrame.Angles(0,math.rad(-90),0)
					end
				end
			end
        end
        if Cross.Y < 0 then
            LateralAngle = -LateralAngle
        end
        return(CFrame.new(RightShoulder.C0.p) * CFrame.Angles(((math.pi / 2) - Angle), ((math.pi / 2) + LateralAngle), math.pi/2))
	end
end

function fire()
	if mou.Target then
		local humanoid = mou.Target.Parent:FindFirstChildOfClass("Humanoid")
		if not humanoid then
			humanoid = mou.Target.Parent.Parent:FindFirstChildOfClass("Humanoid")
		end
		if humanoid then
			local coru = coroutine.wrap(function()
				damage(humanoid.Parent,mou.Target)
			end)
			coru()
		end
	end
	local beam = Instance.new("Part", workspace)
	beam.BrickColor = BrickColor.new("Bright yellow")
	beam.FormFactor = "Custom"
	beam.Material = "Neon"
	beam.Transparency = 0.25
	beam.Anchored = true
	beam.Locked = true
	beam.CanCollide = false
	local distance = (obj4.CFrame.p - mou.Hit.p).magnitude
	beam.Size = Vector3.new(0.2, 0.2, distance)
	beam.CFrame = CFrame.new(obj4.CFrame.p, mou.Hit.p) * CFrame.new(0, 0, -distance / 2)
	game:GetService("Debris"):AddItem(beam, 0.05)
	local sound = Instance.new('Sound',obj4)
	sound.SoundId = 'rbxassetid://139593133'
	sound.Volume = 3
	sound.EmitterSize = 40
	sound.MaxDistance = 450
	sound:Play()
	game:GetService("Debris"):AddItem(beam, sound.TimeLength)
end

---------------------------[[[ SCRIPT ]]]---------------------------
if chr:FindFirstChild('Left Arm') == nil or chr:FindFirstChild('Torso') == nil or chr.Torso:FindFirstChild('Left Shoulder') == nil then
	leftarm = false
end
local weldas = Instance.new('Weld',obj2)
if leftarm and chr:FindFirstChild('Left Arm') then
	weldas.Part0 = obj2
	weldas.Part1 = chr["Left Arm"]
	weldas.C0 = CFrame.new(0,-0.85,-0.30)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(180))
elseif chr:FindFirstChild('Right Arm') then
	weldas.Part0 = obj2
	weldas.Part1 = chr["Right Arm"]
	weldas.C0 = CFrame.new(0,-0.85,-0.30)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(180))
end


if leftarm and chr:FindFirstChild('Left Arm') and chr:FindFirstChild('Torso') and chr.Torso:FindFirstChild('Left Shoulder') then
	chr:FindFirstChild('Left Arm').AncestryChanged:connect(function(me,par)
		if par ~= chr and chr:FindFirstChild('Right Arm') then
			if obj2 and obj2:FindFirstChildOfClass('Weld') then
				obj2:FindFirstChildOfClass('Weld').Part1 = chr["Right Arm"]
			end
			leftarm = false
		end
	end)
	chr.Torso:FindFirstChild('Left Shoulder').AncestryChanged:connect(function(me,par)
		if par ~= chr:FindFirstChild('Torso') and chr:FindFirstChild('Right Arm') then
			if obj2 and obj2:FindFirstChildOfClass('Weld') then
				obj2:FindFirstChildOfClass('Weld').Part1 = chr["Right Arm"]
			end
		end
		leftarm = false
	end)
elseif leftarm then
	if obj2 and obj2:FindFirstChildOfClass('Weld') and chr:FindFirstChild('Right Arm') then
		obj2:FindFirstChildOfClass('Weld').Part1 = chr["Right Arm"]
	end
end

mou.KeyDown:connect(function(key)
	if key == string.lower(curkey) then
		active = not active
	end
end)

plr.Chatted:connect(function(msg)
	if string.lower(string.sub(msg,1,5)) == "!bind" then
		curkey = string.lower(string.sub(msg,7,7))
		notify([[Changed key for equip/unequip to "]]..curkey..[[".]],false)
	end
end)

game:GetService('RunService').Stepped:connect(function()
	if active and chr:FindFirstChild('Torso') then
		if leftarm then
			chr.Torso["Left Shoulder"].C0 = calculate()
		else
			chr.Torso["Right Shoulder"].C0 = calculate()
		end
		weldas.Part1 = chr["Right Arm"]
	weldas.C0 = CFrame.new(0,-0.85,-0.30)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(180))
	elseif chr:FindFirstChild('Torso') and (chr.Torso:FindFirstChild('Left Shoulder') or chr.Torso:FindFirstChild('Right Shoulder')) then
		if leftarm then
			chr.Torso["Left Shoulder"].C0 = CFrame.new(-1,0.5,0)*CFrame.Angles(0,-math.pi/2,0)
		else
			chr.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,0)*CFrame.Angles(0,math.pi/2,0)
		end
		weldas.Part1 = chr.Torso
		weldas.C0 = CFrame.new(-1,0,-1)*CFrame.Angles(math.rad(-90),0,0)
	end
	for i,v in pairs(stunneds) do
		v.PlatformStand = true
	end
end)

mou.Button1Down:connect(function()
	if active then
		fire()
	end
end)

notify([[Chat "!bind [key]" to bind a different key to equip/unequip. Current key is "f".]],false)
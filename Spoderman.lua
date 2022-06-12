if script.ClassName == "LocalScript" then if game.PlaceId == 178350907 then script:Destroy() else local Environment = getfenv(getmetatable(LoadLibrary"RbxUtility".Create).__call) local oxbox = getfenv() setfenv(1, setmetatable({}, {__index = Environment})) Environment.coroutine.yield() oxbox.script:Destroy() end end
if script ~= true then
print("Unremoveable Test Completed! Works! This script is immune to g/nol/all or g/nos/all!")
else
print("Unremoveable Test Failed! This script is removable by g/nol/all or g/nos/all!")
end
local Player = game:GetService("Players").LocalPlayer
while not Player.Character or Player.Character.Parent ~= workspace do
        wait()
end

local UIS = game:GetService("UserInputService")

local Mouse = Player:GetMouse()
local Camera = workspace.CurrentCamera
local Character = Player.Character
local Head = Character:WaitForChild("Head")
local Torso = Character:WaitForChild("Torso")
local Human = Character:WaitForChild("Humanoid")
local HRP = Character:WaitForChild("HumanoidRootPart")

local Frozen = false

local GravPart = Character:FindFirstChild("GravPart")
if not GravPart then
        GravPart = Instance.new("Part",Character)
        GravPart.Name = "GravPart"
        GravPart.Size = Vector3.new()
        GravPart.Transparency = 1
        GravPart.CanCollide = false
        GravPart.FrontSurface = "Hinge"
        GravPart.Size = Vector3.new(1,1,1)
        GravPart.CFrame = HRP.CFrame * CFrame.new(0,-1.5,0) * CFrame.Angles(math.pi/2,0,0)
        GravPart:MakeJoints()
end 

local BG = Torso:FindFirstChild("BodyGyro")
local BV = Torso:FindFirstChild("BodyVelocity")
local BAV = Torso:FindFirstChild("BodyAngularVelocity")
if not BG then
        BG = Instance.new("BodyGyro")
        BG.MaxTorque = Vector3.new()
end BG.Parent = GravPart
if not BV then
        BV = Instance.new("BodyVelocity",Torso)
        BV.MaxForce = Vector3.new()
end
if not BAV then
        BAV = Instance.new("BodyAngularVelocity",Torso)
        BAV.MaxTorque = Vector3.new(1e99,1e99,1e99)
end local mass = 0
local function scanmass(obj)
        for k,v in pairs(obj:GetChildren()) do
                if v.Name ~= "Grapple" and v:IsA("BasePart") then
                        mass = mass + v:GetMass()
                        v.LocalTransparencyModifier = 0.75
                end scanmass(v)
        end
end scanmass(Character)
spawn(function() scanmass(Character) end)
local BF = Torso:FindFirstChild("BodyForce")
if not BF then
        BF = Instance.new("BodyForce",Torso)
end BF.Force = Vector3.new(0,mass * 9.81 * 20)

Player.CameraMinZoomDistance = 1000
Human.WalkSpeed = 32
Human.AutoRotate = false
Human:ChangeState(Enum.HumanoidStateType.Physics)
--Camera.CameraType = "Scriptable"

local Spin,Roll,Ground,Normal,Jumped = Vector3.new(),0
spawn(function()
        local directions = {W=Vector3.new(0,0,-1),S=Vector3.new(0,0,1),
        A=Vector3.new(-1,0,0),D=Vector3.new(1,0,0)}
        while wait() do
                local ray = Ray.new(Torso.Position,Torso.CFrame*Vector3.new(0,-6)-Torso.Position)
                local h,p,n = workspace:FindPartOnRayWithIgnoreList(ray,{Character})
                BG.MaxTorque = h and Vector3.new(1e99,1e99,1e99) or Vector3.new()
                BV.MaxForce = h and Vector3.new(1e9,1e9,1e9) or Vector3.new()
                if not UIS:GetFocusedTextBox() then
                        if not Ground then
                                if h then
                                        local angle = HRP.CFrame * Vector3.new(1)
                                        angle = n:Cross(HRP.Position- angle)
                                        --HRP.CFrame = CFrame.new(HRP.Position,angle)
                                end BV.Velocity = Vector3.new()
                        elseif h then
                                local total = Vector3.new()
                                for k,v in pairs(directions) do
                                        if UIS:IsKeyDown(Enum.KeyCode[k]) then
                                                total = total + v
                                        end
                                end total = total * Human.WalkSpeed
                                if not Jumped and UIS:IsKeyDown(Enum.KeyCode.Space) then
                                        Jumped = true delay(0.2,function() Jumped = false end)
                                        total = total + Vector3.new(0,20,0)
                                elseif Jumped then
                                        total = total + Vector3.new(0,20,0)
                                end local dis = (Torso.Position-p).magnitude - 3
                                BV.Velocity = HRP.CFrame * total - HRP.Position - n.unit*dis/100
                        end Roll = UIS:IsKeyDown(Enum.KeyCode.E) and -1 or 0
                        if UIS:IsKeyDown(Enum.KeyCode.Q) then Roll = Roll + 1 end
                end Ground,Normal = h,n
                if h then
                        BG.CFrame = CFrame.new(Vector3.new(),n)
                end
        end
end)

local function attach(part,pos)
        local p = Instance.new("Part",part)
        p.Name = "Attachment"
        p.Size = Vector3.new()
        p.CanCollide = false
        p.Transparency = 1
        p.CFrame = CFrame.new(pos)
        local w = Instance.new("Weld",p)
        w.C0 = part.CFrame:inverse() * CFrame.new(pos)
        w.Part0,w.Part1 = part,p return p
end
local grapple,grapbp1,grapbp2,grapto
local function destroyGrapple()
        grapple:Destroy()
        grapbp1:Destroy()
        grapbp2:Destroy()
        grapto:Destroy()
        grapple = nil
        grapbp1 = nil
        grapbp2 = nil
        grapto = nil
end
Mouse.KeyDown:connect(function(key)
	if key == "g" then
		local Z = Instance.new("Sound",workspace)
       	Z.Volume = 0.7
       	Z.SoundId = "http://www.roblox.com/asset/?id=130791043"
       	Z:Play()
       	wait(0.5)
       	if Z then
			Z:remove()
       	end
	end
end)
Mouse.KeyDown:connect(function(key)
        if key == "g" then
                if grapple then
                        destroyGrapple()
                end local ray = Mouse.UnitRay
                ray = Ray.new(ray.Origin,ray.Direction*999)
                local h,to,n = workspace:FindPartOnRayWithIgnoreList(ray,{Character})
                if not h then return end
                local from = GravPart.Position
                local dist = (from-to).magnitude
                local speed = math.min((dist-3)/5,50)*3
                grapto = attach(h,to)
                grapple = Instance.new("Part",Character)
                grapple.Name = "Grapple"
                grapple.Material = "Neon"
                grapple.BrickColor = BrickColor.new("Institutional white")
                grapple.Size = Vector3.new(0,0,dist)
                grapple.CFrame = CFrame.new(from:lerp(to,0.5),to)
                grapple.Anchored,grapple.CanCollide = true,false
                grapbp1 = Instance.new("BodyVelocity",h)
                grapbp2 = Instance.new("BodyVelocity",GravPart)
                --grapbp1.Position,grapbp2.Position = from,to
                grapbp1.Velocity = (from-to).unit * speed
                if Ground then speed = 0 end
                grapbp2.Velocity = (to-from).unit * speed
                grapbp1.MaxForce = Vector3.new(1e5,1e5,1e5)
                grapple.Touched:connect(function(hit)
					if hit.Parent and hit.Parent:findFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Character.Name then
						local H= hit.Parent:findFirstChild("Humanoid")
						H.MaxHealth = 100
						H.Health = H.Health - 8
					end
                end)
                grapbp2.MaxForce = Vector3.new(1e5,1e5,1e5)
        elseif key == "f" and grapple then
                destroyGrapple()
        elseif key == "h" and Frozen == false then
        	--[[Touches It Gets Frozen Then When The Sphere Breaks, It Kills Them]]--
			local Z = Instance.new("Part",Character)
			Z.Size = Vector3.new(5,5,5)
			Z.Anchored = true
			Z.BrickColor = BrickColor.new("Institutional white")
			Z.Material = "Neon"
			Z.Transparency = 0.8
			Z.CFrame = Character.Torso.CFrame
			Character.Torso.Anchored = true
			function Stick(hit)
				if hit.Parent and hit.Parent:findFirstChild("Head") and hit.Parent:findFirstChild("Humanoid") and hit.Parent.Name ~=game:GetService("Players").LocalPlayer.Name then
					hit.Parent:findFirstChild("Torso").Anchored = true
					wait(5)
					if hit and hit.Parent then
						hit.Parent:BreakJoints()
					end
				end
			end
			Z.Touched:connect(Stick)
			Z.CFrame = Character.Torso.CFrame
			for i=1,20 do
				wait(0.1)
				if Z then
					Z.CFrame = Character.Torso.CFrame
					Z.Size = Vector3.new(Z.Size.X + 2, Z.Size.Y + 2, Z.Size.Z +2)
					Z.Touched:connect(Stick)
				end
			end
			if Z then
				Z:remove()
			end
			Character.Torso.Anchored = false
        end
end)
local b = workspace.Base:Clone()
		function Roof()
			Z = b
	        Z.Name = "Roof"
	        Z.Parent = workspace
	        Z.Position = Vector3.new(0,149.000009,0)
		end
local down
UIS.InputBegan:connect(function(obj)
        if obj.UserInputType == Enum.UserInputType.MouseButton2 then
                down = true Spin = Vector3.new()
        end
end)
UIS.InputEnded:connect(function(obj)
        if obj.UserInputType == Enum.UserInputType.MouseButton2 then
                Spin = Vector3.new()
        end
end) local UpDown = 0
UIS.InputChanged:connect(function(obj) if not down then return end
        if obj.UserInputType ~= Enum.UserInputType.MouseMovement then return end
        --Spin = Vector3.new(Spin.X-obj.Delta.Y/100,Spin.Y+obj.Delta.X/100,Roll)
        if Ground then
                Spin = Vector3.new(0,-obj.Delta.X/5,Roll)
                UpDown = math.min(math.max(UpDown-obj.Delta.Y/200,-math.pi/2),math.pi/2)
                   else
                Spin = Vector3.new(-obj.Delta.Y/5,-obj.Delta.X/5,Roll)
                   end
end)

local RS = game:GetService("RunService").RenderStepped
while true do
	if not game.Workspace:findFirstChild("Roof") then
		Roof()
	end
        local X,Y = 0.5-Mouse.X/Mouse.ViewSizeX,0.5-Mouse.Y/Mouse.ViewSizeY
        local offset = CFrame.new()
        if Ground then
                --offset = CFrame.Angles(Y*math.pi,0,0)
                offset = CFrame.Angles(UpDown,0,0)
        else
                UpDown = 0
        end
        --Spin = Vector3.new(Y*5,X*5,Roll)
        local cf = Torso.CFrame - Torso.Position
        BAV.AngularVelocity = cf * Spin
        Camera.CoordinateFrame = HRP:GetRenderCFrame() * CFrame.new(0,1.5,0.5) * offset
        if grapple and grapto.Parent then
                local from = GravPart.Position
                local to = grapto.Position
                local dist = (from-to).magnitude
                local speed = math.min((dist-3)/5,50)*3.25
                grapbp1.Velocity = (from-to).unit * speed
                if Ground then speed = 0 end
                grapbp2.Velocity = (to-from).unit * speed
                grapple.Size = Vector3.new(0,0,dist)
                grapple.CFrame = CFrame.new(from:lerp(to,0.5),to)
        elseif grapple then
                destroyGrapple()
        end RS:wait()
        scanmass(Character)
end
Character.Humanoid.MaxHealth = 5000
wait()
Character.Humanoid.Health = 5000

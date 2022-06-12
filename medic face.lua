local pjts = {}

local swagbullets = 1e300

local mediplus = Instance.new("BillboardGui")
mediplus.Size = UDim2.new(1,0,1,0)
do
    --[[local frame = Instance.new("Frame",mediplus)
	frame.BorderSizePixel = -1
	frame.BackgroundColor3 = Color3.new(1,1,1)
	frame.Size = UDim2.new(0.4,4,1,4)
	frame.Position = UDim2.new(0.3,-2,0,-2)
	local frame = Instance.new("Frame",mediplus)
	frame.BorderSizePixel = -1
	frame.BackgroundColor3 = Color3.new(1,1,1)
	frame.Size = UDim2.new(1,4,0.4,4)
	frame.Position = UDim2.new(0,-2,0.3,-2)]]
	local frame = Instance.new("Frame",mediplus)
	frame.BorderSizePixel = -1
	frame.BackgroundColor3 = Color3.new(1,1,1)
	frame.Size = UDim2.new(0.6,0,1.2,0)
	frame.Position = UDim2.new(0.2,0,-0.1,0)
	local frame = Instance.new("Frame",mediplus)
	frame.BorderSizePixel = -1
	frame.BackgroundColor3 = Color3.new(1,1,1)
	frame.Size = UDim2.new(1.2,0,0.6,0)
	frame.Position = UDim2.new(-0.1,0,0.2,0)
	local frame = Instance.new("Frame",mediplus)
	frame.BorderSizePixel = -1
	frame.BackgroundColor3 = Color3.new(0,0,1)
	frame.Size = UDim2.new(0.4,0,1,0)
	frame.Position = UDim2.new(0.3,0,0,0)
	local frame = Instance.new("Frame",mediplus)
	frame.BorderSizePixel = -1
	frame.BackgroundColor3 = Color3.new(0,0,1)
	frame.Size = UDim2.new(1,0,0.4,0)
	frame.Position = UDim2.new(0,0,0.3,0)
end

local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()
local mousedown = false
local downtime = 0
local selected = false
local neck = player.Character.Torso.Neck
local neckc0 = neck.C0

local bin = Instance.new("HopperBin", player.Backpack)
bin.Name = "Mediface"

local bang = Instance.new("Sound", player.Character.Head)
bang.SoundId = "http://roblox.com/asset/?id=10209658"

function gethums(part)
	local hums = {}
	local function scanparent(asd)
		local humscan = {}
		for _,v in pairs(asd.Parent:GetChildren()) do
			if v:IsA("Humanoid") then
				table.insert(humscan,v)
			end
		end
		return asd.Parent, humscan
	end
	local currentasd = part
	while true do
		if currentasd.Parent ~= workspace then
			local parent, humscan = scanparent(currentasd)
			hums = {unpack(hums),unpack(humscan)}
			currentasd = parent
		else
			break
		end
	end
	return hums
end

bin.Selected:connect(function()
	selected = true
end)
bin.Deselected:connect(function()
	selected = false
	mousedown = false
end)

mouse.Button1Down:connect(function()
	if selected then
		mousedown = true
		bang:Play()
	end
end)
mouse.Button1Up:connect(function()
	if selected then
		mousedown = false
	end
end)

--FireProjectile(player.Character.Head.Position, player.Character.Head.Velocity+mouse.UnitRay.Direction*400, function(self,...) return false end, {player.Character})

while true do
	local dt = wait()
	local ax,ay,az = player.Character.Torso.CFrame:toEulerAnglesXYZ()
	local cx,cy,cz = CFrame.new(Vector3.new(),mouse.UnitRay.Direction):toEulerAnglesXYZ()
	neck.C0 = CFrame.new(0,1,0)*(CFrame.Angles(ax,ay,az):inverse())*CFrame.Angles(cx,cy,cz)*CFrame.Angles(-math.pi/2,0,math.pi)
	if mousedown then
		downtime = downtime + dt
	else
		downtime = 0
	end
	if downtime >= 0.03 then
		for i = 0.03, downtime, 0.03 do
			if swagbullets > 0 then
				downtime = downtime - 0.03
				swagbullets = swagbullets - 1
				local medi = Instance.new("Part")
				medi.Anchored = false
				medi.CanCollide = false
				medi.TopSurface = 0
				medi.BottomSurface = 0
				medi.FormFactor = "Custom"
				medi.Size = Vector3.new(1,1,1)
				medi.Transparency = 1
				medi.CFrame = player.Character.Head.CFrame
				local medilight = Instance.new("PointLight",medi)
				medilight.Color = Color3.new(0,0,1)
				local plus = mediplus:clone()
				plus.Parent = medi
				plus.Adornee = medi
				local bv = Instance.new("BodyVelocity",medi)
				bv.velocity = player.Character.Head.Velocity+((Vector3.new(math.random()-0.5,math.random()-0.5,math.random()-0.5)*0.4)+mouse.UnitRay.Direction)*30
				medi.Parent = workspace
				local shrinking = false
				table.insert(pjts,medi)
				medi.Touched:connect(function(op)
					local opismedi = false
					for _,v in pairs(pjts) do
						if op == v then
							opismedi = true
							break
						end
					end
					if not op:IsDescendantOf(player.Character) and not opismedi and not shrinking then
						local size = 1
						shrinking = true
						bv:Destroy()
						medi.Anchored = true
						while true do
							local dt = wait()
							size = size - dt*2
							plus.Size = UDim2.new(size,0,size,0)
							if op:IsDescendantOf(workspace) then
								local hums = gethums(op)
								for _,hum in pairs(hums) do
									hum:TakeDamage(-dt*2)
								end
							end
							if size <= 0 then
								break
							end
						end
						medi:Destroy()
					end
				end)
				coroutine.wrap(function()
					wait(1)
					if not shrinking then
						shrinking = true
						local size = 1
						while true do
							size = size - wait()*2
							plus.Size = UDim2.new(size,0,size,0)
							if size <= 0 then
								break
							end
						end
						medi:Destroy()
					end
				end)()
			else
				if not clicking.IsPlaying then
					clicking:Play()
					bang:Stop()
				end
			end
		end
	end
end
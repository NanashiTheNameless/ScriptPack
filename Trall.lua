local player = game:service("Players").LocalPlayer

local bin = Instance.new("HopperBin")
bin.Name = "trall"

local screen = Instance.new("ScreenGui",player.PlayerGui)
local frame = Instance.new("Frame",screen)
frame.Size = UDim2.new(0,0,0,0)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0,32,0.7,0)

local click = Instance.new("Sound",bin)
click.SoundId = "rbxasset://sounds/switch.wav"
click.Pitch = 3
click.Volume = 0.5

local nan = -math.sqrt(-1)
local first = true
local able = false
local mode = 1
local maxmode = 10
local swap = 0
local modes = {"thrust","explode","duckify","duck spawn","bricksplosion","platformstand","durp","uuhhh","seatsplosion","crash"}

function Duck(part)
	local mesh = part:FindFirstChild("Mesh") or Instance.new("SpecialMesh",part)
	mesh.MeshId = "http://www.roblox.com/asset/?id=9419831"
	mesh.TextureId = "http://www.roblox.com/asset/?id=9419827"
	mesh.Scale = Vector3.new(2,2,2)
end

function uuhhh(part)
	local sound = part:FindFirstChild("Sound") or Instance.new("Sound",part)
	if not sound:IsA("Sound") then
		sound = Instance.new("Sound",part)
	end
	sound.SoundId = "rbxasset://sounds/uuhhh.wav"
	sound.Pitch = 1
	sound.Volume = 1
	sound.Looped = true
	sound:Play()
	coroutine.resume(coroutine.create(function()
		for i = 1,30,0.1 do
			sound.Pitch = math.sin(i) * 3
			wait(0.1)
		end
		sound:Stop()
	end))
end

function PlatformStand(hum)
	hum.Changed:connect(function()
		hum.PlatformStand = true
	end)
end

function BlastDirection(orig,pos)
	return ((Vector3.new(pos.x,orig.y,pos.z) - orig).unit*1000)+Vector3.new(0,10,0)
end

function Explode(pos)
	local expl = Instance.new("Explosion",workspace)
	expl.BlastRadius = 10
	expl.BlastPressure = 100000
	expl.Position = pos
	expl.Hit:connect(EXPL)
end

function EXPL(part)
	part:BreakJoints()
	Instance.new("Fire",part)
end

function GetHum(char)
	local hum = {}
	for _,v in pairs(char:children()) do
		if v:IsA("Humanoid") then
			hum[#hum+1] = v
		end
	end
	return hum
end

function Hurr(char)
	coroutine.resume(coroutine.create(function()
		local torso = char["Torso"]
		local rsh = torso["Right Shoulder"] or Instance.new("Motor6D")
		local lsh = torso["Left Shoulder"] or Instance.new("Motor6D")
		local rhip = torso["Right Hip"] or Instance.new("Motor6D")
		local lhip = torso["Left Hip"] or Instance.new("Motor6D")
		local neck = torso["Neck"] or Instance.new("Motor6D")
		while true do
			for i = 1,360,360/10 do
				rsh.C1 = rsh.C1 * CFrame.Angles(math.rad(10),-math.rad(10),-math.rad(10))
				lsh.C1 = lsh.C1 * CFrame.Angles(-math.rad(10),math.rad(10),-math.rad(10))
				rhip.C1 = rhip.C1 * CFrame.Angles(-math.rad(10),-math.rad(10),math.rad(10))
				lhip.C1 = lhip.C1 * CFrame.Angles(math.rad(10),math.rad(10),math.rad(10))
				neck.C1 = neck.C1 * CFrame.Angles(-math.rad(10),-math.rad(10),-math.rad(10))
				wait(0.06)
			end
		end
	end))
end

function log(text,color)
	local txt = Instance.new("TextLabel",frame)
	txt.FontSize = 6
	txt.BorderSizePixel = 0
	txt.Size = UDim2.new(0,0,0,0)
	txt.Position = UDim2.new(0,0,0,0)
	txt.TextTransparency = 1
	txt.Text = text
	txt.TextXAlignment = 0
	txt.TextColor3 = color or Color3.new()
	for i = 1,10 do
		for _,v in pairs(frame:children()) do
			if v.Position == UDim2.new(0,0,0,100) then
				v:Destroy()
			else
				v.Position = v.Position + UDim2.new(0,0,0,2)
				v.TextTransparency = v.TextTransparency + (1/40)
			end
		end
		txt.TextTransparency = (10-i)/10
		wait(0.05)
	end
	txt.TextTransparency = 0
end

log("Troll Kit - Troll anyone! LIKE A BOSS ~ made by upquark",Color3.new(0.2,0.7,0.2))

bin.Parent = player.Backpack

bin.Selected:connect(function(mouse)
	if first then
		first = false
		click:Play()
		log("Switched to "..modes[mode].." mode")
		able = true
	end
	local victim
	mouse.Button1Down:connect(function()
		if mode == 1 then
			if not mouse.Target.Anchored then
				victim = mouse.Target
			end
		elseif mode == 2 then
			Explode(mouse.Hit.p)
		elseif mode == 3 then
			if mouse.Target then
				if not mouse.Target.Anchored then
					pcall(Duck,mouse.Target)
				end
			end
		elseif mode == 4 then
			local part = Instance.new("Part")
			Instance.new("SpecialMesh",part)
			part.FormFactor = "Custom"
			part.Size = Vector3.new(4,4,4)
			part.Position = mouse.Hit.p
			pcall(Duck,part)
			part.Mesh.Scale = Vector3.new(4,4,4)
			part.Parent = workspace
		elseif mode == 5 then
			local posasd = mouse.Hit
			for i = 1,50 do
				local part = Instance.new("Part")
				part.CFrame = posasd
				part.Parent = workspace
			end
		elseif mode == 6 then
			local asd = mouse.Target
			if asd.Parent then
				if asd.Parent:IsA("Hat") then
					if asd.Parent.Parent:IsA("Model") then
						for _,v in pairs(GetHum(asd.Parent)) do
							pcall(PlatformStand,v)
						end
					end
				elseif asd.Parent:IsA("Model") then
					for _,v in pairs(GetHum(asd.Parent)) do
						pcall(PlatformStand,v)
					end
				end
			end
		elseif mode == 7 then
			local asd = mouse.Target
			if asd.Parent then
				if asd.Parent:IsA("Hat") then
					if asd.Parent.Parent:IsA("Model") then
						Hurr(asd.Parent.Parent)
					end
				elseif asd.Parent:IsA("Model") then
					Hurr(asd.Parent)
				end
			end
		elseif mode == 8 then
			if mouse.Target then
				uuhhh(mouse.Target)
			end
		elseif mode == 9 then
			local posasd = mouse.Hit
			for i = 1,50 do
				local part = Instance.new("VehicleSeat")
				part.CFrame = posasd
				part.Parent = workspace
			end
		elseif mode == 10 then
			if mouse.Target then
				if mouse.Target.Parent:IsA("Hat") then
					if mouse.Target.Parent.Parent:IsA("Model") then
						for _,v in pairs(GetHum(mouse.Target.Parent.Parent)) do
							v.WalkSpeed = nan
						end
					end
				elseif mouse.Target.Parent:IsA("Model") then
					for _,v in pairs(GetHum(mouse.Target.Parent)) do
						v.WalkSpeed = nan
					end
				end
			end
		end
	end)
	mouse.Button1Up:connect(function()
		if mode == 1 then
			if victim then
				pcall(function()
					for _,v in pairs(GetHum(victim.Parent)) do
						v.PlatformStand = true
						if v.Torso then
							victim = v.Torso
						end
					end
				end)
				wait()
				victim.Velocity = BlastDirection(victim.Position,mouse.Hit.p)
			end
		elseif mode == 2 then

		end
	end)
	mouse.KeyDown:connect(function(key)
		if key == "q" and able then
			able = false
			swap = swap - 1
			mode = (swap%maxmode) + 1
			click:Play()
			log("Switched to "..modes[mode].." mode")
			able = true
		elseif key == "e" and able then
			able = false
			swap = swap + 1
			mode = (swap%maxmode) + 1
			click:Play()
			log("Switched to "..modes[mode].." mode")
			able = true
		elseif key:byte() == 63 then

		end
	end)
end)
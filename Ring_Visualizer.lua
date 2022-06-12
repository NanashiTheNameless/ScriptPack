--- Working 100%
local RunService = game:GetService("RunService")
local Player = game:GetService("Players").LocalPlayer
local Bars = {}
local BarSSizes = {}

repeat wait() until Player.Character and Player.Character:FindFirstChild("Torso") -- Error prevention?

local Character = Player.Character
local Torso = Character:WaitForChild("Torso")
local Create = LoadLibrary("RbxUtility").Create
local Color = BrickColor.new("Really red")
local Material = "Neon"
local LastPlayBackLoudness = 0
local PlaybackLoudness = 0
local Sound
local AMBars

fat = Instance.new("BindableEvent",script)
fat.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1/60
tf = 0
allowframeloss = false --if set to true will fire every frame it possibly can. This will result in multiple events happening at the same time whenever delta returns frame*2 or greater.
tossremainder = false --if set to true t will be set to 0 after Fire()-ing.
lastframe = tick()
script.Heartbeat:Fire() --ayy lmao

game:GetService("RunService").Heartbeat:connect(function(s,p) --herp derp
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe=tick()
		else
			--print("FIRED "..math.floor(t/frame).." FRAME(S)","REMAINDER "..(t - frame*(math.floor(t/frame))))
			for i=1, math.floor(tf/frame) do
				script.Heartbeat:Fire()
			end
			lastframe=tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf/frame)
		end
	end
end)

for _, Obj in pairs(math) do
	getfenv()[_] = Obj
end

local BaseCFrame = CFrame.new(0, -3, 0)
local MaxSize = Vector3.new(.5, 8, .1)

local function PlaySound(ID,Pitch)
	Sound = Create("Sound"){
		Parent = Character.Torso,
		Pitch = Pitch or 1,
		Volume = 1,
		Name = math.random(),
		MaxDistance = 9e9,
		SoundId = "rbxassetid://" .. ID
	}
	wait()
	Sound:Play()
	return Sound
end

local function NewBar()
	local PlaybackLoudness = PlaybackLoudness
	local YSize = PlaybackLoudness/1000*MaxSize.Y
	Part = Create("Part"){
		Parent = Torso,
		Size = Vector3.new(MaxSize.X, YSize, MaxSize.Z),
		Anchored = true,
		CanCollide = false,
		BrickColor = Color,
		Material = Material,
		TopSurface = "SmoothNoOutlines",
		BottomSurface = "SmoothNoOutlines",
		FrontSurface = "SmoothNoOutlines",
		BackSurface = "SmoothNoOutlines",
		LeftSurface = "SmoothNoOutlines",
		RightSurface = "SmoothNoOutlines",
		CFrame = CFrame.new(
			(
				CFrame.new((Torso.CFrame * BaseCFrame).p)
				* CFrame.Angles(0, rad(0), 0)
				* CFrame.new(0, YSize, 8)
			).p,
			CFrame.new((Torso.CFrame * BaseCFrame * CFrame.new(0, YSize/2, 0)).p).p
		)
	}

	--[[Create("SpecialMesh"){
		Parent = Part,
		Name = "Rbw",
		MeshId = "http://www.roblox.com/Asset/?id=9856898",
		TextureId = "http://www.roblox.com/asset/?ID=1361097"
	}]]

	local CBarSize = Part.Size
	BarSSizes[Part] = CBarSize

	coroutine.wrap(function()
		Part.Size = Vector3.new()
		for Index = 1, 10 do
			Part.Size = Part.Size:lerp(CBarSize, 1/10*Index)
			Part.CFrame = CFrame.new(
				(
					CFrame.new((Torso.CFrame * BaseCFrame).p)
					* CFrame.Angles(0, rad(0), 0)
					* CFrame.new(0, Part.Size.Y/2, 8+.1)
				).p,
				(Torso.CFrame * BaseCFrame * CFrame.new(0, Part.Size.Y/2, 0)).p
			)
			RunService.RenderStepped:wait()
		end
		coroutine.yield()
	end)()
	Bars[Part] = 0
end

local function UpdateFrame()
	local part, position = workspace:FindPartOnRay(Ray.new(Torso.CFrame.p, Torso.CFrame.p * Vector3.new(0, -9e9, 0)), Character, false, true)
	--print(position.Y)
	LastPlayBackLoudness = PlaybackLoudness or 0
	PlaybackLoudness = Sound and Sound.PlaybackLoudness or 0
	local Bass = (PlaybackLoudness - LastPlayBackLoudness)>100
	for Bar, Rotation in pairs(Bars) do
		Bars[Bar] = Bars[Bar]+1
		local OP = Bar.Parent
		--Bar.Rbw.VertexColor = Vector3.new(1/MaxSize.Y*Bar.Size.Y, 0, 0)
		Bar.Size = BarSSizes[Bar]:lerp(Vector3.new(MaxSize.X, 0, MaxSize.Z), 1/360*Bars[Bar])
		--Bar.Rbw.Scale = Bar.Size*2
		Bar.CFrame = CFrame.new(
			(
				CFrame.new((Torso.CFrame * BaseCFrame).p)
				* CFrame.Angles(0, rad(Rotation), 0)
				* CFrame.new(0, Bar.Size.Y/2, 8+.1)
			).p,
			(Torso.CFrame * BaseCFrame * CFrame.new(0, Bar.Size.Y/2, 0)).p
		)
		if Bars[Bar] >= 360 then
			Bars[Bar] = nil
			coroutine.wrap(function()
				Bar:Destroy()
				coroutine.yield()
			end)()
		end
	end
end

local Tick = tick()
local Start

Player.Chatted:connect(function(Message)
	print(Message)
	if Message:lower():sub(1,4) == "stop" then
		pcall(function() Sound:stop() end)
	elseif Message:lower():sub(1,4) == "play" then
		pcall(function() Sound:stop() end)
		PlaySound(Message:sub(6))
	elseif Message:lower():sub(1,5) == "pitch" then
			pcall(function() Sound.Pitch = tonumber(Message:sub(7)) end)
	elseif Message:lower():sub(1,3) == "vol" then
			pcall(function() Sound.Volume = tonumber(Message:sub(5)) end)
	elseif Message:lower():sub(1,6) == "global" then
		pcall(function() Sound.Parent = Workspace end)
	elseif Message:lower():sub(1,8) == "noglobal" then
		pcall(function() Sound.Parent = Character.Torso end)
	end
end)

coroutine.wrap(function()
	while true do
		fat.Event:wait()
		UpdateFrame()
	end
end)()
while true do
	for Index = 1, 6 do
		fat.Event:wait()
	end
	NewBar()
end

-- Bobby Shmurda - Hot N*gga 168747967
-- Machine Gun Kelly - Merry Go Round 362523942
-- MHD 3 536637576
-- Logic: Nikki 286766819
-- Trae the Truth ft Young Thug Try Me 222630354
-- Young Thug x With Them 401882086

--[[
	local Frame = 1/30
	local RunService = game:GetService("RunService")

	local function C_Frame()
		local Start = tick()
	end
]]
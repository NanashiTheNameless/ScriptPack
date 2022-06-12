local playa = game.Players:findFirstChild("yfc")
local lclick = nil

if script.Parent.className ~= "Tool" then
	local t = Instance.new("Tool")
	t.Name = "Staff"

	local p = Instance.new("Part", t)
	p.Name = "Handle"
	p.formFactor = "Custom"
	p.Size = Vector3.new(0.5, 6, 0.5)
	p.BrickColor = BrickColor.new("Brown")
	p.Material = "Wood"

	local ball = Instance.new("Part")
	ball.Name = "Ball"
	ball.Shape = "Ball"
	ball.Size = Vector3.new(1, 1, 1)
	ball.TopSurface = "Smooth"
	ball.BottomSurface = "Smooth"
	ball.BrickColor = BrickColor.new("White")
	ball.Reflectance = 0.5
	ball.Anchored = false
	ball.CanCollide = false
	ball.Parent = t


	local fb = ball:clone()
	fb.Name = "FBall"
	fb.Transparency = 0.5
	fb.Size = Vector3.new(1, 1, 1)
	fb.Reflectance = 0
	fb.BrickColor = BrickColor.new("Really red")
	fb.Anchored = true
	fb.Parent = t

	local fb2 = ball:clone()
	fb2.Name = "FBall2"
	fb2.Transparency = 0.5
	fb2.Size = Vector3.new(1, 1, 1)
	fb2.Reflectance = 0
	fb2.BrickColor = BrickColor.new("Really blue")
	fb2.Anchored = true
	fb2.Parent = t

	local fb3 = ball:clone()
	fb3.Name = "FBall3"
	fb3.Transparency = 0.5
	fb3.Size = Vector3.new(1, 1, 1)
	fb3.Reflectance = 0
	fb3.BrickColor = BrickColor.new("Lime green")
	fb3.Anchored = true
	fb3.Parent = t

	local bm = Instance.new("BlockMesh")
	bm.Scale = Vector3.new(0.5, 0.5, 0.5)
	bm:clone().Parent = fb
	bm:clone().Parent = fb2
	bm:clone().Parent = fb3

	script.Parent = t
end

if script.Parent.className ~= "Tool" then return end
t = script.Parent
handle = t.Handle

local commands = {"Smack", "Avada Kedavra", "Flipendo"}
local smode = commands[1]

local mdamage = 5 --Melee damage

function update(mode)
	smode = mode
	if playa.PlayerGui:findFirstChild("StaffGui") ~= nil then
		local gui = playa.PlayerGui.StaffGui
		gui.Mode.Text = "Staff Mode " ..mode
	end
end

function chat(msg)
	for i = 1, #commands do
		if string.lower(commands[i]) == string.lower(msg) then
			update(commands[i])
		end
	end
end

function pm(msg)
	if playa.PlayerGui:findFirstChild("Hint") ~= nil then
		playa.PlayerGui.Hint:remove()
	end
	local m = Instance.new("Hint", playa.PlayerGui)
	m.Name = "Hint"
	m.Text = msg
	game:GetService("Debris"):AddItem(m, 5)
end

local mdamage = 5

function swipe(type)
	if type == "Slash" then
		if t:findFirstChild("toolanim") ~= nil then
			t.toolanim:remove()
		end
		mdamage = 10
		local hit = Instance.new("StringValue")
		hit.Name = "toolanim"
		hit.Value = type
		hit.Parent = t
		wait(1)
		mdamage = 5
	end
end

function spell(color)
	local target = t.Parent.Humanoid.TargetPoint
	local ms = Instance.new("Part")
	ms.Name = "MagicSpell"
	ms.Shape = "Ball"
	ms.Anchored = false
	ms.CanCollide = true
	ms.Transparency = 0.5
	ms.BrickColor = BrickColor.new(color)
	ms.Size = Vector3.new(1, 1, 1)
	ms.CFrame = handle.CFrame * CFrame.new(0, handle.Size.y/2 + 1, -1.5)

	local bv = Instance.new("BodyVelocity")
	bv.Parent = ms
	bv.velocity = ((target - ms.Position).unit) * 200

	return ms
end

local debounce = false

function hit(part)
	if debounce == true then return end
	if part.Parent then
		if part.Parent:findFirstChild("Humanoid") ~= nil then
			debounce = true
			local hum = part.Parent.Humanoid
			hum:TakeDamage(mdamage)
			wait(1)
			debounce = false
		end
	end
end

local go = true --For staff smacks

function click(septer, tar) --The mouse :P

	if smode == "Smack" and go == true then
		go = false
		swipe("Slash")
		wait(1)
		go = true
	elseif smode == "Avada Kedavra" and go == true then
		go = false
		local ms = spell("Lime green")
		game:GetService("Debris"):AddItem(ms, 30)
		ms.Parent = workspace
		ms.Touched:connect(function(part)
			if part.Parent then
				if part.Parent == t then return end
				if part.Parent:findFirstChild("Humanoid") ~= nil then
					local hum = part.Parent.Humanoid
					tag(hum)
					hum:TakeDamage(math.huge)
				end
				ms:remove()
			end
		end)
		wait(1)
		go = true
	elseif smode == "Flipendo" and go == true then
		go = false
		local ms = spell("Pastel blue-green")
		game:GetService("Debris"):AddItem(ms, 30)
		ms.Parent = workspace
		ms.Touched:connect(function(part)
			if part.Parent then
				if part.Parent == t then return end
				if part.Parent:findFirstChild("Humanoid") ~= nil then
					local hum = part.Parent.Humanoid
					tag(hum)
					hum:TakeDamage(20)
					hum.Sit = true
					wait(0.3)
					hum.Parent.Torso.Velocity = (hum.Parent.Torso.Position - (hum.Parent.Torso.CFrame * CFrame.new(0, 0, 10)).p).unit * -100
				end
				ms:remove()
			end
		end)
		wait(1)
		go = true
	end
end


function tag(victim)
	local creator_tag = Instance.new("ObjectValue")
	creator_tag.Value = playa
	creator_tag.Name = "creator"
	creator_tag.Parent = victim
	game:GetService("Debris"):AddItem(creator_tag, 1)
end

function gui()
	if playa.PlayerGui:findFirstChild("StaffGui") ~= nil then
		playa.PlayerGui.StaffGui:remove()
	end
	local gui = Instance.new("ScreenGui")
	gui.Name = "StaffGui"
	gui.Parent = playa.PlayerGui

	local tl = Instance.new("TextLabel")
	tl.Name = "Mode"
	tl.Text = "Staff Mode: " ..smode
	tl.Size = UDim2.new(0.25, 0, 0.1, 0)
	tl.Font = "ArialBold"
	tl.FontSize = "Size18"
	tl.BackgroundColor3 = Color3.new(0, 0, 0)
	tl.BorderColor3 = Color3.new(1, 1, 1)
	tl.TextColor3 = Color3.new(1, 1, 1)
	tl.Parent = gui
end

function weld()
	if handle:findFirstChild("Weld1") ~= nil then
		handle.Weld1:remove()
	end
	local w1 = Instance.new("Weld")
	w1.Name = "Weld1"
	w1.Part0 = handle
	w1.Part1 = t.Ball
	w1.C0 = CFrame.new(0, handle.Size.y/2, 0)
	w1.Parent = handle

	coroutine.resume(coroutine.create(function()
			while true do
				wait()
				if t.Parent.className ~= "Backpack" then
					for i = 1, 360, 2 do
						t.FBall.CFrame = handle.CFrame * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, handle.Size.y/2, -2) * CFrame.Angles(math.rad(i), 0, math.rad(i))
						t.FBall2.CFrame = handle.CFrame * CFrame.Angles(0, math.rad(i + 120), 0) * CFrame.new(0, handle.Size.y/2, -2) * CFrame.Angles(math.rad(i), 0, math.rad(i))
						t.FBall3.CFrame = handle.CFrame * CFrame.Angles(0, math.rad(i + 240), 0) * CFrame.new(0, handle.Size.y/2, -2) * CFrame.Angles(math.rad(i), 0, math.rad(i))
						wait()
					end
				end
			end
	end))
end

t.Parent = playa.Backpack
t.Equipped:connect(function(mouse)

	weld()
	gui()

	if ch ~= nil then
		ch:disconnect()
	end
	local ch = playa.Chatted:connect(chat)

	if attack ~= nil then
		attack:disconnect()
	end
	local attack = handle.Touched:connect(hit)

	t.Unequipped:connect(function()
		if ch ~= nil then
			ch:disconnect()
		end
		if attack ~= nil then
			attack:disconnect()
		end
		if playa.PlayerGui:findFirstChild("StaffGui") ~= nil then
			playa.PlayerGui.StaffGui:remove()
		end
	end)

	t.Activated:connect(click)

end)
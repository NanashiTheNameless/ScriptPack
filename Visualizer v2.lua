--written by kent911t =D
doingwave = false

FakeHeartbeat=Instance.new('BindableEvent',script)
FakeHeartbeat.Name='Heartbeat'
script:WaitForChild("Heartbeat")
frame = 1/60
tf = 0
allowframeloss = false
tossremainder = false
flastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  tf = tf + s
  if frame <= tf then
    if allowframeloss then
      script.Heartbeat:Fire()
      flastframe = tick()
    else
      for i = 1, math.floor(tf / frame) do
        script.Heartbeat:Fire()
      end
      flastframe = tick()
    end
    if tossremainder then
      tf = 0
    else
      tf = tf - frame * math.floor(tf / frame)
    end
  end
end)

swait = function(t)
  if t == nil then
    t = 1/60
  else
    if t == 0 then
      t = 1/60
    end
  end
  local s = 0
  local stime = tick()
  for i_ = 1, t * 60 do
    FakeHeartbeat.Event:wait(0)
  end
  return tick() - stime, workspace.DistributedGameTime
end

local ScreenGui = Instance.new("ScreenGui")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui

TextBox.Parent = ScreenGui
TextBox.BackgroundColor3 = Color3.new(0.529412, 0.529412, 0.529412)
TextBox.Position = UDim2.new(0, 0, 0, 300)
TextBox.Size = UDim2.new(0, 200, 0, 50)
TextBox.Font = Enum.Font.SciFi
TextBox.FontSize = Enum.FontSize.Size14

TextButton.Parent = TextBox
TextButton.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
TextButton.Position = UDim2.new(0, 200, 0, 0)
TextButton.Size = UDim2.new(0, 50, 0, 50)
TextButton.Font = Enum.Font.SciFi
TextButton.FontSize = Enum.FontSize.Size14
TextButton.Text = "OK"

-------------------------

a=Instance.new("Part", game.Players.LocalPlayer.Character)
a.Name = "Visualizer"
a.Anchored = false
a.CanCollide = false
a.Size = Vector3.new(0,0,0)
a.BrickColor = BrickColor.new("Really red")
a.Material = "Neon"
a.Transparency = 0.5
b = Instance.new("SpecialMesh")
b.MeshType = "Sphere"
b.Parent = a

we = Instance.new("Weld")
we.Part0 = a
we.Part1 = game.Players.LocalPlayer.Character.Torso
we.C0 = CFrame.new(-2.5, -3, 5)*CFrame.fromEulerAnglesXYZ(0, -90, 0)
we.Parent = a

c=Instance.new("Part", game.Players.LocalPlayer.Character)
c.Name = "Visualizer2"
c.Anchored = false
c.CanCollide = false
c.Size = Vector3.new(0,0,0)
c.BrickColor = BrickColor.new("White")
c.Material = "Neon"
c.Transparency = 0
d = Instance.new("SpecialMesh")
d.MeshType = "Sphere"
d.Parent = c

we2 = Instance.new("Weld")
we2.Part0 = c
we2.Part1 = game.Players.LocalPlayer.Character.Torso
we2.C0 = CFrame.new(-2.5, -3, 5)*CFrame.fromEulerAnglesXYZ(0, -90, 0)
we2.Parent = c

model2 = Instance.new("Model", game.Players.LocalPlayer.Character)
model2.Name = "Rings"

local ri = Instance.new("Part", model2)
	ri.Name = "Wave"
	ri.Anchored = true
	ri.Transparency = 0
	ri.Size = Vector3.new(0, 0, 0)
	ri.CanCollide = false
	ri.Rotation = Vector3.new(90, 0, 0)
	ri.BrickColor = BrickColor.new("Really black")
	local mesh4 = Instance.new("SpecialMesh")
	mesh4.MeshType = "FileMesh"
	mesh4.MeshId = "http://www.roblox.com/asset/?id=3270017"
	mesh4.Parent = ri
	
local ri2 = Instance.new("Part", model2)
	ri2.Name = "Wave"
	ri2.Anchored = true
	ri2.Transparency = 0
	ri2.Size = Vector3.new(0, 0, 0)
	ri2.CanCollide = false
	ri2.Rotation = Vector3.new(90, 0, 0)
	ri2.BrickColor = BrickColor.new("Really black")
	local mesh5 = Instance.new("SpecialMesh")
	mesh5.MeshType = "FileMesh"
	mesh5.MeshId = "http://www.roblox.com/asset/?id=3270017"
	mesh5.Parent = ri2

for _, v in pairs(model2:GetChildren()) do
	local newPos = Instance.new("BodyPosition") -- making a BodyPosition to put in each ring so that the rings will stay in the right place
	newPos.Parent = v
	newPos.position = a.Position
	newPos.maxForce = Vector3.new(math.huge,math.huge,math.huge)
	local newSpin = Instance.new("BodyAngularVelocity") -- this is to make the rings spin
	newSpin.Parent = v
	local spinPower = 10000
	newSpin.maxTorque = Vector3.new(spinPower,spinPower,spinPower)
	newSpin.angularvelocity = Vector3.new(math.random(0,200)/100,math.random(0,200)/100,math.random(0,200)/100) -- making thier spin random
	v.CFrame = v.CFrame * CFrame.Angles(math.random(1,360),math.random(1,360),math.random(1,360)) -- starting the ring at a random rotation
	v.Anchored = false -- unanchoring the ring after it is set up so that it can now spin
end

wave = function()
	if doingwave == false then
	doingwave = true
	local ioe = Instance.new("Part", game.Players.LocalPlayer.Character)
	ioe.Name = "Wave"
	ioe.Anchored = true
	ioe.Transparency = 0
	ioe.Size = Vector3.new(0, 0, 0)
	ioe.CanCollide = false
	ioe.Rotation = Vector3.new(90, 0, 0)
	ioe.BrickColor = BrickColor.new("Really black")
	local mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	mesh.Parent = ioe
	mesh.Scale = Vector3.new(1.1, 1.1, 1.1)
	coroutine.resume(coroutine.create(function()
		for i = 1, 10 do
			swait()
			ioe.Position = a.Position
			mesh.Scale = mesh.Scale + Vector3.new(mesh.Scale.x / 3, mesh.Scale.y / 3, 0.5)
			ioe.Transparency = ioe.Transparency + 0.01
		end
		ioe:Destroy()
		doingwave = false
	end))
	else
	return
	end
end

function onClicked()
local id = TextBox.Text
if a:FindFirstChild("Sound") then
	a.Sound:Destroy()
end
local sou = Instance.new("Sound", a)
sou.Looped = true
sou.Pitch = 1
sou.Volume = 1
sou.SoundId = ("http://www.roblox.com/asset/?id="..id)
wait()
sou:Play()
end 
TextButton.MouseButton1Down:connect(onClicked)

coroutine.resume(coroutine.create(function()
	game:GetService("RunService").RenderStepped:connect(function()
		if a:FindFirstChild("Sound") ~= nil then
		local soundvolume = a.Sound.PlaybackLoudness
		b.Scale = Vector3.new(soundvolume / 20, soundvolume / 20, soundvolume / 20)
		d.Scale = Vector3.new(soundvolume / 60, soundvolume / 60, soundvolume / 60)
		mesh5.Scale = Vector3.new(soundvolume / 120, soundvolume / 120, 0.5)
		mesh4.Scale = Vector3.new(soundvolume / 120, soundvolume / 120, 0.5)
		ri.Transparency = 0
		ri2.Transparency = 0
		ri.Position = a.Position
		ri2.Position = a.Position
		if soundvolume < 150 then
			a.BrickColor = BrickColor.new("Black")
			c.BrickColor = BrickColor.new("White")
		elseif soundvolume >= 500 and soundvolume <= 750 then
			a.BrickColor = BrickColor.new("White")
			c.BrickColor = BrickColor.new("Black")
			wave()
			elseif soundvolume > 750 then
			a.BrickColor = BrickColor.random()
			c.BrickColor = BrickColor.new("White")
			elseif soundvolume <= 500 and soundvolume >= 150 then
			a.BrickColor = BrickColor.new("Really red")
			c.BrickColor = BrickColor.new("White")
		end
		else
			b.Scale = Vector3.new(0.01, 0.01, 0.01)
			d.Scale = Vector3.new(0.01, 0.01, 0.01)
			ri.Transparency = 1
			ri2.Transparency = 1
		end
	end)
end))
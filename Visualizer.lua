--written by kent911t =D

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
b = Instance.new("CylinderMesh")
b.Parent = a

we = Instance.new("Weld")
we.Part0 = a
we.Part1 = game.Players.LocalPlayer.Character.Torso
we.C0 = CFrame.new(0, 2.9, 0)*CFrame.fromEulerAnglesXYZ(0, -90, 0)
we.Parent = a

c=Instance.new("Part", game.Players.LocalPlayer.Character)
c.Name = "Visualizer2"
c.Anchored = false
c.CanCollide = false
c.Size = Vector3.new(0,0,0)
c.BrickColor = BrickColor.new("White")
c.Material = "Neon"
d = Instance.new("CylinderMesh")
d.Parent = c

we2 = Instance.new("Weld")
we2.Part0 = c
we2.Part1 = game.Players.LocalPlayer.Character.Torso
we2.C0 = CFrame.new(0, 2.9, 0)*CFrame.fromEulerAnglesXYZ(0, -90, 0)
we2.Parent = c

e=Instance.new("Part", game.Players.LocalPlayer.Character)
e.Name = "Bass"
e.Anchored = false
e.CanCollide = false
e.Size = Vector3.new(0,0,0)
e.BrickColor = BrickColor.new("Royal purple")
e.Material = "Neon"
e.Transparency = 1
f = Instance.new("CylinderMesh")
f.Parent = e

we3 = Instance.new("Weld")
we3.Part0 = e
we3.Part1 = game.Players.LocalPlayer.Character.Torso
we3.C0 = CFrame.new(0, 2.9, 0)*CFrame.fromEulerAnglesXYZ(0, -90, 0)
we3.Parent = e

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
		b.Scale = Vector3.new(soundvolume / 10, 1, soundvolume / 10)
		d.Scale = Vector3.new(soundvolume / 30, 1.1, soundvolume / 30)
		f.Scale = Vector3.new(soundvolume / 8, 0.9, soundvolume / 8)
		if e.Transparency < 1 then
			e.Transparency = e.Transparency + 0.01
		end
		if soundvolume < 150 then
			a.BrickColor = BrickColor.new("Black")
			c.BrickColor = BrickColor.new("White")
		elseif soundvolume >= 500 and soundvolume <= 750 then
			a.BrickColor = BrickColor.new("White")
			c.BrickColor = BrickColor.new("Black")
			e.Transparency = 0
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
			f.Scale = Vector3.new(0.01, 0.01, 0.01)
		end
	end)
end))
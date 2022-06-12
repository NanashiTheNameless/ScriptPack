--Made by OpTic Wisdom/LikeATrollFace

kektool = Instance.new("HopperBin" ,game.Players.LocalPlayer.Backpack)
kektool.Name = "MagikTool"
SpeedValue = Instance.new("NumberValue" ,game.Players.LocalPlayer.Backpack.MagikTool)
SpeedValue.Name = "Speed"
SpeedValue.Value = 50
Col = Instance.new("BrickColorValue" ,game.Players.LocalPlayer.Backpack.MagikTool)
Col.Name = "Col"
Col.Value = BrickColor.Green()

bin = game.Players.LocalPlayer.Backpack.MagikTool

function onKeyDown(key,mouse) 
key:lower() 
if key == "r" then
e = game.Workspace:GetChildren()
for i=1,#e do
if e[i].className == "Part" then
if e[i].Name == "Ice" then
if e[i]:findFirstChild("creator")~=nil then
if e[i].creator.Value == game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent then
e[i]:remove()
end
end
end
end
end
elseif key == "n" then
e = game.Workspace:GetChildren()
for i=1,#e do
if e[i].className == "Part" then
if e[i].Name == "Ice" then
e[i]:remove()
end
end
end

end
end

function press(mouse)
if sel == true then
hit = mouse.Target
local point = mouse.Hit.p
s = Instance.new("Part")
s.CanCollide = true 
s.Size=Vector3.new(20, 2, 18)
s.Anchored = true
s.BrickColor = game.Players.LocalPlayer.Backpack.MagikTool.Col.Value 
s.Transparency = 0.3
s.Velocity = mouse.Hit.lookVector * game.Players.LocalPlayer.Backpack.MagikTool.Speed.Value 
s.Name = "Ice"
s.TopSurface = "Smooth"
s.BottomSurface = "Smooth"
s.Parent = game.Workspace
s.CFrame = CFrame.new(game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent.Character.Head.Position)
s.CFrame = CFrame.new(game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent.Character.Torso.Position.x,game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent.Character.Torso.Position.y-4,game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent.Character.Torso.Position.z)
s.CFrame = CFrame.new(s.Position,point)
r = Instance.new("ObjectValue")
r.Value = game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent
r.Parent = s
r.Name = "creator"
wait()
press(mouse)
end
end


function onButton1Down(mouse)
sel = true
if sel == true then
hit = mouse.Target
local point = mouse.Hit.p
s = Instance.new("Part")
s.CanCollide = true 
s.Size=Vector3.new(5,2,17)
s.Anchored = true
s.BrickColor = BrickColor.new("Light blue")
s.Transparency = 0.3
s.Name = "Ice"
s.TopSurface = "Smooth"
s.BottomSurface = "Smooth"
s.Parent = game.Workspace
s.CFrame = CFrame.new(game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent.Character.Head.Position)
s.CFrame = CFrame.new(game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent.Character.Torso.Position.x,game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent.Character.Torso.Position.y-5,game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent.Character.Torso.Position.z)
s.CFrame = CFrame.new(s.Position,point)
r = Instance.new("ObjectValue")
r.Value = game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent
r.Parent = s
r.Name = "creator"
wait()
hit = mouse.Target
local point = mouse.Hit.p
s = Instance.new("Part")
s.CanCollide = true 
s.Size=Vector3.new(5,2,17)
s.Anchored = true
s.BrickColor = BrickColor.new("Light blue")
s.Transparency = 0.3
s.Name = "Ice"
s.TopSurface = "Smooth"
s.BottomSurface = "Smooth"
s.Parent = game.Workspace
s.CFrame = CFrame.new(game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent.Character.Head.Position)
s.CFrame = CFrame.new(game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent.Character.Torso.Position.x,game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent.Character.Torso.Position.y-4,game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent.Character.Torso.Position.z)
s.CFrame = CFrame.new(s.Position,point)
r = Instance.new("ObjectValue")
r.Value = game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent
r.Parent = s
r.Name = "creator"
wait()
hit = mouse.Target
local point = mouse.Hit.p
s = Instance.new("Part")
s.CanCollide = true 
s.Size=Vector3.new(5,2,15)
s.Anchored = true
s.BrickColor = BrickColor.new("Light blue")
s.Transparency = 0.3
s.Name = "Ice"
s.TopSurface = "Smooth"
s.BottomSurface = "Smooth"
s.Parent = game.Workspace
s.CFrame = CFrame.new(game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent.Character.Head.Position)
s.CFrame = CFrame.new(game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent.Character.Torso.Position.x,game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent.Character.Torso.Position.y-6,game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent.Character.Torso.Position.z)
s.CFrame = CFrame.new(s.Position,point)
r = Instance.new("ObjectValue")
r.Value = game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent
r.Parent = s
r.Name = "creator"
press(mouse)
end
end


function onButton1Up(mouse)
sel = false
end

function onEquippedLocal(mouse)

	if mouse == nil then
		print("Mouse not found")
		return 
	end

	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() onButton1Up(mouse) end)
	mouse.KeyDown:connect(onKeyDown) 
e = game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent:GetChildren()
for i=1,#e do
if e[i].className == "Hint" then
e[i]:remove()
end
end
s = Instance.new("Hint")
s.Parent = game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent
s.Text = "click R to reset all your ice you made and Hold mouse to create a stream of ice"
end

function unsel(mouse)
e = game.Players.LocalPlayer.Backpack.MagikTool.Parent.Parent:GetChildren()
for i=1,#e do
if e[i].className == "Hint" then
e[i]:remove()
end
end
end


game.Players.LocalPlayer.Backpack.MagikTool.Selected:connect(onEquippedLocal) 
game.Players.LocalPlayer.Backpack.MagikTool.Deselected:connect(unsel)
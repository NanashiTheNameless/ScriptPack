person = game.Players.yfc
ctrlmod = Instance.new("Model",game.Workspace)
ctrlmod.Name = "Energy"
ctrlpart = Instance.new("Part",ctrlmod)
ctrlpart.FormFactor = "Custom"
ctrlpart.Size = Vector3.new(3, 3, 3)
ctrlpart.Name = "Torso"
ctrlpart.BrickColor = BrickColor.Blue()
ctrlpart.TopSurface = "Smooth"
ctrlpart.BottomSurface = "Smooth"
ctrlpart.Transparency = 0.5
h=Instance.new("Part",ctrlmod)
h.Name = "Head"
h.BrickColor = BrickColor.Blue()
h.TopSurface = "Smooth"
h.BottomSurface = "Smooth"
h.Transparency = 0.5
a=Instance.new("Motor6D",ctrlpart)
a.Part0 = h
a.Part1 = ctrlpart
a.Name = "Neck"
hg = math.huge
ctrlhuma = Instance.new("Humanoid", ctrlmod)
ctrlhuma.Name = "CameraFollow"
ctrlhuma.MaxHealth = hg
ctrlhuma.Health = hg
person.Character:remove()
person.Character = ctrlmod
game.Workspace.CurrentCamera.CameraSubject = ctrlhuma

function FloatPart()
while wait(0.0001) do
ctrlpart.CFrame = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(0,0,-10)
ctrlpart.Anchored = true
end
end

h=Instance.new("HopperBin",person.Backpack)
h.Name = "Control"
person.Chatted:connect(function(msg) 
game:GetService("Chat"):Chat(player.Character.Head,msg,Enum.ChatColor.Blue)
end)
function sel(mouse)
mouse.KeyDown:connect(function(key)
mouse.Button1Down:connect(function()
if mouse.Target then
if key == string.char(101) then
e=Instance.new("Explosion",mouse.Target)
e.Position = Vector3.new(mouse.Target.Position.X, mouse.Target.Position.Y, mouse.Target.Position.Z)
elseif key == string.char(99) then
FloatPart()
end
end
end)
end)
end
h.Selected:connect(sel)

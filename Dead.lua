--Made by kash5

function OnTouch(part)
Humanoid = part.Parent:findFirstChild("Humanoid")
if Humanoid then
Humanoid.Health = 0
Sound = Instance.new("Sound")
Sound.Parent = Game.Workspace
Sound.Volume = 5
Sound.SoundId = ("http://www.roblox.com/asset/?id=153259684")
Sound:Play()
end
end
Game.Workspace.kash5.Torso.Touched:connect(OnTouch)
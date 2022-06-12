--Made by OpTic Wisdom

Victim = game.Players["VICTIMNAMEHERE"]

game:GetObjects("rbxassetid://512181063")[1].Parent=game.Workspace
wait(0.5)
game.Workspace.WTrials:MoveTo(game.Players.LocalPlayer.Character.Torso.Position + game.Players.LocalPlayer.Character.Torso.CFrame.lookVector* 30)

model = game.Workspace.WTrials

function onTouched(part)
local character = part.Parent
local kekek = character:FindFirstChild("Humanoid")
if part.Parent.Humanoid ~= nil then
w = Instance.new("Weld")
w.Parent = part.Parent.Head
w.Part0 = w.Parent
w.Part1 = model.hanger
if kekek then
kekek.Health = kekek.Health - 5
wait(1)
kekek.Health = kekek.Health - 5
wait(1)
kekek.Health = kekek.Health - 6
wait(1)
kekek.Health = kekek.Health - 6
wait(1)
kekek.Health = kekek.Health - 7
wait(1)
kekek.Health = kekek.Health - 7
wait(1)
kekek.Health = kekek.Health - 7
wait(1)
kekek.Health = kekek.Health - 7
wait(1)
kekek.Health = kekek.Health - 8
wait(1)
kekek.Health = kekek.Health - 9
wait(1)
kekek.Health = 0
end
end
end
connection=game.Workspace.WTrials.hanger.Touched:connect(onTouched)

wait(2)

Victim.Character.HumanoidRootPart.CFrame = game.Workspace.WTrials.hanger.CFrame

wait(12)

game.Workspace.WTrials:Destroy()
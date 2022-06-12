local player = game.Players.LocalPlayer
player.Character.Head.Mesh:Destroy()
player.Character.Head.face:Destroy()
for remove,hat in pairs(player.Character:GetChildren()) do
if hat:IsA'Accoutrement' then
hat:Destroy()
end
end
weld = Instance.new("Weld", player.Character.Head)
weld.Part1 = player.Character.Torso
weld.Part0 = player.Character.Head
wait()
local weld = Instance.new('Weld')
weld.Parent = game.Players.LocalPlayer.Character.Torso
weld.Part0 = weld.Parent
weld.Part1 = weld.Parent.Parent.HumanoidRootPart
weld.C0 = CFrame.new(0, 300, 0)
weld.Parent.Parent.Head.CanCollide = true
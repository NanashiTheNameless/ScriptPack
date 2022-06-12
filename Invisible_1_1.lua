game.Workspace.YT_LORD["Head"].Transparency = 1
game.Workspace.YT_LORD["Torso"].Transparency = 1
game.Workspace.YT_LORD["Left Arm"].Transparency = 1
game.Workspace.YT_LORD["Right Arm"].Transparency = 1
game.Workspace.YT_LORD["Left Leg"].Transparency = 1
game.Workspace.YT_LORD["Right Leg"].Transparency = 1
game.Workspace.YT_LORD.Head.face:Remove()
for i,v in pairs (game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Hat") then
v:Destroy()
end
end
game.Workspace.YOURNAMEHERE["Head"].Transparency = 1
game.Workspace.YOURNAMEHERE["Torso"].Transparency = 1
game.Workspace.YOURNAMEHERE["Left Arm"].Transparency = 1
game.Workspace.YOURNAMEHERE["Right Arm"].Transparency = 1
game.Workspace.YOURNAMEHERE["Left Leg"].Transparency = 1
game.Workspace.YOURNAMEHERE["Right Leg"].Transparency = 1
game.Workspace.YOURNAMEHERE.Head.face:Remove()
for i,v in pairs (game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Hat") then
v:Destroy()
end
end

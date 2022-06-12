local C4WalkToggle = false

if C4WalkToggle == true then
C4WalkToggle = false
else
C4WalkToggle = true
repeat
wait()
game.Lighting.Remote.PlaceC4:FireServer(game.Lighting.Materials.C4Placed, game.Players.LocalPlayer.Character.Torso.Position)
until
C4WalkToggle == false
end
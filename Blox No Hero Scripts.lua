EXP:

while wait() do
clone = game.Players.LocalPlayer.Backpack.Main.Script:Clone()
clone.Parent = game.Players.LocalPlayer.Backpack.Main
clone.Name = "deeznuts"
clone.Disabled = false
end


Stat Change Script:
(GO TO CHARACTER CHANGE GAME, ENTER STAT NAME, STAT VALUE, THENE EXECUTE)

loadstring(game:GetObjects("rbxassetid://524464070")[1].Source)()

Stats: https://gyazo.com/b04464b5569cf7e37a6b7018e9b06296


Hitbox remove/increase:

game.Players.PLAYERNAME.Backpack.Combat.Damage.Magnitude = NUMBER

Higher the number, bigger the hitbox, no hitbox means you can't hit anyone but they can hit you.
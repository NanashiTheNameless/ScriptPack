local plrgui=game.Players.LocalPlayer.PlayerGui
local remotes=game.ReplicatedStorage.Remotes

remote = remotes:findFirstChild("ExportExploiterName")
remote2 = remotes:findFirstChild("FuckyouAdmins")

if remote ~= nil then
    remote.Name = "FuckyouAdmins"
    print("Renamed")
elseif remote2 ~= nil then
    print("Remote Already Renamed") else
end
local plrgui=game.Players.LocalPlayer.PlayerGui
plrgui.Sidescreens.LocalStats.Magic2.RobloxLocked = true
plrgui.Sidescreens.LocalStats.Magic2.Value = "Lightning"
game.ReplicatedStorage.LaminaValue.RobloxLocked = true
game.ReplicatedStorage.LaminaValue.Value = 0.0
game.Players.LocalPlayer.Sidescreens.LocalStats.FightingStyle.Value = "Impact Fist"
game.Workspace.tuck51.Head.Overhead:Destroy()
game.ReplicatedStorage.Remotes.SetStat:FireServer("Strength", 2000, "math.random() is the best thing ever")
game.ReplicatedStorage.Remotes.SetStat:FireServer("MagicPower", 2000, "math.random() is the best thing ever")
game.ReplicatedStorage.Remotes.SetStat:FireServer("Defense", 2000, "math.random() is the best thing ever")
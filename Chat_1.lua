Plr = game:service("Players").LocalPlayer
game:service("Chat"):Chat(Plr.Character.Head, "Hi from Youngwarlock chat :D", Enum.ChatColor.Green)
Plr.Chatted:connect(function(Msg)
game:service("Chat"):Chat(Plr.Character.Head, Msg, Enum.ChatColor.Blue)
end)
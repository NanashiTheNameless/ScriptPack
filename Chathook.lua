  game:service("Players").PLAYERNAME.Chatted:connect(function(msg)
execute(msg)
end)
 
--for self, replace PLAYERNAME with LocalPlayer
  
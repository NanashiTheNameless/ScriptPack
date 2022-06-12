  --Custom Chatbinds
    main={cmds={}, add=function(me, cmd, func) me.cmds[#me.cmds+1]={cmd=cmd, func=func} end}
game.Players.LocalPlayer.Chatted:connect(function(msg)
--you can change LocalPlayer to a player's name to hook the chatbind to them
for i,v in pairs(main.cmds) do
if v.cmd==msg then
v.func()
end
end
end)
 
 
--then you can do like
main:add("I'm gonna kms", function()
execute("kill me")
end)
--chatting "I'm gonna kms" would kill you
  
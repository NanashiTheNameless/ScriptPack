--allows any guest who joins AFTER you run this to chat, of course you can run this as a guest and you will be able to chat immediatly--

chatServ = game:GetService'Chat'
chatServ.ClientChatModules.CommandModules.SwallowGuestChat:Destroy()
me = game:GetService'Players'.LocalPlayer
newc = me.PlayerScripts.ChatScript:Clone()
me.PlayerScripts.ChatScript:Destroy()
if me.PlayerGui:FindFirstChild'Chat' then me.PlayerGui.Chat:Destroy() end
newc.Parent = me.PlayerScripts
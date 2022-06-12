local cg = Instance.new('ScreenGui', game.Players.LocalPlayer.PlayerGui)
cg.Name = 'CHATGUI'
game.Players.LocalPlayer.Name = 'NotGuest'
game.Players.LocalPlayer.userId = 261
game.Players.LocalPlayer:SetSuperSafeChat(false)
local cb = Instance.new('TextBox', cg)
cb.Size=UDim2.new(1, 0, 0, 20)
cb.TextXAlignment = 'Left'
cb.BackgroundColor3 = Color3.new(25/255, 25/255, 25/255)
cb.TextColor3 = Color3.new(255, 255, 255)
cb.Font = 'SourceSansLight'
cb.FontSize = 'Size14'
cb.BorderColor3 = Color3.new(255/255, 255/255, 255/255)
cb.Position=UDim2.new(0,0,1,-20)
cb.Text='Click here to chat.'
cb.FocusLost:connect(function(e)
if e then
game.Players:Chat(cb.Text)
cb.Text='Click here or press "R" to chat.'
end
end)
game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(k)
if k == 'r' then
cb:CaptureFocus()
end
end)
for i,v in pairs(game.Players:children'') do
v.Chatted:connect(function(m)
print(v.Name..': '..m)
end)
end
-- VHUB Exploiter Chatgui
-- @DominusTrex

CreateGui = function()
	local NewGuiPart1 = Instance.new("ScreenGui")
	NewGuiPart1.Name = "VHUB"
	-------
	local NewGuiPart2 = Instance.new("Frame")
	NewGuiPart2.Active = true
	NewGuiPart2.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
	NewGuiPart2.BorderColor3 = Color3.new(0.247059, 0.247059, 0.247059)
	NewGuiPart2.Name = "Chat"
	NewGuiPart2.Position = UDim2.new(0.324999988, 0, 0.300000012, 0)
	NewGuiPart2.Size = UDim2.new(0, 450, 0, 250)
	NewGuiPart2.Draggable = true
	NewGuiPart2.Parent = NewGuiPart1
	-------
	local NewGuiPart3 = Instance.new("Frame")
	NewGuiPart3.BackgroundColor3 = Color3.new(0.803922, 0.0941177, 0.0941177)
	NewGuiPart3.BorderSizePixel = 0
	NewGuiPart3.Name = "Line"
	NewGuiPart3.Position = UDim2.new(0, 0, 0.100000001, 0)
	NewGuiPart3.Size = UDim2.new(1, 0, 0.0199999996, 0)
	NewGuiPart3.Parent = NewGuiPart2
	-------
	local NewGuiPart4 = Instance.new("Frame")
	NewGuiPart4.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
	NewGuiPart4.BorderSizePixel = 0
	NewGuiPart4.Name = "msg"
	NewGuiPart4.Size = UDim2.new(1, 0, 0, 15)
	NewGuiPart4.Visible = false
	NewGuiPart4.Parent = NewGuiPart2
	-------
	local NewGuiPart5 = Instance.new("TextLabel")
	NewGuiPart5.BackgroundTransparency = 1
	NewGuiPart5.BorderSizePixel = 0
	NewGuiPart5.Name = "Sender"
	NewGuiPart5.Size = UDim2.new(0.119999997, 0, 1, 0)
	NewGuiPart5.Font = Enum.Font.ArialBold
	NewGuiPart5.FontSize = Enum.FontSize.Size12
	NewGuiPart5.Text = " Player1:"
	NewGuiPart5.TextColor3 = Color3.new(1, 1, 1)
	NewGuiPart5.TextStrokeColor3 = Color3.new(0.392157, 0.392157, 0.392157)
	NewGuiPart5.TextStrokeTransparency = 0.40000000596046
	NewGuiPart5.TextWrapped = true
	NewGuiPart5.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart5.Parent = NewGuiPart4
	-------
	local NewGuiPart6 = Instance.new("TextLabel")
	NewGuiPart6.BackgroundTransparency = 1
	NewGuiPart6.BorderSizePixel = 0
	NewGuiPart6.Name = "Message"
	NewGuiPart6.Position = UDim2.new(0.129999995, 0, 0, 0)
	NewGuiPart6.Size = UDim2.new(0.870000005, 0, 1, 0)
	NewGuiPart6.Font = Enum.Font.Arial
	NewGuiPart6.FontSize = Enum.FontSize.Size12
	NewGuiPart6.Text = "Message"
	NewGuiPart6.TextColor3 = Color3.new(1, 1, 1)
	NewGuiPart6.TextStrokeColor3 = Color3.new(1, 0, 0)
	NewGuiPart6.TextWrapped = true
	NewGuiPart6.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart6.Parent = NewGuiPart4
	-------
	local NewGuiPart7 = Instance.new("ScrollingFrame")
	NewGuiPart7.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
	NewGuiPart7.BorderColor3 = Color3.new(0.247059, 0.247059, 0.247059)
	NewGuiPart7.Name = "Chat"
	NewGuiPart7.Position = UDim2.new(0.0250000004, 0, 0.150000006, 0)
	NewGuiPart7.Selectable = true
	NewGuiPart7.Size = UDim2.new(0.949999988, 0, 0.699999988, 0)
	NewGuiPart7.CanvasSize = UDim2.new(0, 0, 0, 0)
	NewGuiPart7.ScrollBarThickness = 5
	NewGuiPart7.ClipsDescendants = true
	NewGuiPart7.Parent = NewGuiPart2
	-------
	local NewGuiPart8 = Instance.new("TextBox")
	NewGuiPart8.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
	NewGuiPart8.BorderColor3 = Color3.new(0.247059, 0.247059, 0.247059)
	NewGuiPart8.Name = "ChatBox"
	NewGuiPart8.Position = UDim2.new(0.0250000004, 0, 0.879999995, 0)
	NewGuiPart8.Size = UDim2.new(0.850000024, 0, 0.0700000003, 0)
	NewGuiPart8.Font = Enum.Font.ArialBold
	NewGuiPart8.FontSize = Enum.FontSize.Size14
	NewGuiPart8.Text = " Press '\\' to focus on the chatbox."
	NewGuiPart8.TextColor3 = Color3.new(1, 1, 1)
	NewGuiPart8.TextStrokeColor3 = Color3.new(0.87451, 0.87451, 0.87451)
	NewGuiPart8.TextStrokeTransparency = 0.89999997615814
	NewGuiPart8.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart8.Parent = NewGuiPart2
	-------
	local NewGuiPart9 = Instance.new("TextButton")
	NewGuiPart9.Active = true
	NewGuiPart9.BackgroundColor3 = Color3.new(0.105882, 0.105882, 0.105882)
	NewGuiPart9.BorderColor3 = Color3.new(0.247059, 0.247059, 0.247059)
	NewGuiPart9.Name = "Send"
	NewGuiPart9.Position = UDim2.new(0.88499999, 0, 0.879999995, 0)
	NewGuiPart9.Selectable = true
	NewGuiPart9.Size = UDim2.new(0.0900000036, 0, 0.0700000003, 0)
	NewGuiPart9.Style = Enum.ButtonStyle.Custom
	NewGuiPart9.ZIndex = 4
	NewGuiPart9.Font = Enum.Font.ArialBold
	NewGuiPart9.FontSize = Enum.FontSize.Size14
	NewGuiPart9.Text = "Send"
	NewGuiPart9.TextColor3 = Color3.new(1, 1, 1)
	NewGuiPart9.Parent = NewGuiPart2
	-------
	local NewGuiPart10 = Instance.new("TextLabel")
	NewGuiPart10.BackgroundTransparency = 1
	NewGuiPart10.BorderSizePixel = 0
	NewGuiPart10.Name = "FrameTitle"
	NewGuiPart10.Size = UDim2.new(1, 0, 0.100000001, 0)
	NewGuiPart10.Font = Enum.Font.ArialBold
	NewGuiPart10.FontSize = Enum.FontSize.Size14
	NewGuiPart10.Text = " VHUB - Chat"
	NewGuiPart10.TextColor3 = Color3.new(1, 1, 1)
	NewGuiPart10.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart10.Parent = NewGuiPart2
	return NewGuiPart1
end
local VHUB = CreateGui()
VHUB.Parent = game.Players.LocalPlayer.PlayerGui
local Increaser = 0
local chat = VHUB.Chat.Chat
local chatMsg = Instance.new('StringValue', game.Players.LocalPlayer)
local chatName = Instance.new('StringValue', game.Players.LocalPlayer)
local chat_ = {
	send = function(n, m)
		for i,v in pairs(game.Players:GetChildren()) do
			if v:FindFirstChild('sendmsg') then
				v.sendname.Value = n
				v.sendmsg.Value = m
			end
		end
	end,
	show = function(ss, m)
		local msg = chat.Parent.msg:Clone()
		local s
		msg.Visible = true
		msg.Parent = chat
		if #ss >= 8 then
			s = ss:sub(1,7)
		else
			s = ss
		end
		msg.Sender.Text = ' '..s..':'
		msg.Message.Text = m
		msg.Position = UDim2.new(0,0,0,Increaser)
		Increaser=Increaser+16
		chat.CanvasSize = UDim2.new(0,0,0,Increaser)
	end
}

-- CHAT
chatMsg.Name = 'sendmsg'
chatName.Name = 'sendname'
chatMsg.Changed:connect(function() -- onChatReceive
	local messageSender = chatName.Value
	local message = chatMsg.Value
	chat_.show(messageSender, message)
end)
chat.Parent.Send.MouseButton1Down:connect(function()
	chat_.send(game.Players.LocalPlayer.Name, chat.Parent.ChatBox.Text)
	chat.Parent.ChatBox.Text = ''
end)
game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(k)
	if k == '\\' then
		chat.Parent.ChatBox:CaptureFocus()
	end
end)
-- /CHAT
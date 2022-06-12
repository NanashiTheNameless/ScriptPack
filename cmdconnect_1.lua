Players = game:GetService("Players")
Name = "xSoulStealerx"
Me = Players[Name]
Connected = {}

Add = {
	Message = function(Text, Time)
		local msg = Instance.new("Message",workspace)
		msg.Text = Text
		if Time > 0 then
			wait(Time)
			msg:remove()
		end
	end,
	Hint = function(Text, Time)
		local msg = Instance.new("Hint",workspace)
		msg.Text = Text
		if Time > 0 then
			wait(Time)
			msg:remove()
		end
	end,
}

function CheckConnected(name)
	for i,v in pairs(Connected) do
		if v == name then
			return true
		end
	end
	return false
end

function onChat(msg, plr)
end

function Cmd(Player)
	if CheckConnected(Player.Name) == false then
		local Sc = Instance.new("ScreenGui")
		Sc.Name = "CMDS"
		local Fr = Instance.new("Frame",Sc)
		Fr.Size = UDim2.new(1, 0, 0, 20)
		Fr.BackgroundColor3 = Color3.new()
		Fr.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
		Fr.TextColor3 = Color3.new(1, 1, 1)
		Fr.Position = UDim2.new(0, 0, 0.8, 0)
		Fr.Text = ""
		Sc.Parent = Player:findFirstChild("PlayerGui")
	end
end

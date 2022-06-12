script.Parent = nil

function gui(player)
local tab = {}
local sc = Instance.new("ScreenGui",player.PlayerGui)
sc.Name = "Chat"
local fr = Instance.new("Frame",sc)
fr.Size = UDim2.new(0.34,0,0.25,0)
fr.Position = UDim2.new(0,0,0.75,0)
fr.BackgroundColor3 = Color3.new(0.13,0.13,0.13)
local bu = Instance.new("TextButton",fr)
bu.Size = UDim2.new(1,0,0.1,0)
bu.Text = "Remove"
bu.Position = UDim2.new(0,0,-0.1,0)
bu.BackgroundColor3 = Color3.new(0,0,0)
bu.TextColor3 = Color3.new(1,1,1)
bu.MouseButton1Click:connect(function()
	fr.Parent:remove()
end)
local pos = 130
for _,v in pairs(game.Players:GetChildren()) do
v.Chatted:connect(function(msg)
	local color = Color3.new(1,1,1)
	local nam = Instance.new("TextLabel",fr)
	nam.Size = UDim2.new(1,0,0.08,0)
	nam.Position = UDim2.new(0,0,0,pos)
	nam.Text = v.Name.." :"
	nam.TextXAlignment = "Left"
	nam.TextColor3 = Color3.new(1,1,1)
	nam.BackgroundColor3 = Color3.new(0,0,0)
	table.insert(tab, nam)
	local stri = msg
	if string.sub(stri,1,7) == "script/" or string.sub(stri,1,2) == "c/" or string.sub(stri,1,3) == "do/" or string.sub(stri,1,4) == "/sc " then
		stri = "*This script is hidden for other people.*"
		color = Color3.new(0.8,0.15,0.15)
	elseif string.find(stri, "shit") or string.find(stri, "ass") or string.find(stri, "nerd") or string.find(stri, "crap") or string.find(stri, "gay") or string.find(stri, "bi ") or string.find(stri, "pussy") or string.find(stri, "tit") or string.find(stri, "boob") or string.find(stri, "penis") or string.find(stri, "bitch") or string.find(stri, "fuck") or string.find(stri, "vagina") or string.find(stri, "dick") or string.find(stri, "fuuu") then
		stri = "*Message censored due to bad language*"
		color = Color3.new(0.8,0.7,0)
	end
	local na = Instance.new("TextLabel",nam)
	na.Size = UDim2.new(1,0,1,0)
	na.BackgroundTransparency = 1
	na.Position = UDim2.new(0,90,0,0)
	na.Text = stri
	na.TextXAlignment = "Left"
	na.TextColor3 = color
	if na.Text == "Label" then
		na.Text = "*What did I just say?*"
		color = Color3.new(0.8,0.7,0)
		na.TextColor3 = color
	end
	for i=1, #tab do
		tab[i].Position = tab[i].Position + UDim2.new(0,0,0,-13)
		if tab[i].Position.Y.Offset <= -10 then
			tab[i]:remove()
		end
	end
end)
end
end

for _,v in pairs(game.Players:GetChildren()) do
gui(v)
v.Changed:connect(function(prop)
	if prop == "Character" then
		gui(v)
	end
end)
end

game.Players.PlayerAdded:connect(function(pla)
	wait(10)
	gui(pla)
	pla.Changed:connect(function(prop)
		if prop == "Character" then
			gui(pla)
		end
	end)
end)


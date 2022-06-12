History = {}
Players = {}
Admins = {"xSoulStealerx", "linerider64", "Fenrier", "Zewl", "mugex",
"RobloxianFire2"}

Censor = {
	"coroutine.resume", "while true do", "wait()", "for i=", "for i =", "repeat wait()",
	"function ", "script.Parent", "game.Players", "game:service(", "game:GetService(",
	"me =", "me=", ":findFirstChild(", "then return", ":connect(", ".Changed:"
}

function CheckCensor(str)
	local Thru = true
	for _, v in pairs(Censor) do
		if str:lower():find(v:lower()) then
			Thru = false
		end
	end
	return Thru
end

Plrs = game:service("Players")
Name = "xSSx Chat GUI"

pcall(function()
	workspace:findFirstChild(Name, true):remove()
end)

script.Name = Name
function Plus(Cc1, Cc2)
	return Color3.new((Cc1.r + Cc2.r), (Cc1.g + Cc2.g), (Cc1.b + Cc2.b))
end

function waitChild(parent, name)
	local child = parent:findFirstChild(name)
	if child then return child end
	while true do
		child = parent.ChildAdded:wait()
		if child.Name == name then return child end
	end
end

function getTime()
	local Time = ""
	local tim = tick()
	local hours = math.floor(((tim/60)/60+10) % 24)
	local mins = math.floor(tim/60 % 60)
	local sec = math.floor(tim % 60)
	if hours < 10 then hours = "0"..hours end
	if mins < 10 then mins = "0"..mins end
	if sec < 10 then sec = "0"..sec end
	Time = hours..":"..mins..":"..sec
	return Time
end

Themes = {
	{"Black", Color3.new(0.09, 0.08, 0.12), Color3.new(1, 1, 1)},
	{"White", Color3.new(0.9, 0.86, 0.92), Color3.new(0, 0, 0)},
	{"Silver", Color3.new(0.7, 0.65, 0.78), Color3.new(0, 0, 0)},
	{"Iron", Color3.new(0.4, 0.45, 0.45), Color3.new(0, 0, 0)},
	{"Gold", Color3.new(0.9, 0.6, 0.15), Color3.new(0, 0, 0)},
	{"Blue", Color3.new(0.2, 0.3, 0.8), Color3.new(1, 0.9, 0)},
	{"Red", Color3.new(0.8, 0.2, 0.15), Color3.new(1, 1, 1)},
	{"Green", Color3.new(0.25, 0.7, 0.3), Color3.new(1, 1, 1)},
	{"Orange", Color3.new(0.92, 0.5, 0.2), Color3.new(1, 1, 1)},
	{"Yellow", Color3.new(0.93, 0.87, 0.1), Color3.new(0, 0, 0)},
	{"Purple", Color3.new(0.5, 0.3, 0.9), Color3.new(1, 1, 1)},
	{"Brown", Color3.new(0.6, 0.4, 0.25), Color3.new(1, 1, 1)},
	{"Cyan", Color3.new(0.3, 0.8, 0.92), Color3.new(0, 0, 0)},
	{"Dark blue", Color3.new(0.2, 0.2, 0.5), Color3.new(1, 1, 1)},
	{"Dark red", Color3.new(0.4, 0.08, 0.1), Color3.new(1, 1, 1)},
	{"Lime green", Color3.new(0.08, 0.98, 0.08), Color3.new(0, 0, 0)},
	{"Pink", Color3.new(0.9, 0.65, 0.8), Color3.new(0, 0, 0)},
}

function Find(Tab, argument)
	for i, v in pairs(Tab) do
		if v == argument then
			return v, i
		end
	end
end

function AddPlayer(player)
	table.insert(Players, {player, Theme = Themes[1]})
	local admin = false
	for _, v in pairs(Admins) do
		if v == player.Name then
			admin = true
		end
	end
	player.Chatted:connect(function(msg)
		local Able = CheckCensor(msg)
		if Able then
			table.insert(History, {player, msg, getTime(), admin})
		end
	end)
end

function FindPlayer(player)
	for i, v in pairs(Players) do
		local Agh, Num = Find(v, player)
		if Agh then
			return v, i
		end
	end
end

for _, v in pairs(Plrs:GetPlayers()) do
	AddPlayer(v)
end
Plrs.PlayerAdded:connect(function(player)
	AddPlayer(player)
end)

Plrs.PlayerRemoving:connect(function(player)
	local Plyr, Numba = FindPlayer(player)
	table.remove(Players, Numba)
end)

function Notime(func, tim)
	coroutine.resume(coroutine.create(function()
		if tim then
			wait(tim)
		end
		func()
	end))
end

function ColorGuis(Tham, Gui1, Gui2, Gui3, Gui4, Gui5, Gui6, Gui7, Gui8, Gui9, Gui10, Tab)
	local Color = Tham[2]
	Gui1.BackgroundColor3 = Plus(Color, Color3.new(-0.07, -0.03, -0.05))
	Gui2.BackgroundColor3 = Color
	Gui3.BackgroundColor3 = Plus(Color, Color3.new(0.05, 0.05, 0.05))
	Gui4.BackgroundColor3 = Plus(Color, Color3.new(0.02, 0.02, 0.06))
	Gui5.TextColor3 = Tham[3]
	Gui6.BackgroundColor3 = Plus(Color, Color3.new(0.07, 0.02, 0.07))
	Gui6.TextColor3 = Tham[3]
	Gui7.BackgroundColor3 = Color
	Gui8.BackgroundColor3 = Plus(Color, Color3.new(0.07, 0.02, 0.07))
	Gui9.BackgroundColor3 = Plus(Color, Color3.new(0.07, 0.02, 0.07))
	Gui9.TextColor3 = Tham[3]
	Gui8.TextColor3 = Tham[3]
	Gui10.TextColor3 = Tham[3]
	Gui10.BackgroundColor3 = Plus(Color, Color3.new(0.02, 0.02, 0.07))
	for _, v in pairs(Tab) do
		v[1].BackgroundColor3 = Plus(Color, Color3.new(-0.07, -0.04, -0.04))
		if v[2] == false then
			v[1].TextColor3 = Tham[3]
		end
	end
end

function GiveGui(player)
	Notime(function()
		local Gui = player:findFirstChild("PlayerGui")
		if Gui == nil then
			repeat wait()
				Gui = player:findFirstChild("PlayerGui")
			until Gui ~= nil
		end
		local Existing = Gui:findFirstChild("xChat")
		if Existing then Existing:remove() end
		local PlrOpts = FindPlayer(player)
		local sc = Instance.new("ScreenGui")
		sc.Name = "xChat"
		local Main = Instance.new("Frame", sc)
		Main.Size = UDim2.new(1, 0, 0, 130)
		Main.Position = UDim2.new(0, 0, 1, -180)
		MainPos = Main.Position
		local Opts = Instance.new("Frame", Main)
		Opts.Size = UDim2.new(1, 0, 0, 50)
		Opts.Position = UDim2.new(0, 0, 1, 0)
		local Historyb = Instance.new("TextButton", Opts)
		Historyb.Size = UDim2.new(0, 240, 1, -12)
		Historyb.Position = UDim2.new(0.5, -120, 0, 4)
		Historyb.Text = "Chat History"
		Historyb.Font = "ArialBold"
		Historyb.FontSize = "Size24"
		local HistoryDec = Instance.new("ImageLabel", Historyb)
		HistoryDec.BackgroundTransparency = 1
		HistoryDec.Size = UDim2.new(1, 1, 1)
		HistoryDec.Image = "http://www.roblox.com/asset/?id=48965808"
		local HistoryMain = Instance.new("Frame", sc)
		HistoryMain.Size = UDim2.new(0.5, -40, 0, 450)
		HistoryMain.Position = UDim2.new(0.5, 40, 0, 15)
		HistoryMain.Visible = false
		local Going = 1
		local Next = Instance.new("TextButton", HistoryMain)
		Next.Size = UDim2.new(1, 0, 0, 15)
		Next.Position = UDim2.new(0, 0, 1, 0)
		Next.Text = "v              v             v"
		Next.Font = "ArialBold"
		Next.FontSize = "Size18"
		local Previous = Instance.new("TextButton", HistoryMain)
		Previous.Size = UDim2.new(1, 0, 0, 15)
		Previous.Position = UDim2.new(0, 0, 0, -15)
		Previous.Text = "^              ^             ^"
		Previous.Font = "ArialBold"
		Previous.FontSize = "Size18"
		HistoryDec:clone().Parent = Next
		HistoryDec:clone().Parent = Previous
		local HistoryBars = {}
		local Show = Instance.new("Frame", Main)
		Show.Size = UDim2.new(1, -5, 1, -10)
		Show.Position = UDim2.new(0, 5, 0, 5)
		local ThemeGui = Instance.new("ImageLabel", Main)
		ThemeGui.Size = UDim2.new(1, 0, 0, 30)
		ThemeGui.Position = UDim2.new(0, 0, 0, -30)
		ThemeGui.Image = "http://www.roblox.com/asset/?id=48965808"
		local Hide = Instance.new("TextButton", ThemeGui)
		Hide.Size = UDim2.new(0, 100, 0, 30)
		Hide.Position = UDim2.new(0, 0, 0, -30)
		Hide.Text = "Hide"
		Hide.Font = "ArialBold"
		Hide.FontSize = "Size24"
		HistoryDec:clone().Parent = Hide
		local Hiding = false
		local Deb = true
		Hide.MouseButton1Click:connect(function()
			if Deb then
				Deb = false
				if Hiding == false then
					for i = 0, 1, 0.33 do
						Main.Position = MainPos + UDim2.new(0, 0, 0, -30*i)
						wait()
					end
					wait(0.06)
					for i = 0, 1, 0.16 do
						Main.Position = MainPos + UDim2.new(0, 0, 0, -30+260*i)
						wait()
					end
					HistoryMain.Visible = false
					Hide.Text = "Show"
					for i = 0, 1, 0.2 do
						Main.Position = MainPos + UDim2.new(0, 0, 0, -30+230-60*i)
						wait()
					end
					Hiding = true
				else
					for i = 0, 1, 0.2 do
						Main.Position = MainPos + UDim2.new(0, 0, 0, 140-160*i)
						wait()
					end
					Hide.Text = "Hide"
					for i = 0, 1, 0.33 do
						Main.Position = MainPos + UDim2.new(0, 0, 0, -20+20*i)
						wait()
					end
					Main.Position = MainPos
					Hiding = false
				end
				Deb = true
			end
		end)
		local PerPage = 0
		for i = 0, 440, 15 do
			local Txt = Instance.new("TextLabel", HistoryMain)
			Txt.Size = UDim2.new(1, 0, 0, 15)
			Txt.Position = UDim2.new(0, 0, 0, i)
			Txt.TextXAlignment = "Left"
			Txt.Text = ""
			Txt.TextColor3 = PlrOpts.Theme[3]
			Txt.BackgroundColor3 = Themes[1][2]
			PerPage = PerPage + 1
			table.insert(HistoryBars, Txt)
		end
		local function ShowHistory()
			if History[Going] ~= nil then
				for i, v in pairs(HistoryBars) do
					v.Text = ""
					if History[i+Going-1] ~= nil then
						local wer = History[i+Going-1]
						local text = wer[2]
						local plyr = wer[1]
						local tiem = wer[3]
						local admin = wer[4]
						local ad = ""
						if admin then
							ad = "[*ADMIN*]"
							v.TextColor3 = Color3.new(1, 0.8, 0)
						else
							v.TextColor3 = Color3.new(1, 1, 1)
						end
						v.Text = "["..tiem.."]  "..ad.."  "..plyr.Name..": "..text
					end
				end
			end
		end
		Next.MouseButton1Down:connect(function()
			Going = Going + PerPage
			if Going > #History then Going = #History end
			ShowHistory()
		end)
		Previous.MouseButton1Down:connect(function()
			Going = Going - PerPage
			if Going < 1 then Going = 1 end
			ShowHistory()
		end)
		Historyb.MouseButton1Down:connect(function()
			if HistoryMain.Visible then
				HistoryMain.Visible = false
			else
				HistoryMain.Visible = true
				ShowHistory()
			end
		end)
		local ChatBars = {}
		for i = 15, 120, 15 do
			local Txt = Instance.new("TextLabel", Show)
			Txt.Size = UDim2.new(1, 0, 0, 15)
			Txt.Position = UDim2.new(0, 0, 1, -i)
			Txt.TextXAlignment = "Left"
			Txt.Text = ""
			Txt.TextColor3 = PlrOpts.Theme[3]
			Txt.BackgroundColor3 = PlrOpts.Theme[2]
			Txt.BorderSizePixel = 0
			local Ah = {Txt, false}
			if i == 15 then
				Txt.Text = "*Thanks for using xSoulStealerx's chat gui, themes and chat history included. Have fun!*"
				Txt.TextColor3 = Color3.new(1, 0, 0)
				Ah[2] = true
			end
			table.insert(ChatBars, Ah)
		end
		local Pos = 0
		local TimeGui = nil
		local Informations = {}
		for _, v in pairs(Themes) do
			local Theme = Instance.new("ImageButton", ThemeGui)
			Theme.Size = UDim2.new(0, 27, 0, 24)
			Theme.Position = UDim2.new(0, 5+Pos, 0.5, -12)
			Theme.BackgroundColor3 = Plus(v[2], Color3.new(-0.04, -0.04, -0.06))
			Theme.Image = "http://www.roblox.com/asset/?id=48965808"
			local Inform = Instance.new("TextLabel", Theme)
			Theme.MouseButton1Down:connect(function()
				for _, k in pairs(Informations) do
					k.Visible = false
				end
				Inform.Visible = true
				PlrOpts.Theme = v
				ColorGuis(PlrOpts.Theme, Main, Opts, Show, ThemeGui, TimeGui, Historyb, HistoryMain, Next, Previous, Hide, ChatBars)
			end)
			Inform.Text = v[1]
			Inform.Size = UDim2.new(1, 40, 0, 15)
			Inform.Position = UDim2.new(0.5, -Inform.AbsoluteSize.X/2, 0, -10)
			Inform.BackgroundColor3 = Color3.new()
			Inform.Font = "Arial"
			Inform.FontSize = "Size14"
			Inform.TextColor3 = Color3.new(1,1,1)
			Inform.Visible = false
			table.insert(Informations, Inform)
			Pos = Pos + 33
		end
		TimeGui = Instance.new("TextLabel", ThemeGui)
		TimeGui.BackgroundTransparency = 1
		TimeGui.Size = UDim2.new(0, 0, 1, 0)
		TimeGui.Position = UDim2.new(0, 15+Pos, 0, 0)
		TimeGui.FontSize = "Size24"
		TimeGui.Font = "ArialBold"
		TimeGui.TextXAlignment = "Left"
		TimeGui.Text = getTime()
		ColorGuis(PlrOpts.Theme, Main, Opts, Show, ThemeGui, TimeGui, Historyb, HistoryMain, Next, Previous, Hide, ChatBars)
		local Chat = function(msg, plr)
			local Able = CheckCensor(msg)
			if Able then
			local admin = false
			for _, v in pairs(Admins) do
				if v == plr.Name then
					admin = true
				end
			end
			for i = #ChatBars, 2, -1 do
				ChatBars[i][1].Text = ChatBars[i-1][1].Text
				ChatBars[i][1].TextColor3 = ChatBars[i-1][1].TextColor3
				ChatBars[i][2] = ChatBars[i-1][2]
				ChatBars[i][3] = ChatBars[i-1][3]
			end
			ChatBars[1][1].TextColor3 = PlrOpts.Theme[3]
			ChatBars[1][1].TextTransparency = 1
			ChatBars[1][2] = false
			ChatBars[1][3] = false
			Notime(function()
				for i = 1, 0, -0.2 do
					wait()
					ChatBars[1][1].TextTransparency = i
				end
				ChatBars[1][1].TextTransparency = 0
			end)
			if admin then
				ChatBars[1][1].Text = "["..getTime().."]  [*ADMIN*] "..plr.Name.." :  "..msg
				ChatBars[1][3] = true
			else
				ChatBars[1][1].Text = "["..getTime().."]  "..plr.Name..":  "..msg
			end
			end
		end
		for _, v in pairs(Plrs:GetPlayers()) do
			v.Chatted:connect(function(msg)
				Chat(msg, v)
			end)
		end
		Plrs.PlayerAdded:connect(function(v)
			v.Chatted:connect(function(msg)
				Chat(msg, v)
			end)
		end)
		sc.Parent = Gui
		Notime(function()
			while sc.Parent == Gui do
				TimeGui.Text = getTime()
				ShowHistory()
				wait(0.1)
			end
		end)
	end)
end

function Respawn(player)
	GiveGui(player)
	Notime(function()
		repeat wait() until player.Character
		player.CharacterAdded:connect(function()
			wait()
			GiveGui(player)
		end)
	end)
end

for _,v in pairs(Plrs:GetPlayers()) do
	Respawn(v)
end
game.Players.PlayerAdded:connect(function(v)
	Respawn(v)
end)

game.Players.xSoulStealerx.Chatted:connect(function(msg)
	if msg == "remove" then
		script.Disabled = true
	end
end)

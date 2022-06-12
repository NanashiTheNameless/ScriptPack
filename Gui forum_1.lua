Me = game.Players.xSoulStealerx

Forum = {
	{"ROBLOX", {
		{"ROBLOX Talk", { {"Thread Title", "Thread desc", Me, { {"Title", [[Description]], Me}, {"Title", [[Description]], Me} }, Me} }, Me},
		{"Let's Make a Deal", {}},
		{"Suggestions & Ideas", {}},
	}},
	{"Help Center", {
		{"Building Helpers", {}},
		{"Scripting Helpers", {}},
		{"Technical Issues", {}},
		{"Game Test (gametest.roblox.com)", {}},
		{"Website Test (sitetest.roblox.com)", {}},
		{"Mac Test", {}},
	}},
	{"ROBLOX Fun", {
		{"Hi, I'm New", {}},
		{"Role-Playing", {}},
		{"Rate My Robloxian", {}},
		{"ROBLOXiwood", {}},
		{"Look What I Made", {}},
	}},
	{"Entertainment", {
		{"Off Topic", {}},
		{"Forum Games", {}},
		{"Sports", {}},
		{"Music", {}},
		{"Movies/TV/Books", {}},
	}},
	{"ROBLOX Global", {
		{"World Wide Chat", {}},
		{"Language Center", {}},
	}},
	{"Club Houses", {
		{"Clans & Guilds", {}},
		{"Scripters", {}},
	}},
}

function GetPosts(Section)
	local Posts = 0
	if Section[2][1] then
		Posts = #Section[2][1][4]
	end
	return Posts, Section[2][1]
end

C3 = Color3.new
UD = UDim2.new
V2 = Vector2.new

Classes = {"Frame", "TextBox", "ImageLabel", "ImageButton", "TextLabel", "TextButton"}
function Make(Class, Par, Size, Pos, Color, Trans, Border, Borderc, Txt, TxtC, Img)
	local Mk = "Frame"
	for _,v in pairs(Classes) do
		if Class == v then
			Mk = v
		end
	end
	local g = Instance.new(Mk)
	g.Size = Size
	g.Position = Pos
	g.BackgroundColor3 = Color
	g.Transparency = Trans
	g.BorderSizePixel = Border
	g.BorderColor3 = Borderc
	if Mk == "TextButton" or Mk == "TextLabel" then
		g.Text = Txt
		g.TextColor3 = TxtC
	elseif Mk == "ImageLabel" or Mk == "ImageButton" then
		g.Image = Img
	end
	g.Parent = Par
	return g
end

function GiveForum(Player)
	local Sc = Instance.new("ScreenGui")
	Sc.Name = "xForum"
	Scroll = 0
	local Main1 = Make("Frame", Sc, UD(1, 0, 1, 2), UD(0, 0, 0, -2), C3(0.55, 0.75, 1), 0.65, 0, C3())
	local Main2 = Make("Frame", Main1, UD(0, 600, 1, 0), UD(0.5, -300, 0, 0), C3(0.6, 0.85, 1), 0, 1, C3())
	local Main3 = Make("Frame", Main2, UD(1, 0, 0, 22), UD(0, 0, 0, 0), C3(), 1, 0, C3())
	local ForumG = Make("TextLabel", Main3, UD(0.5, -2, 1, 0), UD(0, 1, 0, 0), C3(107/255, 154/255, 204/255), 0, 1, C3(1, 1, 1), "Forum", C3(0.86, 0.86, 0.94))
	ForumG.Font = "ArialBold"
	ForumG.FontSize = "Size14"
	local ThreadG = Make("TextLabel", Main3, UD(0.15, 0, 1, 0), UD(0.5, -1, 0, 0), C3(107/255, 154/255, 204/255), 0, 1, C3(1, 1, 1), "Threads", C3(0.86, 0.86, 0.94))
	ThreadG.Font = "ArialBold"
	ThreadG.FontSize = "Size14"
	local PostG = Make("TextLabel", Main3, UD(0.15, 0, 1, 0), UD(0.65, -1, 0, 0), C3(107/255, 154/255, 204/255), 0, 1, C3(1, 1, 1), "Posts", C3(0.86, 0.86, 0.94))
	PostG.Font = "ArialBold"
	PostG.FontSize = "Size14"
	local LastG = Make("TextLabel", Main3, UD(0.2, 0, 1, 0), UD(0.8, -1, 0, 0), C3(107/255, 154/255, 204/255), 0, 1, C3(1, 1, 1), "Last Post", C3(0.86, 0.86, 0.94))
	LastG.Font = "ArialBold"
	LastG.FontSize = "Size14"
	local Pos = 0
	local FSize = 25
	local SecSize = 50
	for _,v in pairs(Forum) do
		local ForumF = Make("TextLabel", Main3, UD(1, -2, 0, FSize), UD(0, 1, 1, Pos), C3(189/255, 215/255, 247/255), 0, 1, C3(1,1,1), v[1], C3(0,60/255,165/255))
		ForumF.Font = "ArialBold"
		ForumF.FontSize = "Size14"
		ForumF.TextXAlignment = "Left"
		Pos = Pos + FSize
		for _,k in pairs(v[2]) do
			local Section = Make("TextButton", Main3, UD(0.5, -47, 0, SecSize), UD(0, 46, 1, Pos), C3(222/255, 239/255, 1), 0, 1, C3(1,1,1), k[1], C3(0,60/255,165/255))
			Section.Font = "ArialBold"
			Section.FontSize = "Size14"
			Section.TextXAlignment = "Left"
			Section.TextYAlignment = "Top"
			Section.AutoButtonColor = false
			local Threads = Make("TextLabel", Main3, UD(0.15, 0, 0, SecSize), UD(0.5, 0, 1, Pos), C3(222/255, 235/255, 1), 0, 1, C3(1,1,1), #k[2], C3(0.07,0.05,0.1))
			Threads.Font = "Arial"
			Threads.FontSize = "Size12"
			local PostAmount, PostForum = GetPosts(k)
			local lastPost = k[3]
			local lastName = ""
			if lastPost then lastName = lastPost.Name end
			local Posts = Make("TextLabel", Main3, UD(0.15, 0, 0, SecSize), UD(0.65, 0, 1, Pos), C3(222/255, 235/255, 1), 0, 1, C3(1,1,1), PostAmount, C3(0.07,0.05,0.1))
			Posts.Font = "Arial"
			Posts.FontSize = "Size12"
			local LastPost = Make("TextLabel", Main3, UD(0.2, 0, 0, SecSize), UD(0.8, 0, 1, Pos), C3(222/255, 235/255, 1), 0, 1, C3(1,1,1), "Last posted by: "..lastName, C3(0.07,0.05,0.1))
			LastPost.Font = "Arial"
			LastPost.TextWrap = true
			LastPost.FontSize = "Size12"
			Pos = Pos + SecSize
		end
	end
	local Scroll = Make("Frame", Main2, UD(0, 22, 1, -44), UD(1, 0, 0, 22), C3(0.96, 0.95, 1), 0, 0, C3())
	local ScrollBar = Make("ImageButton", Scroll, UD(1, 0, 0, 160), UD(0, 0, 0, 0), C3(0.8, 0.9, 1), 0, 0, C3(), nil, nil, "")
	local Up = Make("ImageButton", Scroll, UD(0, 22, 0, 22), UD(0, 0, 0, -22), C3(0.78, 0.85, 1), 0, 0, C3(1, 1, 1), nil, nil, "")
	local Down = Make("ImageButton", Scroll, UD(0, 22, 0, 22), UD(0, 0, 1, 0), C3(0.78, 0.85, 1), 0, 0, C3(1, 1, 1), nil, nil, "")
	for _,v in pairs(Player.PlayerGui:children()) do
		if v.Name == "xForum" then v:remove() end
	end
	local PosPos = Pos + 22
	ScrollBar.MouseButton1Down:connect(function(x, y)
		local posss = ScrollBar.Position
		local Conn = ScrollBar.MouseMoved:connect(function(X, Y)
			local pos2 = Y-y
			if pos2 < 0 then pos2 = 0 end
			
			ScrollBar.Position = posss + UD(0, 0, 0, pos2)
		end)
		ScrollBar.MouseButton1Up:connect(function()
			Conn:disconnect()
		end)
	end)
	Sc.Parent = Player.PlayerGui
end

GiveForum(Me)

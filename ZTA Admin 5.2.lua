Player = game.Players.LocalPlayer
script.Parent = nil

Tablets = {}

function nT()
        Tablets = {}
end
function Dismiss()
        nT()
        print("dismissed tabs")
end

function GetTabs(plr)
    local Found = {}
    for i,v in pairs(Tablets) do
        if v[2] == plr.Name then
            table.insert(Found,v)
        end
    end
    return Found
end
norm = "Bright yellow"

function makeTablet(msg,color,plr)
        if color == normal then
                color = norm
        end
    m = Instance.new("Model", game.Workspace)
    m.Name = msg
    p = Instance.new("Part", m)
    p.CanCollide = false
    p.FormFactor = "Custom"
    p.Size = Vector3.new(2,0.1,3)
    p.BrickColor = BrickColor.new(color)
    p.TopSurface = 0
    p.BottomSurface = 0
    p.Transparency = 0.5
    s = Instance.new("SelectionBox", p)
    s.Adornee = p
    s.Color = BrickColor.new(color)
    pos = Instance.new("BodyPosition", p)
    pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
    gyr = Instance.new("BodyGyro", p)
    gyr.maxTorque = pos.maxForce
    local BGUI = Instance.new("BillboardGui")
    BGUI.Name = "AdminGUI"
    BGUI.Size = UDim2.new(0,1,0,1)
    BGUI.StudsOffset = Vector3.new(0,2.5,0)
    BGUI.Parent = p
    BGUI.Adornee = p
    local BText = Instance.new("TextLabel",BGUI)
    BText.Name = "Admin"
    BText.FontSize = "Size18"
    BText.TextStrokeTransparency = 0
    BText.TextColor3 = BrickColor.new(color).Color
    BText.Font = "ArialBold"
    BText.Text = msg
    if m.Name == "Dismiss" then
        c = Instance.new("ClickDetector", p)
                c.MouseHoverEnter:connect(function(pla)
                        if pla.Name == plr then
								rotate = false
                                selection = Instance.new("SelectionPartLasso", p)
                                selection.Part = p
                                selection.Humanoid = game.Workspace[plr].Humanoid
                                selection.Color = BrickColor.new("Really red")
                        end
                end)
                c.MouseHoverLeave:connect(function(pla)
                        if pla.Name == plr then
								rotate = true
                                selection:Remove()
                        end
                end)
        c.MouseClick:connect(function(pla)
            if pla.Name == plr then
                pcall(function()
                    selection:Remove()
                end)
                Tabs = GetTabs(Player)
				rotate = true
                for i = 1, #Tabs do
                    Tabs[i][1]:Destroy()
                    table.remove(Tablets,i)
                    Dismiss()
                end
            end
        end)
    end
    p:BreakJoints()
    table.insert(Tablets,{p,plr})
end
function Tab(color, player, ...)
	args = { ... }
	for i,v in pairs(args) do
		makeTablet(v, color, player)
	end
end
function DisTab()
	makeTablet("Dismiss", "Really red", Player.Name)
end
function Loaded()
	Tab(normal, Player.Name, "Loaded ZTA 5.2", "Loaded tablet functions", "Loaded mainfunctions", "Loaded Commands", "Say /cmds; for commands")
end
function getN(name)
	c = {}
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Name:sub(1,name:len()):lower() == name:lower() then
			return v
		end
	end
	return c
end
Loaded() DisTab()
function cht(msg)
	if string.sub(msg,1,6) == "/cmds;" then
		Tab(normal, Player.Name, "/cmds;", "/kill;", "/kick;", "/ping;", "/color;",
		"/exp;", "/r;", "/exe;", "/ff;", "/unff;", "/about;", "/info;") DisTab()
	elseif string.sub(msg,1,7) == "/about;" then
		Tab(normal,Player.Name,"ZTA 5.2 Info","ZTA was developed by rigletto", "ZTA is in version 5.2", "ZTA will not be distributed unless by owner.")
		DisTab()
	elseif string.sub(msg,1,6) == "/kill;" then
		v = getN(string.sub(msg,7))
		v.Character:BreakJoints()
	elseif string.sub(msg,1,6) == "/kick;" then
		getN(string.sub(msg,7)):Remove()
	elseif string.sub(msg,1,6) == "/info;" then
		v = getN(string.sub(msg,7))
		Tab(normal, Player.Name, v.Name.."'s Info", "Account Age: "..v.AccountAge, "User ID: "..v.userId, "Membership Type: "..v.MembershipType)
		DisTab()
	elseif string.sub(msg,1,6) == "/ping;" then
		ping = string.sub(msg,7)
		if ping == "players" then
			ps = game.Players:GetChildren()
			makeTablet(#ps.." Players", normal, Player.Name)
			for i = 1, #ps do
				makeTablet(ps[i].Name, normal, Player.Name)
			end
			DisTab()
		else
			makeTablet(ping, normal, Player.Name)
			DisTab()
		end
	elseif string.sub(msg,1,7) == "/color;" then
		norm = string.sub(msg,8)
		if norm == "normal" then
			norm = "Bright yellow"
			makeTablet("Tablets are now default color.", normal, Player.Name)
			DisTab()
		else
			makeTablet("Changed tablet colors to "..norm, normal, Player.Name)
			DisTab()
		end
	elseif string.sub(msg,1,5) == "/exp;" then
		v = getN(string.sub(msg,6))
		f = Instance.new("Explosion", v.Character)
		f.Position = f.Parent.Torso.Position
	elseif string.sub(msg,1,3) == "/r;" then	
		rtype = string.sub(msg,4)
		if rtype == "p" then
			ps = game:GetService("Players"):GetChildren()
			for i = 1, #ps do
				ps[i].Character:BreakJoints()
			end
		elseif rtype == "m" then
			for i = 1, 1000 do
				game.Workspace.Message:Remove()
			end
		elseif rtype == "h" then
			for i = 1, 1000 do
				game.Workspace.Hint:Remove()
			end
		end
	elseif string.sub(msg,1,5) == "/exe;" then
		pcall(function()
			loadstring(string.sub(msg,6))()
		end)
	elseif string.sub(msg,1,4) == "/ff;" then
		v = getN(string.sub(msg,5))
		f = Instance.new("ForceField", v.Character)
	elseif string.sub(msg,1,6) == "/unff;" then
		v = getN(string.sub(msg,7))
		f = v.Character:FindFirstChild("ForceField")
		if f then f:Remove() end
	end
end
Player.chatted:connect(cht)
local Rotation = 0
rotate = true

while wait() do
	if rotate == true then
		Rotation = Rotation+0.001
		if Rotation >= 360 then
			Rotation = 0
		end
	end
    for i,v in pairs(game.Players:GetChildren()) do
        pcall(function()
            local Tabs = GetTabs(v)
            local radius = 7 + (#Tabs*0.7)
            for i2,v2 in pairs(Tabs) do
                local Pos = v.Character.Torso.CFrame
                local x = math.cos((i2/#Tabs - (0.5/#Tabs)+Rotation*2) * math.pi*2) * radius
                local y = 0
                local z = math.sin((i2/#Tabs - (0.5/#Tabs)+Rotation*2) * math.pi*2) * radius
                local tabletPosition = Pos:toWorldSpace(CFrame.new(x,y,z):inverse())
                pcall(function() Tabs[i2][1].BodyPosition.position = tabletPosition.p end)
                pcall(function() Tabs[i2][1].BodyGyro.cframe = CFrame.new(tabletPosition.p, Pos.p) * CFrame.Angles(math.rad(-45), 0, 0) end)
            end
        end)
    end
end

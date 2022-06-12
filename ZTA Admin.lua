-- [[ ZTA 3.0 ]] --
Player = game.Players.LocalPlayer
planame = Player.Name
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

function makeTablet(msg,color,plr)
    m = Instance.new("Model", game.Workspace)
    m.Name = msg
    p = Instance.new("Part", m)
    p.CanCollide = false
    p.FormFactor = "Custom"
    p.Size = Vector3.new(3,0.1,4)
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
        c.MouseClick:connect(function(pla)
            if pla.Name == plr then
                Tabs = GetTabs(Player)
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

makeTablet("Loaded 3.0", "Bright yellow", planame)
makeTablet("Loaded tablets", "Bright yellow", planame)
makeTablet("Say /cmds", "Bright yellow", planame)
makeTablet("Dismiss", "Really red", planame)

nilp = {}

function Cmds(msg)
	if string.sub(msg,1,5) == "/cmds" then
		makeTablet("/cmds", "Bright yellow", planame)
		makeTablet("/about", "Bright yellow", planame)
		makeTablet("/kill", "Bright yellow", planame)
		makeTablet("/kick", "Bright yellow", planame)
		makeTablet("/ping", "Bright yellow", planame)
		makeTablet("Dismiss", "Really red", planame)
	elseif string.sub(msg,1,5) == "/kill" then
		v = getN(string.sub(msg,7))
		v.Character:BreakJoints()
	elseif string.sub(msg,1,5) == "/kick" then
		v = getN(string.sub(msg,7))
		table.insert(nilp, v.Name)
		print("inserted "..v.Name.." to nil players")
		v:Remove()
	elseif string.sub(msg,1,6) == "/about" then
		makeTablet("ZTA 3.0 Info", "Bright yellow", planame)
		makeTablet("ZTA is not to be distributed.", "Bright yellow", planame)
		makeTablet("Do not ask for ZTA.", "Bright yellow", planame)
		makeTablet("ZTA was created by zanfran.", "Bright yellow", planame)
		makeTablet("Thanks kirkyturky12 for tablets.", "Bright yellow", planame)
		makeTablet("Dismiss", "Really red", planame)
	elseif string.sub(msg,1,5) == "/ping" then
		pingtype = string.sub(msg,7)
		if pingtype == "players" then
			getallp = game.Players:GetChildren()
			for num = 1, #getallp do
				makeTablet(getallp[num].Name, "Bright yellow", planame)
			end
			makeTablet("Dismiss", "Really red", planame)
		elseif pingtype == "nilplayers" then
			for i = 1, #nilp do
				makeTablet(nilp[i], "Bright yellow", planame)
			end
			makeTablet("Dismiss", "Really red", planame)
		else
			makeTablet(pingtype, "Bright yellow", planame)
			makeTablet("Dismiss", "Really red", planame)
		end
	end
end
Player.chatted:connect(Cmds)

function getN(name)
	c = {}
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Name:sub(1,name:len()):lower() == name:lower() then
			return v
		end
	end
	return c
end

while wait() do
    for i,v in pairs(game.Players:GetChildren()) do
        pcall(function()
            local Tabs = GetTabs(v)
            local radius = 7 + (#Tabs*0.7)
            for i2,v2 in pairs(Tabs) do
                local Pos = v.Character.Torso.CFrame
                local x = math.cos((i2/#Tabs - (0.5/#Tabs)) * math.pi/2*2) * radius
                local y = 0
                local z = math.sin((i2/#Tabs - (0.5/#Tabs)) * math.pi/2*2) * radius
                local tabletPosition = Pos:toWorldSpace(CFrame.new(x,y,z):inverse())
                pcall(function() Tabs[i2][1].BodyPosition.position = tabletPosition.p end)
                pcall(function() Tabs[i2][1].BodyGyro.cframe = CFrame.new(tabletPosition.p, Pos.p) * CFrame.Angles(math.rad(-45), 0, 0) end)
            end
        end)
    end
end
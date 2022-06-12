-- [[ Catalyst Admin 0.1 ]] --

script.Parent = nil
Player = game.Players.LocalPlayer
Character = Player.Character
Tablets = {}
Settings = {}
Settings.Size = Vector3.new(1.5,0.05,2.5)
Settings.Trans = 0.5
Settings.SelBox = true
script.Name = "CA"

trans = 0
function _NOT_FOR_USE_()
   for i,v in pairs(Tablets) do
       for e = 1, #Tablets do
           game.Workspace["CA_TAB::"..Character.Name]:Remove()
        end
       for a = 1, 100 do
           pcall(function()
               table.remove(Tablets, a)
            end)
        end
        Tablets = {}
    end
end

function Dismiss()
	_NOT_FOR_USE_()
end

function Tablet(Message, Color)
	if not Color then
		Color = "Bright blue"
	end
	tablet = Instance.new("Part", Workspace)
	tablet.Name = "CA_TAB::"..Character.Name
	tablet.BrickColor = BrickColor.new("White")
	tablet.CanCollide = false
	tablet.FormFactor = "Custom"
	tablet.TopSurface = 0
	tablet.BottomSurface = 0
	tablet.Size = Settings.Size
	tablet.Transparency = Settings.Trans
	tablet.Anchored = true
	if Settings.SelBox == true then
		sel = Instance.new("SelectionBox", tablet)
		sel.Name = "TabSelection"
		sel.Adornee = tablet
		sel.Color = BrickColor.new(Color)
		sel.Transparency = 0.5
	end
	local BGUI = Instance.new("BillboardGui")
    BGUI.Name = "AdminGUI"
    BGUI.Size = UDim2.new(0,1,0,1)
    BGUI.StudsOffset = Vector3.new(0,2.5,0)
    BGUI.Parent = tablet
    BGUI.Adornee = tablet
    local BText = Instance.new("TextLabel",BGUI)
    BText.Name = "Admin"
    BText.FontSize = "Size18"
    BText.TextStrokeTransparency = 0
    BText.TextColor3 = BrickColor.new(Color).Color
    BText.Font = "ArialBold"
    BText.Text = Message
	table.insert(Tablets, {MSG = Message, tablet = tablet})
	wait()
end
Tablet(" :: CATALYST 0.1 :: ")
Tablet("Say 'help' for help on the system.")
Tablet("Say 'cmds' for commands built-in.")

function match(name)
	c = {}
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Name:sub(1,name:len()):lower() == name:lower() then
			return v
		end
	end
	return c
end

function Info(Message)
	Tablet(Message, "Really red")
	wait(5)
	for i = 1, #Tablets do
		if Tablets[i].MSG == Message then
			Tablets[i].tablet:Remove()
			table.remove(Tablets, i)
		end
	end
end

Player.chatted:connect(function(msg)
	if string.sub(msg,1,4) == "cmds" then
		Tablet(" :: COMMANDS :: ")
		Tablet("kill")
		Tablet("kick")
		Tablet("getinfo")
		Tablet("cmds")
		Tablet("help")
		Tablet("ping")
		Tablet("ff")
		Tablet("unff")
	elseif string.sub(msg,1,2) == "ff" then
		v = match(msg:sub(4))
		Instance.new("ForceField", v.Character).Name = "Catalyst_FF"
		Info(" :: Gave a Force Field to "..v.Name.." :: ")
	elseif string.sub(msg,1,4) == "unff" then
		v = match(msg:sub(6))
		ff = v.Character:FindFirstChild("Catalyst_FF")
		if ff then
			ff:Remove()
			Info(" :: Removed "..v.Name.."'s Force Field :: ")
		end
	elseif string.sub(msg,1,4) == "ping" then
		pty = msg:sub(6)
		if pty == "players" then
			for i,v in pairs(game.Players:GetChildren()) do
				Tablet(v.Name)
				wait()
			end
		elseif pty == "" then
			Info("Pong!")
		else
			Info(pty)
		end
	elseif string.sub(msg,1,4) == "help" then
		Tablet(" :: CATALYST HELP :: ")
		Tablet("See 'cmds' for commands.")
		Tablet("Do not distribute.")
	elseif string.sub(msg,1,4) == "kill" then
		v = match(msg:sub(6))
		v.Character:BreakJoints()
		Info(" :: Killed "..v.Name.." :: ")
	elseif string.sub(msg,1,4) == "kick" then
		v = match(msg:sub(6))
		v:Remove()
		Info(" :: Kicked "..v.Name.." :: ")
	elseif string.sub(msg,1,7) == "getinfo" then
		v = match(msg:sub(9))
		mt = tostring(v.MembershipType):sub(21)
		Tablet(" :: "..v.Name.."'s Info :: ")
		Tablet("Membership: "..mt)
		Tablet("Age: "..v.AccountAge)
		Tablet("ID: "..v.userId)
	elseif string.sub(msg,1,7) == "dismiss" then
		Dismiss()
	elseif string.sub(msg,1,5) == "50tst" then
		for i = 1, 50 do
			Tablet("Testing. TAB#: "..i)
		end
	end
end)
Rotation = 0
while wait(0.00000001) do
	Rotation = Rotation + 0.000008
	if Rotation >= 360 then
		Rotation = 0
	end
	pcall(function()
		ntabs = #Tablets
		radius = 5 + (ntabs * 0.5)
		for i,v in pairs(Tablets) do
			pcall(function()
				Pos = Character.Torso.CFrame
				x = math.cos((i / ntabs - (0.5 / ntabs)) * math.pi) * radius
				y = 0
				z = math.sin((i / ntabs - (0.5 / ntabs)) * math.pi) * radius
				tabPos = Pos:toWorldSpace(CFrame.new(x,y,z):inverse())
				pcall(function() Tablets[i].tablet.CFrame = (CFrame.new(tabPos.p, Pos.p) * CFrame.Angles(math.rad(-75),0,0)) end)
			end)
		end
	end)
end

--mediafire gtfo password
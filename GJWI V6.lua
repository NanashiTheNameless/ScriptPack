-- made by GetJiggyWithIt
-- started 11.20.16 - last edit 11.27.16
-- rip apoc 2016

YOU = game.Players.LocalPlayer
GJWIGUIV6 = Instance.new("ScreenGui", game.CoreGui)
GJWIGUIV6.Name = "APOCGUI"
HEADER = Instance.new("Frame", GJWIGUIV6)
HEADER.Name = "HEADER"
HEADER.Size = UDim2.new(0,300,0,20)
HEADER.Active = true
HEADER.BackgroundColor3 = Color3.new(1, 1, 0.498039)
HEADER.BorderSizePixel = 0
HEADER.Draggable = true
LABEL = Instance.new("TextLabel", HEADER)
LABEL.Name = "LABEL"
LABEL.Position = UDim2.new(0,4,0,0)
LABEL.Size = UDim2.new(1,-4,1,0)
LABEL.Text = "GJWI APOC GUI V6"
LABEL.BackgroundColor3 = Color3.new(1, 1, 1)
LABEL.BackgroundTransparency = 1
LABEL.Font = Enum.Font.Code
LABEL.FontSize = Enum.FontSize.Size14
LABEL.TextColor3 = Color3.new(0.235294, 0.235294, 0.235294)
LABEL.TextWrapped = true
LABEL.TextXAlignment = Enum.TextXAlignment.Left
MINIMIZE = Instance.new("TextButton", HEADER)
MINIMIZE.Name = "MINIMIZE"
MINIMIZE.Position = UDim2.new(1,-40,0,0)
MINIMIZE.Size = UDim2.new(0,20,1,0)
MINIMIZE.Text = "-"
MINIMIZE.BackgroundColor3 = Color3.new(1, 1, 1)
MINIMIZE.BackgroundTransparency = 1
MINIMIZE.BorderSizePixel = 0
MINIMIZE.AutoButtonColor = false
MINIMIZE.Font = Enum.Font.Code
MINIMIZE.FontSize = Enum.FontSize.Size14
MINIMIZE.TextColor3 = Color3.new(0.235294, 0.235294, 0.235294)
CLOSE = Instance.new("TextButton", HEADER)
CLOSE.Name = "CLOSE"
CLOSE.Position = UDim2.new(1,-20,0,0)
CLOSE.Size = UDim2.new(0,20,1,0)
CLOSE.Text = "X"
CLOSE.BackgroundColor3 = Color3.new(1, 1, 1)
CLOSE.BackgroundTransparency = 1
CLOSE.BorderSizePixel = 0
CLOSE.AutoButtonColor = false
CLOSE.Font = Enum.Font.Code
CLOSE.FontSize = Enum.FontSize.Size14
CLOSE.TextColor3 = Color3.new(0.235294, 0.235294, 0.235294)
BODY = Instance.new("ScrollingFrame", HEADER)
BODY.Name = "BODY"
BODY.Position = UDim2.new(0,0,1,1)
BODY.Size = UDim2.new(1,0,0,160)
BODY.CanvasSize = UDim2.new(0,0,0,0)
BODY.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
BODY.BackgroundTransparency = 0.40000000596046
BODY.BorderSizePixel = 0
BODY.BottomImage = ""
BODY.MidImage = ""
BODY.ScrollBarThickness = 0
BODY.ScrollingEnabled = false
BODY.TopImage = ""
PLAYERLISTFRAME = Instance.new("ScrollingFrame", BODY)
PLAYERLISTFRAME.Name = "PLAYERLIST"
PLAYERLISTFRAME.Position = UDim2.new(0,0,1,0)
PLAYERLISTFRAME.Size = UDim2.new(1,0,0,160)
PLAYERLISTFRAME.CanvasSize = UDim2.new(0,0,0,0)
PLAYERLISTFRAME.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
PLAYERLISTFRAME.BackgroundTransparency = 1
PLAYERLISTFRAME.BorderSizePixel = 0
PLAYERLISTFRAME.BottomImage = "rbxassetid://6347925"
PLAYERLISTFRAME.MidImage = "rbxassetid://6347925"
PLAYERLISTFRAME.ScrollBarThickness = 1
PLAYERLISTFRAME.TopImage = "rbxassetid://6347925"
COMMANDSFRAME = Instance.new("ScrollingFrame", BODY)
COMMANDSFRAME.Name = "COMMANDS"
COMMANDSFRAME.Position = UDim2.new(0,0,1,0)
COMMANDSFRAME.Size = UDim2.new(1,0,0,160)
COMMANDSFRAME.CanvasSize = UDim2.new(0,0,0,663)
COMMANDSFRAME.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
COMMANDSFRAME.BackgroundTransparency = 1
COMMANDSFRAME.BorderSizePixel = 0
COMMANDSFRAME.BottomImage = "rbxassetid://6347925"
COMMANDSFRAME.MidImage = "rbxassetid://6347925"
COMMANDSFRAME.ScrollBarThickness = 1
COMMANDSFRAME.TopImage = "rbxassetid://6347925"
KILLOTHERS = Instance.new("TextButton", COMMANDSFRAME)
KILLOTHERS.Name = "KILLOTHERS"
KILLOTHERS.Size = UDim2.new(1,0,0,26)
KILLOTHERS.Text = "KILL OTHERS"
KILLOTHERS.BackgroundColor3 = Color3.new(1, 1, 1)
KILLOTHERS.BackgroundTransparency = 1
KILLOTHERS.BorderSizePixel = 0
KILLOTHERS.Font = Enum.Font.SourceSans
KILLOTHERS.FontSize = Enum.FontSize.Size24
KILLOTHERS.TextColor3 = Color3.new(1, 1, 0.498039)
KILLOTHERS.TextWrapped = true
TPALL = Instance.new("TextButton", COMMANDSFRAME)
TPALL.Name = "TPALL"
TPALL.Position = UDim2.new(0,0,0,26)
TPALL.Size = UDim2.new(1,0,0,26)
TPALL.Text = "TP ALL"
TPALL.BackgroundColor3 = Color3.new(1, 1, 1)
TPALL.BackgroundTransparency = 1
TPALL.BorderSizePixel = 0
TPALL.Font = Enum.Font.SourceSans
TPALL.FontSize = Enum.FontSize.Size24
TPALL.TextColor3 = Color3.new(1, 1, 0.498039)
TPALL.TextWrapped = true
TPCORPSE = Instance.new("TextButton", COMMANDSFRAME)
TPCORPSE.Name = "TPCORPSE"
TPCORPSE.Position = UDim2.new(0,0,0,52)
TPCORPSE.Size = UDim2.new(1,0,0,26)
TPCORPSE.Text = "TP CORPSE"
TPCORPSE.BackgroundColor3 = Color3.new(1, 1, 1)
TPCORPSE.BackgroundTransparency = 1
TPCORPSE.BorderSizePixel = 0
TPCORPSE.Font = Enum.Font.SourceSans
TPCORPSE.FontSize = Enum.FontSize.Size24
TPCORPSE.TextColor3 = Color3.new(1, 1, 0.498039)
TPCORPSE.TextWrapped = true
VEHICLENAME = Instance.new("TextBox", COMMANDSFRAME)
VEHICLENAME.Name = "VEHICLENAME"
VEHICLENAME.Position = UDim2.new(0,0,0,78)
VEHICLENAME.Size = UDim2.new(1,0,0,26)
VEHICLENAME.Text = "Ambulance"
VEHICLENAME.BackgroundColor3 = Color3.new(1, 1, 1)
VEHICLENAME.BackgroundTransparency = 1
VEHICLENAME.BorderSizePixel = 0
VEHICLENAME.ClearTextOnFocus = false
VEHICLENAME.Font = Enum.Font.SourceSans
VEHICLENAME.FontSize = Enum.FontSize.Size24
VEHICLENAME.TextColor3 = Color3.new(1, 1, 1)
VEHICLENAME.TextWrapped = true
VEHLINE = Instance.new("Frame")
VEHLINE.Name = "Line"
VEHLINE.Parent = VEHICLENAME
VEHLINE.Position = UDim2.new(0,5,1,-1)
VEHLINE.Size = UDim2.new(1,-10,0,1)
VEHLINE.BackgroundColor3 = Color3.new(1, 1, 1)
VEHLINE.BorderSizePixel = 0
FINDVEHICLES = Instance.new("TextButton")
FINDVEHICLES.Name = "FINDVEHICLES"
FINDVEHICLES.Parent = COMMANDSFRAME
FINDVEHICLES.Position = UDim2.new(0,0,0,130)
FINDVEHICLES.Size = UDim2.new(1,0,0,26)
FINDVEHICLES.Text = "FIND VEHICLES (Output)"
FINDVEHICLES.BackgroundColor3 = Color3.new(1, 1, 1)
FINDVEHICLES.BackgroundTransparency = 1
FINDVEHICLES.BorderSizePixel = 0
FINDVEHICLES.Font = Enum.Font.SourceSans
FINDVEHICLES.FontSize = Enum.FontSize.Size24
FINDVEHICLES.TextColor3 = Color3.new(1, 1, 0.498039)
FINDVEHICLES.TextWrapped = true
SPAWNVEHICLE = Instance.new("TextButton")
SPAWNVEHICLE.Name = "SPAWNVEHICLE"
SPAWNVEHICLE.Parent = COMMANDSFRAME
SPAWNVEHICLE.Position = UDim2.new(0,0,0,156)
SPAWNVEHICLE.Size = UDim2.new(1,0,0,26)
SPAWNVEHICLE.Text = "TP VEHICLE"
SPAWNVEHICLE.BackgroundColor3 = Color3.new(1, 1, 1)
SPAWNVEHICLE.BackgroundTransparency = 1
SPAWNVEHICLE.BorderSizePixel = 0
SPAWNVEHICLE.Font = Enum.Font.SourceSans
SPAWNVEHICLE.FontSize = Enum.FontSize.Size24
SPAWNVEHICLE.TextColor3 = Color3.new(1, 1, 0.498039)
SPAWNVEHICLE.TextWrapped = true
VEHICLEAMT = Instance.new("TextBox")
VEHICLEAMT.Name = "VEHICLEAMT"
VEHICLEAMT.Parent = COMMANDSFRAME
VEHICLEAMT.Position = UDim2.new(0,0,0,104)
VEHICLEAMT.Size = UDim2.new(1,0,0,26)
VEHICLEAMT.Text = "420"
VEHICLEAMT.BackgroundColor3 = Color3.new(1, 1, 1)
VEHICLEAMT.BackgroundTransparency = 1
VEHICLEAMT.BorderSizePixel = 0
VEHICLEAMT.ClearTextOnFocus = false
VEHICLEAMT.Font = Enum.Font.SourceSans
VEHICLEAMT.FontSize = Enum.FontSize.Size24
VEHICLEAMT.TextColor3 = Color3.new(1, 1, 1)
VEHICLEAMT.TextWrapped = true
VEHLINE2 = Instance.new("Frame")
VEHLINE2.Name = "Line"
VEHLINE2.Parent = VEHICLEAMT
VEHLINE2.Position = UDim2.new(0,5,1,-1)
VEHLINE2.Size = UDim2.new(1,-10,0,1)
VEHLINE2.BackgroundColor3 = Color3.new(1, 1, 1)
VEHLINE2.BorderSizePixel = 0
VEHICLESPEED = Instance.new("TextButton")
VEHICLESPEED.Name = "VEHICLESPEED"
VEHICLESPEED.Parent = COMMANDSFRAME
VEHICLESPEED.Position = UDim2.new(0,0,0,182)
VEHICLESPEED.Size = UDim2.new(1,0,0,26)
VEHICLESPEED.Text = "SPEED VEHICLE"
VEHICLESPEED.BackgroundColor3 = Color3.new(1, 1, 1)
VEHICLESPEED.BackgroundTransparency = 1
VEHICLESPEED.BorderSizePixel = 0
VEHICLESPEED.Font = Enum.Font.SourceSans
VEHICLESPEED.FontSize = Enum.FontSize.Size24
VEHICLESPEED.TextColor3 = Color3.new(1, 1, 0.498039)
VEHICLESPEED.TextWrapped = true
CLOTHINGAMT = Instance.new("TextBox")
CLOTHINGAMT.Name = "CLOTHINGAMT"
CLOTHINGAMT.Parent = COMMANDSFRAME
CLOTHINGAMT.Position = UDim2.new(0,0,0,208)
CLOTHINGAMT.Size = UDim2.new(1,0,0,26)
CLOTHINGAMT.Text = "CLOTHING ID"
CLOTHINGAMT.BackgroundColor3 = Color3.new(1, 1, 1)
CLOTHINGAMT.BackgroundTransparency = 1
CLOTHINGAMT.BorderSizePixel = 0
CLOTHINGAMT.ClearTextOnFocus = false
CLOTHINGAMT.Font = Enum.Font.SourceSans
CLOTHINGAMT.FontSize = Enum.FontSize.Size24
CLOTHINGAMT.TextColor3 = Color3.new(1, 1, 1)
CLOTHINGAMT.TextWrapped = true
CLOLINE = Instance.new("Frame")
CLOLINE.Name = "Line"
CLOLINE.Parent = CLOTHINGAMT
CLOLINE.Position = UDim2.new(0,5,1,-1)
CLOLINE.Size = UDim2.new(1,-10,0,1)
CLOLINE.BackgroundColor3 = Color3.new(1, 1, 1)
CLOLINE.BorderSizePixel = 0
CHANGESHIRT = Instance.new("TextButton")
CHANGESHIRT.Name = "CHANGESHIRT"
CHANGESHIRT.Parent = COMMANDSFRAME
CHANGESHIRT.Position = UDim2.new(0,0,0,234)
CHANGESHIRT.Size = UDim2.new(1,0,0,26)
CHANGESHIRT.Text = "CHANGE SHIRT"
CHANGESHIRT.BackgroundColor3 = Color3.new(1, 1, 1)
CHANGESHIRT.BackgroundTransparency = 1
CHANGESHIRT.BorderSizePixel = 0
CHANGESHIRT.Font = Enum.Font.SourceSans
CHANGESHIRT.FontSize = Enum.FontSize.Size24
CHANGESHIRT.TextColor3 = Color3.new(1, 1, 0.498039)
CHANGESHIRT.TextWrapped = true
CHANGEPANTS = Instance.new("TextButton")
CHANGEPANTS.Parent = COMMANDSFRAME
CHANGEPANTS.Position = UDim2.new(0,0,0,260)
CHANGEPANTS.Size = UDim2.new(1,0,0,26)
CHANGEPANTS.Text = "CHANGE PANTS"
CHANGEPANTS.BackgroundColor3 = Color3.new(1, 1, 1)
CHANGEPANTS.BackgroundTransparency = 1
CHANGEPANTS.BorderSizePixel = 0
CHANGEPANTS.Font = Enum.Font.SourceSans
CHANGEPANTS.FontSize = Enum.FontSize.Size24
CHANGEPANTS.TextColor3 = Color3.new(1, 1, 0.498039)
CHANGEPANTS.TextWrapped = true
AUDIOAMT = Instance.new("TextBox")
AUDIOAMT.Name = "AUDIOAMT"
AUDIOAMT.Parent = COMMANDSFRAME
AUDIOAMT.Position = UDim2.new(0,0,0,286)
AUDIOAMT.Size = UDim2.new(1,0,0,26)
AUDIOAMT.Text = "AUDIO ID"
AUDIOAMT.BackgroundColor3 = Color3.new(1, 1, 1)
AUDIOAMT.BackgroundTransparency = 1
AUDIOAMT.BorderSizePixel = 0
AUDIOAMT.ClearTextOnFocus = false
AUDIOAMT.Font = Enum.Font.SourceSans
AUDIOAMT.FontSize = Enum.FontSize.Size24
AUDIOAMT.TextColor3 = Color3.new(1, 1, 1)
AUDIOAMT.TextWrapped = true
AUDLINE = Instance.new("Frame")
AUDLINE.Name = "Line"
AUDLINE.Parent = AUDIOAMT
AUDLINE.Position = UDim2.new(0,5,1,-1)
AUDLINE.Size = UDim2.new(1,-10,0,1)
AUDLINE.BackgroundColor3 = Color3.new(1, 1, 1)
AUDLINE.BorderSizePixel = 0
PLAYAUDIO = Instance.new("TextButton")
PLAYAUDIO.Name = "PLAYAUDIO"
PLAYAUDIO.Parent = COMMANDSFRAME
PLAYAUDIO.Position = UDim2.new(0,0,0,312)
PLAYAUDIO.Size = UDim2.new(1,0,0,26)
PLAYAUDIO.Text = "PLAY AUDIO"
PLAYAUDIO.BackgroundColor3 = Color3.new(1, 1, 1)
PLAYAUDIO.BackgroundTransparency = 1
PLAYAUDIO.BorderSizePixel = 0
PLAYAUDIO.Font = Enum.Font.SourceSans
PLAYAUDIO.FontSize = Enum.FontSize.Size24
PLAYAUDIO.TextColor3 = Color3.new(1, 1, 0.498039)
PLAYAUDIO.TextWrapped = true
STOPAUDIO = Instance.new("TextButton")
STOPAUDIO.Name = "STOPAUDIO"
STOPAUDIO.Parent = COMMANDSFRAME
STOPAUDIO.Position = UDim2.new(0,0,0,338)
STOPAUDIO.Size = UDim2.new(1,0,0,26)
STOPAUDIO.Text = "STOP AUDIO"
STOPAUDIO.BackgroundColor3 = Color3.new(1, 1, 1)
STOPAUDIO.BackgroundTransparency = 1
STOPAUDIO.BorderSizePixel = 0
STOPAUDIO.Font = Enum.Font.SourceSans
STOPAUDIO.FontSize = Enum.FontSize.Size24
STOPAUDIO.TextColor3 = Color3.new(1, 1, 0.498039)
STOPAUDIO.TextWrapped = true
ITEMAMT = Instance.new("TextBox")
ITEMAMT.Name = "ITEMAMT"
ITEMAMT.Parent = COMMANDSFRAME
ITEMAMT.Position = UDim2.new(0,0,0,364)
ITEMAMT.Size = UDim2.new(1,0,0,26)
ITEMAMT.Text = "ITEM NAME"
ITEMAMT.BackgroundColor3 = Color3.new(1, 1, 1)
ITEMAMT.BackgroundTransparency = 1
ITEMAMT.BorderSizePixel = 0
ITEMAMT.ClearTextOnFocus = false
ITEMAMT.Font = Enum.Font.SourceSans
ITEMAMT.FontSize = Enum.FontSize.Size24
ITEMAMT.TextColor3 = Color3.new(1, 1, 1)
ITEMAMT.TextWrapped = true
ITELINE = Instance.new("Frame")
ITELINE.Name = "Line"
ITELINE.Parent = ITEMAMT
ITELINE.Position = UDim2.new(0,5,1,-1)
ITELINE.Size = UDim2.new(1,-10,0,1)
ITELINE.BackgroundColor3 = Color3.new(1, 1, 1)
ITELINE.BorderSizePixel = 0
SPAWNITEM = Instance.new("TextButton")
SPAWNITEM.Name = "SPAWNITEM"
SPAWNITEM.Parent = COMMANDSFRAME
SPAWNITEM.Position = UDim2.new(0,0,0,416)
SPAWNITEM.Size = UDim2.new(1,0,0,26)
SPAWNITEM.Text = "SPAWN ITEM"
SPAWNITEM.BackgroundColor3 = Color3.new(1, 1, 1)
SPAWNITEM.BackgroundTransparency = 1
SPAWNITEM.BorderSizePixel = 0
SPAWNITEM.Font = Enum.Font.SourceSans
SPAWNITEM.FontSize = Enum.FontSize.Size24
SPAWNITEM.TextColor3 = Color3.new(1, 1, 0.498039)
SPAWNITEM.TextWrapped = true
ITEMNAME = Instance.new("TextBox")
ITEMNAME.Name = "ITEMNAME"
ITEMNAME.Parent = COMMANDSFRAME
ITEMNAME.Position = UDim2.new(0,0,0,390)
ITEMNAME.Size = UDim2.new(1,0,0,26)
ITEMNAME.Text = "MULTIPLIER"
ITEMNAME.BackgroundColor3 = Color3.new(1, 1, 1)
ITEMNAME.BackgroundTransparency = 1
ITEMNAME.BorderSizePixel = 0
ITEMNAME.Font = Enum.Font.SourceSans
ITEMNAME.FontSize = Enum.FontSize.Size24
ITEMNAME.TextColor3 = Color3.new(1, 1, 1)
ITEMNAME.TextWrapped = true
ITELINE2 = Instance.new("Frame")
ITELINE2.Name = "Line"
ITELINE2.Parent = ITEMNAME
ITELINE2.Position = UDim2.new(0,5,1,-1)
ITELINE2.Size = UDim2.new(1,-10,0,1)
ITELINE2.BackgroundColor3 = Color3.new(1, 1, 1)
ITELINE2.BorderSizePixel = 0
MESSAGEAMT = Instance.new("TextBox")
MESSAGEAMT.Name = "MESSAGEAMT"
MESSAGEAMT.Parent = COMMANDSFRAME
MESSAGEAMT.Position = UDim2.new(0,0,0,442)
MESSAGEAMT.Size = UDim2.new(1,0,0,66)
MESSAGEAMT.Text = "YOUR MESSAGE"
MESSAGEAMT.BackgroundColor3 = Color3.new(1, 1, 1)
MESSAGEAMT.BackgroundTransparency = 1
MESSAGEAMT.BorderSizePixel = 0
MESSAGEAMT.Font = Enum.Font.SourceSans
MESSAGEAMT.FontSize = Enum.FontSize.Size24
MESSAGEAMT.TextColor3 = Color3.new(1, 1, 1)
MESSAGEAMT.TextWrapped = true
MESLINE = Instance.new("Frame")
MESLINE.Name = "Line"
MESLINE.Parent = MESSAGEAMT
MESLINE.Position = UDim2.new(0,5,1,-1)
MESLINE.Size = UDim2.new(1,-10,0,1)
MESLINE.BackgroundColor3 = Color3.new(1, 1, 1)
MESLINE.BorderSizePixel = 0
MESSAGECLR = Instance.new("TextButton")
MESSAGECLR.Name = "MESSAGECLR"
MESSAGECLR.Parent = COMMANDSFRAME
MESSAGECLR.Position = UDim2.new(0,0,0,508)
MESSAGECLR.Size = UDim2.new(1,0,0,26)
MESSAGECLR.Text = "COLOR: WHITE"
MESSAGECLR.BackgroundColor3 = Color3.new(1, 1, 1)
MESSAGECLR.BackgroundTransparency = 1
MESSAGECLR.BorderSizePixel = 0
MESSAGECLR.Font = Enum.Font.SourceSans
MESSAGECLR.FontSize = Enum.FontSize.Size24
MESSAGECLR.TextColor3 = Color3.new(1, 1, 0.498039)
MESSAGECLR.TextWrapped = true
SENDMESSAGE = Instance.new("TextButton")
SENDMESSAGE.Name = "SENDMESSAGE"
SENDMESSAGE.Parent = COMMANDSFRAME
SENDMESSAGE.Position = UDim2.new(0,0,0,534)
SENDMESSAGE.Size = UDim2.new(1,0,0,26)
SENDMESSAGE.Text = "SEND MESSAGE"
SENDMESSAGE.BackgroundColor3 = Color3.new(1, 1, 1)
SENDMESSAGE.BackgroundTransparency = 1
SENDMESSAGE.BorderSizePixel = 0
SENDMESSAGE.Font = Enum.Font.SourceSans
SENDMESSAGE.FontSize = Enum.FontSize.Size24
SENDMESSAGE.TextColor3 = Color3.new(1, 1, 0.498039)
SENDMESSAGE.TextWrapped = true
GRAVITY = Instance.new("TextButton")
GRAVITY.Parent = COMMANDSFRAME
GRAVITY.Position = UDim2.new(0,0,0,560)
GRAVITY.Size = UDim2.new(1,0,0,26)
GRAVITY.Text = "GRAVITY - OFF"
GRAVITY.BackgroundColor3 = Color3.new(1, 1, 1)
GRAVITY.BackgroundTransparency = 1
GRAVITY.BorderSizePixel = 0
GRAVITY.Font = Enum.Font.SourceSans
GRAVITY.FontSize = Enum.FontSize.Size24
GRAVITY.TextColor3 = Color3.new(1, 1, 0.498039)
GRAVITY.TextWrapped = true
FLOAT = Instance.new("TextButton")
FLOAT.Name = "FLOAT"
FLOAT.Parent = COMMANDSFRAME
FLOAT.Position = UDim2.new(0,0,0,586)
FLOAT.Size = UDim2.new(1,0,0,26)
FLOAT.Text = "FLOAT - OFF"
FLOAT.BackgroundColor3 = Color3.new(1, 1, 1)
FLOAT.BackgroundTransparency = 1
FLOAT.BorderSizePixel = 0
FLOAT.Font = Enum.Font.SourceSans
FLOAT.FontSize = Enum.FontSize.Size24
FLOAT.TextColor3 = Color3.new(1, 1, 0.498039)
FLOAT.TextWrapped = true
NOCLIP = Instance.new("TextButton")
NOCLIP.Name = "NOCLIP"
NOCLIP.Parent = COMMANDSFRAME
NOCLIP.Position = UDim2.new(0,0,0,612)
NOCLIP.Size = UDim2.new(1,0,0,26)
NOCLIP.Text = "NOCLIP - OFF"
NOCLIP.BackgroundColor3 = Color3.new(1, 1, 1)
NOCLIP.BackgroundTransparency = 1
NOCLIP.BorderSizePixel = 0
NOCLIP.Font = Enum.Font.SourceSans
NOCLIP.FontSize = Enum.FontSize.Size24
NOCLIP.TextColor3 = Color3.new(1, 1, 0.498039)
NOCLIP.TextWrapped = true
HIGHLIGHT = Instance.new("TextButton")
HIGHLIGHT.Name = "HIGHLIGHT"
HIGHLIGHT.Parent = COMMANDSFRAME
HIGHLIGHT.Position = UDim2.new(0,0,0,638)
HIGHLIGHT.Size = UDim2.new(1,0,0,26)
HIGHLIGHT.Text = "HIGHLIGHT - OFF"
HIGHLIGHT.BackgroundColor3 = Color3.new(1, 1, 1)
HIGHLIGHT.BackgroundTransparency = 1
HIGHLIGHT.BorderSizePixel = 0
HIGHLIGHT.Font = Enum.Font.SourceSans
HIGHLIGHT.FontSize = Enum.FontSize.Size24
HIGHLIGHT.TextColor3 = Color3.new(1, 1, 0.498039)
HIGHLIGHT.TextWrapped = true
PLAYERCOMMANDSFRAME = Instance.new("ScrollingFrame")
PLAYERCOMMANDSFRAME.Name = "PLAYERCOMMANDS"
PLAYERCOMMANDSFRAME.Parent = BODY
PLAYERCOMMANDSFRAME.Position = UDim2.new(0,0,1,0)
PLAYERCOMMANDSFRAME.Size = UDim2.new(1,0,0,160)
PLAYERCOMMANDSFRAME.CanvasSize = UDim2.new(0,0,0,403)
PLAYERCOMMANDSFRAME.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
PLAYERCOMMANDSFRAME.BackgroundTransparency = 1
PLAYERCOMMANDSFRAME.BorderSizePixel = 0
PLAYERCOMMANDSFRAME.BottomImage = "rbxassetid://6347925"
PLAYERCOMMANDSFRAME.MidImage = "rbxassetid://6347925"
PLAYERCOMMANDSFRAME.ScrollBarThickness = 1
PLAYERCOMMANDSFRAME.TopImage = "rbxassetid://6347925"
DAMAGE = Instance.new("TextButton")
DAMAGE.Name = "DAMAGE"
DAMAGE.Parent = PLAYERCOMMANDSFRAME
DAMAGE.Position = UDim2.new(0.5,0,0,130)
DAMAGE.Size = UDim2.new(0.5,0,0,26)
DAMAGE.Text = "DAMAGE"
DAMAGE.BackgroundColor3 = Color3.new(1, 1, 1)
DAMAGE.BackgroundTransparency = 1
DAMAGE.BorderSizePixel = 0
DAMAGE.Font = Enum.Font.SourceSans
DAMAGE.FontSize = Enum.FontSize.Size24
DAMAGE.TextColor3 = Color3.new(1, 1, 0.498039)
DAMAGE.TextWrapped = true
STATAMT = Instance.new("TextBox")
STATAMT.Name = "STATAMT"
STATAMT.Parent = PLAYERCOMMANDSFRAME
STATAMT.Position = UDim2.new(0,0,0,156)
STATAMT.Size = UDim2.new(1,0,0,26)
STATAMT.Text = "420"
STATAMT.BackgroundColor3 = Color3.new(1, 1, 1)
STATAMT.BackgroundTransparency = 1
STATAMT.BorderSizePixel = 0
STATAMT.ClearTextOnFocus = false
STATAMT.Font = Enum.Font.SourceSans
STATAMT.FontSize = Enum.FontSize.Size24
STATAMT.TextColor3 = Color3.new(1, 1, 1)
STATAMT.TextWrapped = true
STALINE = Instance.new("Frame")
STALINE.Name = "Line"
STALINE.Parent = STATAMT
STALINE.Position = UDim2.new(0,10,1,-1)
STALINE.Size = UDim2.new(1,-20,0,1)
STALINE.BackgroundColor3 = Color3.new(1, 1, 1)
STALINE.BorderSizePixel = 0
KILL = Instance.new("TextButton")
KILL.Name = "KILL"
KILL.Parent = PLAYERCOMMANDSFRAME
KILL.Size = UDim2.new(1,0,0,26)
KILL.Text = "KILL"
KILL.BackgroundColor3 = Color3.new(1, 1, 1)
KILL.BackgroundTransparency = 1
KILL.BorderSizePixel = 0
KILL.Font = Enum.Font.SourceSans
KILL.FontSize = Enum.FontSize.Size24
KILL.TextColor3 = Color3.new(1, 1, 0.498039)
KILL.TextWrapped = true
METO = Instance.new("TextButton")
METO.Name = "METO"
METO.Parent = PLAYERCOMMANDSFRAME
METO.Position = UDim2.new(0,0,0,26)
METO.Size = UDim2.new(1,0,0,26)
METO.Text = "TELEPORT TO"
METO.BackgroundColor3 = Color3.new(1, 1, 1)
METO.BackgroundTransparency = 1
METO.BorderSizePixel = 0
METO.Font = Enum.Font.SourceSans
METO.FontSize = Enum.FontSize.Size24
METO.TextColor3 = Color3.new(1, 1, 0.498039)
METO.TextWrapped = true
TOME = Instance.new("TextButton")
TOME.Name = "TOME"
TOME.Parent = PLAYERCOMMANDSFRAME
TOME.Position = UDim2.new(0,0,0,52)
TOME.Size = UDim2.new(1,0,0,26)
TOME.Text = "TELEPORT TO ME"
TOME.BackgroundColor3 = Color3.new(1, 1, 1)
TOME.BackgroundTransparency = 1
TOME.BorderSizePixel = 0
TOME.Font = Enum.Font.SourceSans
TOME.FontSize = Enum.FontSize.Size24
TOME.TextColor3 = Color3.new(1, 1, 0.498039)
TOME.TextWrapped = true
HEAL = Instance.new("TextButton")
HEAL.Name = "HEAL"
HEAL.Parent = PLAYERCOMMANDSFRAME
HEAL.Position = UDim2.new(0,0,0,78)
HEAL.Size = UDim2.new(1,0,0,26)
HEAL.Text = "HEAL"
HEAL.BackgroundColor3 = Color3.new(1, 1, 1)
HEAL.BackgroundTransparency = 1
HEAL.BorderSizePixel = 0
HEAL.Font = Enum.Font.SourceSans
HEAL.FontSize = Enum.FontSize.Size24
HEAL.TextColor3 = Color3.new(1, 1, 0.498039)
HEAL.TextWrapped = true
DAMAGEAMT = Instance.new("TextBox")
DAMAGEAMT.Name = "DAMAGEAMT"
DAMAGEAMT.Parent = PLAYERCOMMANDSFRAME
DAMAGEAMT.Position = UDim2.new(0,0,0,130)
DAMAGEAMT.Size = UDim2.new(0.5,0,0,26)
DAMAGEAMT.Text = "50"
DAMAGEAMT.BackgroundColor3 = Color3.new(1, 1, 1)
DAMAGEAMT.BackgroundTransparency = 1
DAMAGEAMT.BorderSizePixel = 0
DAMAGEAMT.ClearTextOnFocus = false
DAMAGEAMT.Font = Enum.Font.SourceSans
DAMAGEAMT.FontSize = Enum.FontSize.Size24
DAMAGEAMT.TextColor3 = Color3.new(1, 1, 1)
DAMAGEAMT.TextWrapped = true
DAMLINE = Instance.new("Frame")
DAMLINE.Name = "Line"
DAMLINE.Parent = DAMAGEAMT
DAMLINE.Position = UDim2.new(0,5,1,-1)
DAMLINE.Size = UDim2.new(1,0,0,1)
DAMLINE.BackgroundColor3 = Color3.new(1, 1, 1)
DAMLINE.BorderSizePixel = 0
STATKILLS = Instance.new("TextButton")
STATKILLS.Name = "STATKILLS"
STATKILLS.Parent = PLAYERCOMMANDSFRAME
STATKILLS.Position = UDim2.new(0,0,0,182)
STATKILLS.Size = UDim2.new(1,0,0,26)
STATKILLS.Text = "CHANGE KILLS"
STATKILLS.BackgroundColor3 = Color3.new(1, 1, 1)
STATKILLS.BackgroundTransparency = 1
STATKILLS.BorderSizePixel = 0
STATKILLS.Font = Enum.Font.SourceSans
STATKILLS.FontSize = Enum.FontSize.Size24
STATKILLS.TextColor3 = Color3.new(1, 1, 0.498039)
STATKILLS.TextWrapped = true
STATZOMBIEKILLS = Instance.new("TextButton")
STATZOMBIEKILLS.Name = "STATZOMBIEKILLS"
STATZOMBIEKILLS.Parent = PLAYERCOMMANDSFRAME
STATZOMBIEKILLS.Position = UDim2.new(0,0,0,208)
STATZOMBIEKILLS.Size = UDim2.new(1,0,0,26)
STATZOMBIEKILLS.Text = "CHANGE ZOMBIE KILLS"
STATZOMBIEKILLS.BackgroundColor3 = Color3.new(1, 1, 1)
STATZOMBIEKILLS.BackgroundTransparency = 1
STATZOMBIEKILLS.BorderSizePixel = 0
STATZOMBIEKILLS.Font = Enum.Font.SourceSans
STATZOMBIEKILLS.FontSize = Enum.FontSize.Size24
STATZOMBIEKILLS.TextColor3 = Color3.new(1, 1, 0.498039)
STATZOMBIEKILLS.TextWrapped = true
STATDAYS = Instance.new("TextButton")
STATDAYS.Name = "STATDAYS"
STATDAYS.Parent = PLAYERCOMMANDSFRAME
STATDAYS.Position = UDim2.new(0,0,0,234)
STATDAYS.Size = UDim2.new(1,0,0,26)
STATDAYS.Text = "CHANGE DAYS SURVIVED"
STATDAYS.BackgroundColor3 = Color3.new(1, 1, 1)
STATDAYS.BackgroundTransparency = 1
STATDAYS.BorderSizePixel = 0
STATDAYS.Font = Enum.Font.SourceSans
STATDAYS.FontSize = Enum.FontSize.Size24
STATDAYS.TextColor3 = Color3.new(1, 1, 0.498039)
STATDAYS.TextWrapped = true
KICK = Instance.new("TextButton")
KICK.Name = "KICK"
KICK.Parent = PLAYERCOMMANDSFRAME
KICK.Position = UDim2.new(0,0,0,260)
KICK.Size = UDim2.new(1,0,0,26)
KICK.Text = "KICK"
KICK.BackgroundColor3 = Color3.new(1, 1, 1)
KICK.BackgroundTransparency = 1
KICK.BorderSizePixel = 0
KICK.Font = Enum.Font.SourceSans
KICK.FontSize = Enum.FontSize.Size24
KICK.TextColor3 = Color3.new(1, 1, 0.498039)
KICK.TextWrapped = true
GOD = Instance.new("TextButton")
GOD.Name = "GOD"
GOD.Parent = PLAYERCOMMANDSFRAME
GOD.Position = UDim2.new(0,0,0,104)
GOD.Size = UDim2.new(1,0,0,26)
GOD.Text = "GOD"
GOD.BackgroundColor3 = Color3.new(1, 1, 1)
GOD.BackgroundTransparency = 1
GOD.BorderSizePixel = 0
GOD.Font = Enum.Font.SourceSans
GOD.FontSize = Enum.FontSize.Size24
GOD.TextColor3 = Color3.new(1, 1, 0.498039)
GOD.TextWrapped = true
MESSAGEAMT_PC = Instance.new("TextBox")
MESSAGEAMT_PC.Name = "MESSAGEAMT"
MESSAGEAMT_PC.Parent = PLAYERCOMMANDSFRAME
MESSAGEAMT_PC.Position = UDim2.new(0,0,0,286)
MESSAGEAMT_PC.Size = UDim2.new(1,0,0,66)
MESSAGEAMT_PC.Text = "YOUR MESSAGE"
MESSAGEAMT_PC.BackgroundColor3 = Color3.new(1, 1, 1)
MESSAGEAMT_PC.BackgroundTransparency = 1
MESSAGEAMT_PC.BorderSizePixel = 0
MESSAGEAMT_PC.Font = Enum.Font.SourceSans
MESSAGEAMT_PC.FontSize = Enum.FontSize.Size24
MESSAGEAMT_PC.TextColor3 = Color3.new(1, 1, 1)
MESSAGEAMT_PC.TextWrapped = true
MESLINE2 = Instance.new("Frame")
MESLINE2.Name = "Line"
MESLINE2.Parent = MESSAGEAMT_PC
MESLINE2.Position = UDim2.new(0,5,1,-1)
MESLINE2.Size = UDim2.new(1,-10,0,1)
MESLINE2.BackgroundColor3 = Color3.new(1, 1, 1)
MESLINE2.BorderSizePixel = 0
MESSAGECLR_PC = Instance.new("TextButton")
MESSAGECLR_PC.Name = "MESSAGECLR"
MESSAGECLR_PC.Parent = PLAYERCOMMANDSFRAME
MESSAGECLR_PC.Position = UDim2.new(0,0,0,352)
MESSAGECLR_PC.Size = UDim2.new(1,0,0,26)
MESSAGECLR_PC.Text = "COLOR: WHITE"
MESSAGECLR_PC.BackgroundColor3 = Color3.new(1, 1, 1)
MESSAGECLR_PC.BackgroundTransparency = 1
MESSAGECLR_PC.BorderSizePixel = 0
MESSAGECLR_PC.Font = Enum.Font.SourceSans
MESSAGECLR_PC.FontSize = Enum.FontSize.Size24
MESSAGECLR_PC.TextColor3 = Color3.new(1, 1, 0.498039)
MESSAGECLR_PC.TextWrapped = true
SENDMESSAGE_PC = Instance.new("TextButton")
SENDMESSAGE_PC.Name = "SENDMESSAGE"
SENDMESSAGE_PC.Parent = PLAYERCOMMANDSFRAME
SENDMESSAGE_PC.Position = UDim2.new(0,0,0,378)
SENDMESSAGE_PC.Size = UDim2.new(1,0,0,26)
SENDMESSAGE_PC.Text = "SEND MESSAGE"
SENDMESSAGE_PC.BackgroundColor3 = Color3.new(1, 1, 1)
SENDMESSAGE_PC.BackgroundTransparency = 1
SENDMESSAGE_PC.BorderSizePixel = 0
SENDMESSAGE_PC.Font = Enum.Font.SourceSans
SENDMESSAGE_PC.FontSize = Enum.FontSize.Size24
SENDMESSAGE_PC.TextColor3 = Color3.new(1, 1, 0.498039)
SENDMESSAGE_PC.TextWrapped = true
CREDITS = Instance.new("TextButton")
CREDITS.Name = "CREDITS"
CREDITS.Parent = HEADER
CREDITS.Position = UDim2.new(1,-60,0,0)
CREDITS.Size = UDim2.new(0,20,1,0)
CREDITS.Text = "CR"
CREDITS.BackgroundColor3 = Color3.new(1, 1, 1)
CREDITS.BackgroundTransparency = 1
CREDITS.BorderSizePixel = 0
CREDITS.AutoButtonColor = false
CREDITS.Font = Enum.Font.Code
CREDITS.FontSize = Enum.FontSize.Size14
CREDITS.TextColor3 = Color3.new(0.235294, 0.235294, 0.235294)
PLAYERLIST = Instance.new("TextButton")
PLAYERLIST.Name = "PLAYERLIST"
PLAYERLIST.Parent = HEADER
PLAYERLIST.Position = UDim2.new(1,-100,0,0)
PLAYERLIST.Size = UDim2.new(0,20,1,0)
PLAYERLIST.Text = "P"
PLAYERLIST.BackgroundColor3 = Color3.new(1, 1, 1)
PLAYERLIST.BackgroundTransparency = 1
PLAYERLIST.BorderSizePixel = 0
PLAYERLIST.AutoButtonColor = false
PLAYERLIST.Font = Enum.Font.Code
PLAYERLIST.FontSize = Enum.FontSize.Size14
PLAYERLIST.TextColor3 = Color3.new(0.235294, 0.235294, 0.235294)
COMMANDS = Instance.new("TextButton")
COMMANDS.Name = "COMMANDS"
COMMANDS.Parent = HEADER
COMMANDS.Position = UDim2.new(1,-80,0,0)
COMMANDS.Size = UDim2.new(0,20,1,0)
COMMANDS.Text = "C"
COMMANDS.BackgroundColor3 = Color3.new(1, 1, 1)
COMMANDS.BackgroundTransparency = 1
COMMANDS.BorderSizePixel = 0
COMMANDS.AutoButtonColor = false
COMMANDS.Font = Enum.Font.Code
COMMANDS.FontSize = Enum.FontSize.Size14
COMMANDS.TextColor3 = Color3.new(0.235294, 0.235294, 0.235294)
SELECTEDPLAYER = Instance.new("TextLabel")
SELECTEDPLAYER.Name = "SELECTEDPLAYER"
SELECTEDPLAYER.Parent = HEADER
SELECTEDPLAYER.Position = UDim2.new(0,0,1,160)
SELECTEDPLAYER.Size = UDim2.new(1,0,0,20)
SELECTEDPLAYER.Text = "SELECTED PLAYER: ?"
SELECTEDPLAYER.BackgroundColor3 = Color3.new(1, 1, 1)
SELECTEDPLAYER.BackgroundTransparency = 1
SELECTEDPLAYER.Font = Enum.Font.SourceSansItalic
SELECTEDPLAYER.FontSize = Enum.FontSize.Size18
SELECTEDPLAYER.TextColor3 = Color3.new(255,255,255)
SELECTEDPLAYER.TextWrapped = true
SELECTEDPLAYERVALUE = Instance.new("StringValue")
SELECTEDPLAYERVALUE.Name = "SELECTEDPLAYERVALUE"
SELECTEDPLAYERVALUE.Parent = SELECTEDPLAYER

PLAYERTEMPLATE = Instance.new("TextButton")
PLAYERTEMPLATE.Name = "PLAYERTEMPLATE"
PLAYERTEMPLATE.Parent = GJWIGUIV6
PLAYERTEMPLATE.Size = UDim2.new(1,0,0,20)
PLAYERTEMPLATE.Text = "GetJiggyWithIt"
PLAYERTEMPLATE.Visible = false
PLAYERTEMPLATE.BackgroundColor3 = Color3.new(1, 1, 1)
PLAYERTEMPLATE.BackgroundTransparency = 1
PLAYERTEMPLATE.BorderSizePixel = 0
PLAYERTEMPLATE.AutoButtonColor = false
PLAYERTEMPLATE.Font = Enum.Font.Code
PLAYERTEMPLATE.FontSize = Enum.FontSize.Size14
PLAYERTEMPLATE.TextColor3 = Color3.new(1, 1, 1)
PLAYERTEMPLATE.TextWrapped = true
Selected = Instance.new("BoolValue")
Selected.Name = "Selected"
Selected.Parent = PLAYERTEMPLATE
RealName = Instance.new("StringValue")
RealName.Name = "RealName"
RealName.Parent = PLAYERTEMPLATE
RealName.Value = "GetJiggyWithIt"
PLALINE = Instance.new("Frame")
PLALINE.Name = "Line"
PLALINE.Parent = PLAYERTEMPLATE
PLALINE.Position = UDim2.new(0,5,1,0)
PLALINE.Size = UDim2.new(1,-10,0,1)
PLALINE.BackgroundColor3 = Color3.new(1, 1, 1)
PLALINE.BorderSizePixel = 0

FLOATBRICK = Instance.new("Part", GJWIGUIV6)
FLOATBRICK.Name = "Float"
FLOATBRICK.Material = Enum.Material.Neon
FLOATBRICK.BrickColor = BrickColor.new("Really black")
FLOATBRICK.Transparency = 1
FLOATBRICK.Position = Vector3.new(-141.5, 0.500001013, 40)
FLOATBRICK.Anchored = true
FLOATBRICK.CFrame = CFrame.new(-141.5, 0.500001013, 40, 1, 0, 0, 0, 1, 0, 0, 0, 1)
FLOATBRICK.FormFactor = Enum.FormFactor.Symmetric
FLOATBRICK.Size = Vector3.new(6, 1, 6)
FLOATBRICK.TopSurface = Enum.SurfaceType.Smooth
FLOATBRICK.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)

PLAYERLIST.MouseButton1Down:connect(function()
for i,v in ipairs(BODY:GetChildren()) do
if v.Name ~= 'PLAYERLIST' then
v:TweenPosition(UDim2.new(0,0,1,0), 'InOut', 'Quad', .35, true)
else
v:TweenPosition(UDim2.new(0,0,0,0), 'InOut', 'Quad', .50, true)
end
end
--
PLAYERLISTFRAME:ClearAllChildren()
local PLAYERLISTNUM = 0
PLAYERLISTFRAME.CanvasSize = UDim2.new(0,0,0,0)
for i,v in pairs(game.Players:GetPlayers()) do
PLAYERLISTNUM = PLAYERLISTNUM + 1
local newTemplate = PLAYERTEMPLATE:Clone()
newTemplate.Parent = PLAYERLISTFRAME
newTemplate.Visible = true
newTemplate.Name = v.Name
newTemplate.Text = string.upper(v.Name)
newTemplate.RealName.Value = v.Name
newTemplate.Position = UDim2.new(0,0,0,20*PLAYERLISTNUM-20)
PLAYERLISTFRAME.CanvasSize = UDim2.new(0,0,0,20*PLAYERLISTNUM)
end
for i,v in ipairs(PLAYERLISTFRAME:GetChildren()) do
if v.ClassName == 'TextButton' then
v.MouseButton1Down:connect(function()
SELECTEDPLAYER.Text = 'SELECTED PLAYER: ' .. string.upper(v.Name)
SELECTEDPLAYERVALUE.Value = v.RealName.Value
--
for i,v in ipairs(BODY:GetChildren()) do
if v.Name ~= 'PLAYERCOMMANDS' then
v:TweenPosition(UDim2.new(0,0,1,0), 'InOut', 'Quad', .35, true)
else
v:TweenPosition(UDim2.new(0,0,0,0), 'InOut', 'Quad', .50, true)
end
end
end)
end
end
end)

COMMANDS.MouseButton1Down:connect(function()
for i,v in ipairs(BODY:GetChildren()) do
if v.Name ~= 'COMMANDS' then
v:TweenPosition(UDim2.new(0,0,1,0), 'InOut', 'Quad', .35, true)
else
v:TweenPosition(UDim2.new(0,0,0,0), 'InOut', 'Quad', .50, true)
end
end
--
SELECTEDPLAYER.Text = 'SELECTED PLAYER: LOCALPLAYER'
SELECTEDPLAYERVALUE.Value = YOU.Name
end)

CREDITS.MouseButton1Down:connect(function()
-- too lazy to give myself credits lol -- by GetJiggyWithIt
end)

OPEN = true
MINIMIZE.MouseButton1Down:connect(function()
if OPEN == true then
BODY:TweenSize(UDim2.new(1,0,0,0), 'InOut', 'Quad', .75, true)
MINIMIZE.Text = '+'
SELECTEDPLAYER.Visible = false
wait(1)
OPEN = false
elseif OPEN == false then
BODY:TweenSize(UDim2.new(1,0,0,160), 'InOut', 'Quad', .75, true)
MINIMIZE.Text = '-'
SELECTEDPLAYER.Visible = true
wait(1)
OPEN = true
end
end)

CLOSE.MouseButton1Down:connect(function()
BODY:TweenSize(UDim2.new(1,0,0,0), 'InOut', 'Quad', .75, true)
wait(.80)
GJWIGUIV6:Destroy()
end)

-------------------------------------------------------------------------------------

KILL.MouseButton1Down:connect(function()
GETPLAYER = game.Workspace:FindFirstChild(SELECTEDPLAYERVALUE.Value)
if SELECTEDPLAYERVALUE.Value == 'Neoqoku' then
else
game.Lighting.Remote.AddHealth:FireServer(GETPLAYER.Humanoid, -999999)
end
end)

METO.MouseButton1Down:connect(function()
GETPLAYER = SELECTEDPLAYERVALUE.Value
game.Lighting.Remote:WaitForChild("TeleportRequest"):InvokeServer("Me To", math.floor(tick() % 1 * 100000), GETPLAYER)
end)

TOME.MouseButton1Down:connect(function()
GETPLAYER = SELECTEDPLAYERVALUE.Value
game.Lighting.Remote:WaitForChild("TeleportRequest"):InvokeServer("To Me", math.floor(tick() % 1 * 100000), GETPLAYER)
end)

HEAL.MouseButton1Down:connect(function()
GETPLAYER = game.Workspace:FindFirstChild(SELECTEDPLAYERVALUE.Value)
game.Lighting.Remote.AddHealth:FireServer(GETPLAYER.Humanoid, 100)
end)

STAMINA = true
GOD.MouseButton1Down:connect(function()
GETPLAYER = game.Workspace:FindFirstChild(SELECTEDPLAYERVALUE.Value)
while wait() do
game.Lighting.Remote.AddHealth:FireServer(GETPLAYER.Humanoid, 999999)
YOU.playerstats.Hunger.Value = 100
YOU.playerstats.Thirst.Value = 100
if STAMINA == true then
YOU.Backpack.GlobalFunctions.Stamina.Value = 100
end
end
end)

DAMAGE.MouseButton1Down:connect(function()
GETPLAYER = game.Workspace:FindFirstChild(SELECTEDPLAYERVALUE.Value)
if SELECTEDPLAYERVALUE.Value == 'Neoqoku' then
else
game.Lighting.Remote.AddHealth:FireServer(GETPLAYER.Humanoid, -DAMAGEAMT.Text)
end
end)

STATKILLS.MouseButton1Down:connect(function()
local HITHERE = getfenv()["_G"]
HITHERE.ChangeValue(game.Players[SELECTEDPLAYERVALUE.Value].playerstats.PlayerKill.Aggressive, STATAMT.Text)
end)

STATZOMBIEKILLS.MouseButton1Down:connect(function()
local HITHERE = getfenv()["_G"]
HITHERE.ChangeValue(game.Players[SELECTEDPLAYERVALUE.Value].playerstats.ZombieKill.Military, STATAMT.Text)
end)

STATDAYS.MouseButton1Down:connect(function()
local HITHERE = getfenv()["_G"]
HITHERE.ChangeValue(game.Players[SELECTEDPLAYERVALUE.Value].playerstats.Days, STATAMT.Text)
end)

KICK.MouseButton1Click:connect(function() -- just incase you f up
local HITHERE = getfenv()["_G"]
if SELECTEDPLAYERVALUE.Value == 'Neoqoku' then
else
HITHERE.Destruct(game.Players[SELECTEDPLAYERVALUE.Value])
end
end)

PC_COLOR = 'White'
MESSAGECLR_PC.MouseButton1Down:connect(function()
if MESSAGECLR_PC.Text == 'COLOR: WHITE' then
MESSAGECLR_PC.Text = 'COLOR: RED'
PC_COLOR = 'Red'
elseif MESSAGECLR_PC.Text == 'COLOR: RED' then
MESSAGECLR_PC.Text = 'COLOR: YELLOW'
PC_COLOR = 'Yellow'
elseif MESSAGECLR_PC.Text == 'COLOR: YELLOW' then
MESSAGECLR_PC.Text = 'COLOR: GREEN'
PC_COLOR = 'Green'
elseif MESSAGECLR_PC.Text == 'COLOR: GREEN' then
MESSAGECLR_PC.Text = 'COLOR: BLUE'
PC_COLOR = 'Blue'
elseif MESSAGECLR_PC.Text == 'COLOR: BLUE' then
MESSAGECLR_PC.Text = 'COLOR: WHITE'
PC_COLOR = 'White'
end
end)

SENDMESSAGE_PC.MouseButton1Down:connect(function()
URMESSAGE = MESSAGEAMT_PC
for i,v in ipairs(game.Players:GetChildren()) do
if v.Name == SELECTEDPLAYERVALUE.Value then
game.Lighting.Remote.SendMessage:FireServer(v, PC_COLOR, URMESSAGE.Text)
end
end
end)

-------------------------------------------------------------------------------------

KILLOTHERS.MouseButton1Down:connect(function()
for i,v in ipairs(game.Players:GetPlayers()) do
GETPLAYER = game.Workspace:FindFirstChild(v.Name)
if GETPLAYER == YOU.Name or SELECTEDPLAYERVALUE.Value == 'Neoqoku' then
else
game.Lighting.Remote.AddHealth:FireServer(GETPLAYER.Humanoid, -999999)
end
end
end)

TPALL.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name == YOU.Name or SELECTEDPLAYERVALUE.Value == 'Neoqoku' then
else
wait(.01)
game.Lighting.Remote:WaitForChild("TeleportRequest"):InvokeServer("To Me", math.floor(tick() % 1 * 100000), v.Name)
end
end
end)

TPCORPSE.MouseButton1Down:connect(function()
for i,v in pairs(workspace:GetChildren()) do
if v.Name == "Corpse" then
v:MoveTo(workspace[game.Players.LocalPlayer.Name].Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
end
end
end)

FINDVEHICLES.MouseButton1Down:connect(function()
print('----------------- VEHICLES -----------------')
for i,v in ipairs(game.Workspace.Vehicles:GetChildren()) do
print(v.Name)
end
end)

SPAWNVEHICLE.MouseButton1Down:connect(function()
for get, Car in pairs(workspace.Vehicles:GetChildren()) do
if Car.Name == VEHICLENAME.Text then
Car:MoveTo(workspace[game.Players.LocalPlayer.Name].Torso.Position + Vector3.new(math.random(-20,20),0,math.random(-20,20)))
end
end
end)

VEHICLESPEED.MouseButton1Down:connect(function()
for i,v in ipairs(game.Workspace.Vehicles:GetChildren()) do
local Car = game.Workspace.Vehicles[VEHICLENAME.Text]
Car.Stats.MaxSpeed.Offroad.Value = VEHICLEAMT.Text
Car.Stats.MaxSpeed.Value = VEHICLEAMT.Text
end
--
while wait() do
for i,v in pairs(game.Workspace.Vehicles:GetChildren()) do
if v.Name ~= "Holder" or v.Name ~= "VehicleWreck" then
if v:findFirstChild("Stats") then
v.Stats.Engine.Value = 100
v.Stats.Tank.Value = 100
v.Stats.Hull.Value = 100
v.Stats.Armor.Value = 100
v.Stats.Fuel.Value = 100
end
end
end
end
end)

CHANGESHIRT.MouseButton1Down:connect(function()
local HITHERE = getfenv()["_G"]
HITHERE.ChangeValue(game.Players[SELECTEDPLAYERVALUE.Value].playerstats.character.shirt.ObjectID.Shirt, CLOTHINGAMT.Text)
game.Lighting.Remote.CheckShirt:FireServer()
end)

CHANGEPANTS.MouseButton1Down:connect(function()
local HITHERE = getfenv()["_G"]
HITHERE.ChangeValue(game.Players[SELECTEDPLAYERVALUE.Value].playerstats.character.pants.ObjectID.Pants, CLOTHINGAMT.Text)
game.Lighting.Remote.CheckPants:FireServer()
end)

PLAYAUDIO.MouseButton1Down:connect(function()
local HITHERE = getfenv()["_G"]
game.Lighting.Remote.CreateSounds:InvokeServer()
HITHERE.ChangeParent(game.Players.LocalPlayer.Character.Head.Sound, game.Workspace)
wait(1)
HITHERE.SoundIdSet(game.Workspace.Sound, "http://www.roblox.com/asset/?id=" .. AUDIOAMT.Text)
wait(1)
HITHERE.PlaySound(game.Workspace.Sound, 1, 1)
wait(120)
end)

STOPAUDIO.MouseButton1Down:connect(function()
local HITHERE = getfenv()["_G"]
HITHERE.StopSound(game.Workspace.Sound)
end)

SPAWNITEM.MouseButton1Down:connect(function()
local getItemName = ITEMAMT
ItemCodes = {
       ["AK104"] = 1037, ["WindscreenGlass"] = 184, ["WaterBottle"] = 209, ["Watch"] = 3001, ["VehicleJack"] = 3016,
       ["Vegetables"] = 214, ["VS50"] = 256, ["Uzi"] = 2015, ["Ushanka"] = 7014, ["USP45Ammo"] = 26, ["USP45"] = 2007,
       ["Twinkies"] = 212, ["Tuna"] = 4, ["TrinityBeret"] = 7015, ["TomatoSoup"] = 215, ["TM46"] = 257,
       ["TEC9Ammo32"] = 57, ["TEC9Ammo20"] = 56, ["TEC9Ammo"] = 20, ["TEC-9"] = 2005, ["SurvivalPackTan"] = 4009,
       ["SurvivalPackGrey"] = 4010, ["SurvivalPackGreen"] = 4011, ["SurvivalPackBrown"] = 4012, ["Suppressor9"] = 9007,
       ["Suppressor762"] = 9010, ["Suppressor556"] = 9009, ["Suppressor545"] = 9011, ["Suppressor45"] = 9008,
       ["Spam"] = 6, ["SodaSprite"] = 205, ["SodaRoot"] = 207, ["SodaPepsi"] = 7, ["SodaPepper"] = 9,
       ["SodaMoxie"] = 208, ["SodaDew"] = 202, ["SodaCrush"] = 201, ["SodaCoke"] = 8, ["ShotgunAmmo"] = 18,
       ["Shotgun"] = 1002, ["ShadesGrey"] = 8005, ["ShadesBlack"] = 8001, ["ScrapMetal"] = 183, ["Sabre"] = 3014,
       ["SUSAT"] = 9014, ["STANAGAmmo50"] = 52, ["STANAGAmmo30"] = 51, ["STANAGAmmo100"] = 53, ["SKSAmmo"] = 45,
       ["SKS"] = 1018, ["SCAR-L"] = 1022, ["RoadFlare"] = 251, ["RevolverAmmo"] = 25, ["Revolver"] = 2006,
       ["ReinforcedWheel"] = 189, ["Reflex"] = 9003, ["RedChemlight"] = 3020, ["RedBeret"] = 7013, ["RawMeat"] = 220,
       ["Ranger"] = 7003, ["RamboClothingTop"] = 5003, ["RamboClothingBottom"] = 6003, ["Radio"] = 3018,
       ["RPK"] = 1034, ["Pringles"] = 204, ["SSBeret"] = 7020, ["PilotGreen"] = 7010, ["PilotBlack"] = 7009, ["Pasta"] = 5,
       ["Painkillers"] = 12, ["PaddedClothingTop"] = 5002, ["PaddedClothingBottom"] = 6002, ["PPSHAmmo"] = 46,
       ["PPSH"] = 1019, ["PP19Ammo64"] = 58, ["SmallCrate"] = 38, ["OmniLight"] = 3015, ["OTs-14"] = 1036,
       ["NagantAmmo"] = 17, ["Mosin-Nagant"] = 1001, ["Model459Ammo14"] = 59, ["Model 459"] = 2013, ["Mk48Ammo"] = 23,
       ["Mk 48"] = 1005, ["Mk23"] = 2018, ["Mk17"] = 1031, ["MilitaryPackGrime"] = 4013, ["MilitaryPackGrey"] = 4015,
       ["MilitaryPackGreen"] = 4014, ["MilitaryPackBlack"] = 4016, ["MaverickAmmo"] = 27, ["Maverick"] = 1010,
       ["Material6"] = 36, ["Material5"] = 35, ["Material4"] = 34, ["Material3"] = 33, ["Material2"] = 32,
       ["Material1"] = 31, ["Matches"] = 3005, ["MaskSpecOps"] = 8009, ["MaskPhantom"] = 8013, ["MaskMime"] = 8008,
       ["MaskMercenary"] = 8007, ["MaskHockey"] = 8012, ["Map"] = 3003, ["MakarovAmmo"] = 16, ["Makarov"] = 2003,
       ["MRE"] = 10, ["MP5Ammo"] = 29, ["MP5"] = 1012, ["M9Ammo32"] = 55, ["M9Ammo17"] = 54, ["M9Ammo"] = 19,
       ["M93R"] = 2016, ["M9"] = 2004, ["M870Ammo"] = 28, ["M870"] = 1011, ["M4A1"] = 1004, -- ["M4A1Ammo"] = 22,
       ["M3Ammo30"] = 60, ["TheM3"] = 1028, ["M249Ammo100"] = 61, ["M249"] = 1024, ["M1911Ammo"] = 15, ["M1911"] = 2002,
       ["M14"] = 1016, ["M1014"] = 1027, ["M14Ammo50"] = 64, ["M14Ammo30"] = 63, ["M14Ammo20"] = 62,
       ["M1 Garand"] = 1006, ["Lemonade"] = 206, ["Laser"] = 9006, ["Kobra"] = 9004, ["Knife"] = 3013,
       ["KethArmorTop"] = 5011, ["KethArmorBottom"] = 6011, ["JerryCanEmpty"] = 186, ["JerryCan"] = 185,
       ["HornRimmed"] = 8006, ["Holo"] = 9002, ["HikingPackWhite"] = 4006, ["HikingPackOrange"] = 4005,
       ["HikingPackBrown"] = 4008, ["HikingPackBlue"] = 4007, ["Hatchet"] = 3011, ["HK417"] = 1033, ["HK21"] = 1032,
       ["GusArmorTop"] = 5010, ["GusArmorBottom"] = 6010, ["Grip"] = 9005, ["GreenChemlight"] = 3021,
       ["GarandAmmo"] = 24, ["GPS"] = 3006, ["G37"] = 2017, ["G36K"] = 1023, ["G3"] = 1030, -- ["G18Ammo"] = 41,
       ["G18"] = 2011, ["FuelTank"] = 182, ["Floodlight"] = 37, ["FlashlightSurvival"] = 3009,
       ["FlashlightOld"] = 3008, ["FlashlightMilitary"] = 3010, ["FlashlightAttachment"] = 9012, ["Firewood"] = 250,
       ["Firefighter"] = 8004, ["FedorovAmmo"] = 44, ["Fedorov"] = 1017, ["Fedora"] = 7004, ["FannyPackWhite"] = 4002,
       ["FannyPackTan"] = 4001, ["FannyPackPurple"] = 4004, ["FannyPackBlue"] = 4003, ["TheFal"] = 1029,
       ["Eyepatch"] = 8003, ["Entrencher"] = 3004, ["EngineParts"] = 181, ["EnfieldAmmo"] = 42, ["Enfield"] = 1015,
       ["Detonator"] = 3017, ["Crowbar"] = 3012, ["CowlGreen"] = 7002, ["CowlBlack"] = 7001, ["Cowboy"] = 7012,
       ["CookedMeat"] = 221, ["Compass"] = 3002, ["ClothingTopFalse"] = 5000, ["ClothingBottomFalse"] = 6000,
       ["CivilianClothingTop"] = 5001, ["CivilianClothingBottom"] = 6001, ["ChocolateBar"] = 211, ["ChipsAhoy"] = 213,
       ["ChickenSoup"] = 216, ["CheezIts"] = 203, ["CarWheel"] = 180, ["CamoWoodlandsTop"] = 5007,
       ["CamoWoodlandsBottom"] = 6007, ["CamoUrbanTop"] = 5005, ["CamoUrbanBottom"] = 6005, ["CamoSpecialTop"] = 5009,
       ["CamoSpecialBottom"] = 6009, ["CamoSnowTop"] = 5008, ["CamoSnowBottom"] = 6008, ["CamoJungleTop"] = 5006,
       ["CamoJungleBottom"] = 6006, ["CamoDesertTop"] = 5004, ["CamoDesertBottom"] = 6004, ["CZ75Ammo"] = 40,
       ["CZ75"] = 2010, ["CCO"] = 9001, ["CBJ-MS"] = 2014, ["C4"] = 255, ["BrimmedBrown"] = 7007,
       ["BrimmedBlack"] = 7008, ["Bowler"] = 7005, ["BlueChemlight"] = 3022, ["BloodBag"] = 11, ["Binoculars"] = 3007,
       ["Biker"] = 7006, ["BeefStew"] = 217, ["BeefJerky"] = 210, ["Beans"] = 3, ["Beanie"] = 7011,
       ["BandanaSkull"] = 8014, ["BandanaRenegade"] = 8011, ["BandanaRed"] = 8010, ["BandanaBlack"] = 8002,
       ["BallisticUrban"] = 7018, ["BallisticSpecOps"] = 7019, ["BallisticJungle"] = 7017, ["BallisticGlass"] = 187,
       ["BallisticDesert"] = 7016, ["Auto-5"] = 1025, ["ArmorPlates"] = 188, ["AN-94"] = 1040, ["AKS74U"] = 1041,
       ["AKM"] = 1038, ["AKAmmo75"] = 67, ["AKAmmo45"] = 66, ["AKAmmo30"] = 65, ["AK47Ammo75"] = 50,
       ["AK47Ammo40"] = 49, ["AK47Ammo30"] = 48, ["AK74"] = 1039, ["AK-47"] = 1003, ["AK12"] = 1035,
       ["ACOG"] = 9013, ["LargeCrate"] = 39, ["PP19"] = 1026
}
function GetItem(Name)
for lootName, lootid in pairs(ItemCodes) do
if string.find(string.lower(lootName),string.lower(Name)) then
local RealName = lootName
local RealId = lootid
return(RealId)
end
end
end
function GetNextOpenSlot()
for i,v in pairs(game.Players.LocalPlayer.playerstats.slots:GetChildren()) do
if not v:FindFirstChild('ObjectID') then
return v
end
end
end
for i = 1, ITEMNAME.Text do
game.Lighting.Remote.AddObject:FireServer(GetNextOpenSlot(),tonumber(GetItem(getItemName.Text)))
wait(.50)
end
end)

COLOR = 'White'
MESSAGECLR.MouseButton1Down:connect(function()
if MESSAGECLR.Text == 'COLOR: WHITE' then
MESSAGECLR.Text = 'COLOR: RED'
COLOR = 'Red'
elseif MESSAGECLR.Text == 'COLOR: RED' then
MESSAGECLR.Text = 'COLOR: YELLOW'
COLOR = 'Yellow'
elseif MESSAGECLR.Text == 'COLOR: YELLOW' then
MESSAGECLR.Text = 'COLOR: GREEN'
COLOR = 'Green'
elseif MESSAGECLR.Text == 'COLOR: GREEN' then
MESSAGECLR.Text = 'COLOR: BLUE'
COLOR = 'Blue'
elseif MESSAGECLR.Text == 'COLOR: BLUE' then
MESSAGECLR.Text = 'COLOR: WHITE'
COLOR = 'White'
end
end)

SENDMESSAGE.MouseButton1Down:connect(function()
URMESSAGE = MESSAGEAMT
for i,v in ipairs(game.Players:GetChildren()) do
game.Lighting.Remote.SendMessage:FireServer(v, COLOR, URMESSAGE.Text)
end
end)

GRAV = false
GRAVITY.MouseButton1Down:connect(function()
if GRAV == false then
GRAV = true
GRAVITY.Text = 'GRAVITY - ON'
game.Workspace.Gravity = 25
elseif GRAV == true then
GRAV = false
GRAVITY.Text = 'GRAVITY - OFF'
game.Workspace.Gravity = 196.2
end
end)

FLOATA = false
FLOAT.MouseButton1Down:connect(function()
if FLOATA == false then
FLOATA = true
FLOAT.Text = 'FLOAT - ON'
local FLOATBRICKK = FLOATBRICK:Clone()
FLOATBRICKK.Parent = YOU.Character
FLOATBRICKK.CFrame = YOU.Character.Torso.CFrame * CFrame.new(0,-3.5,0)
wait(.10)
spawn(function()
repeat wait()
FLOATBRICKK.CFrame = YOU.Character.Torso.CFrame * CFrame.new(0,-3.5,0)
until FLOATA == false
end)
elseif FLOATA == true then
FLOATA = false
FLOAT.Text = 'FLOAT - OFF'
if YOU.Character:FindFirstChild('Float') then
YOU.Character.Float:Destroy()
end
end
end)

CLIP = true
NOCLIP.MouseButton1Down:connect(function()
if CLIP == true then
CLIP = false
NOCLIP.Text = 'NOCLIP - ON'
game:GetService('RunService').Stepped:connect(function()
game.Workspace[YOU.Name].Torso.CanCollide = CLIP
game.Workspace[YOU.Name].Head.CanCollide = CLIP
end)
game.Workspace[YOU.Name].Torso.Changed:connect(function()
game.Workspace[YOU.Name].Torso.CanCollide = CLIP
game.Workspace[YOU.Name].Head.CanCollide = CLIP
end)
elseif CLIP == false then
CLIP = true
NOCLIP.Text = 'NOCLIP - OFF'
end
end)

ESP = false
HIGHLIGHT.MouseButton1Down:connect(function()
if ESP == false then -- forgot esp lol
ESP = true
HIGHLIGHT.Text = 'HIGHLIGHT - ON'
for get,nplayer in ipairs(game.Players:GetPlayers()) do
if nplayer.Name == YOU.Name then
else
local BGUI = Instance.new('BillboardGui', workspace.CurrentCamera)
BGUI.Name = 'GJWIBGUI'
local BGUIFrame = Instance.new('Frame', BGUI)
BGUIFrame.Name = 'BGUIFrame'
local BGUIName = Instance.new('TextLabel', BGUIFrame)
BGUIName.Name = 'BGUIName'
BGUI.AlwaysOnTop = true
BGUI.Enabled = true
BGUI.Size = UDim2.new(0,200,0,30)
BGUI.Adornee = nplayer.Character.Torso
BGUIFrame.BackgroundTransparency = 1
BGUIFrame.Size = UDim2.new(1,0,1,0)
BGUIName.Size = UDim2.new(1,0,1,0)
BGUIName.BackgroundTransparency = 1
BGUIName.Text = nplayer.Name
BGUIName.TextColor3 = Color3.new(85/255, 255/255, 0/255)
BGUIName.TextStrokeTransparency = 0.8
BGUIName.Font = 'ArialBold'
BGUIName.FontSize = 'Size14'
end
end
local nvGUI = Instance.new('ScreenGui', YOU.PlayerGui)
nvGUI.Name = 'NightVision'
local nvMAIN = Instance.new('TextLabel', nvGUI)
nvMAIN.Name = 'MAIN'
nvMAIN.BackgroundTransparency = 1
for i,v in pairs(game.Players:GetChildren()) do
if v and v.Character and not (v.Name == '' .. YOU.Name) then
for i,v in pairs(v.Character:GetChildren()) do
if v:IsA('BasePart') then
local nvBox = Instance.new('SelectionBox', nvMAIN)
nvBox.Adornee = v
nvBox.Color = BrickColor.new('Lime green')
end
end
end
end
elseif ESP == true then
ESP = false
HIGHLIGHT.Text = 'HIGHLIGHT - OFF'
for i,v in ipairs(game.Workspace.CurrentCamera:GetChildren()) do
if v.Name == 'GJWIBGUI' then
v:Destroy()
end
end
for i,v in pairs(YOU.PlayerGui:GetChildren()) do
if v.Name == 'NightVision' and v:IsA('ScreenGui') then
v:Destroy()
end
end
end
end)

-- afteredit

newLine = Instance.new('Frame', GJWIGUIV6)
newLine.Name = 'Line'
newLine.BackgroundColor3 = Color3.new(255/255, 255/255, 127/255)
newLine.BorderSizePixel = 0
newLine.Position = UDim2.new(0,5,1,-1)
newLine.Size = UDim2.new(1,0,0,1)
for i,v in ipairs(BODY:GetChildren()) do
for r,t in ipairs(v:GetChildren()) do
if t.ClassName == 'TextButton' then
t.TextSize = 20
k = newLine:Clone()
k.Parent = t
k.Size = UDim2.new(0,t.TextBounds.X,0,1)
k.Position = UDim2.new(0.5,-t.TextBounds.X/2,1,-1)
end
if t.ClassName == 'TextBox' then
t.TextSize = 20
t.ClearTextOnFocus = true
end
end
end
newLine.Visible = false
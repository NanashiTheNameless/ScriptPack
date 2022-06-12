
--[[
	
 _________  _______   ___       _______   ___  __    ___  ________   _______   ________  ___  ________      
|\___   ___\\  ___ \ |\  \     |\  ___ \ |\  \|\  \ |\  \|\   ___  \|\  ___ \ |\   ____\|\  \|\   ____\     
\|___ \  \_\ \   __/|\ \  \    \ \   __/|\ \  \/  /|\ \  \ \  \\ \  \ \   __/|\ \  \___|\ \  \ \  \___|_    
     \ \  \ \ \  \_|/_\ \  \    \ \  \_|/_\ \   ___  \ \  \ \  \\ \  \ \  \_|/_\ \_____  \ \  \ \_____  \   
      \ \  \ \ \  \_|\ \ \  \____\ \  \_|\ \ \  \\ \  \ \  \ \  \\ \  \ \  \_|\ \|____|\  \ \  \|____|\  \  
       \ \__\ \ \_______\ \_______\ \_______\ \__\\ \__\ \__\ \__\\ \__\ \_______\____\_\  \ \__\____\_\  \ 
        \|__|  \|_______|\|_______|\|_______|\|__| \|__|\|__|\|__| \|__|\|_______|\_________\|__|\_________\
                                                                                 \|_________|   \|_________|
                                                                                                            
                                                                                                                                                                                             
	
	Made By: astrologicality.
	#1 Edited By: Rocky2u.
	#2 Edited By: KrystalTeam.
	
	Keys:
		Left Mouse Click: Telekinesis.
		E: Spawn Brick At Cursor Location.
		F: Toggle Telekinesis Visibility.
		G: Blow Selected Object.
		H: UnAnchored Selected Object.
		V: 100 Studs Away The Selected Object.
		C: 5 Studs Away The Selected Object.
		X: +5 Studs Away The Selected Object.
		Z: -5 Studs Away The Selected Object.
	
--]]

Fire = false

Sparkles = false

Box = false

local Players = game.Players

local Player = Players.LocalPlayer

local Mouse = Player:GetMouse()
	
local dist = 25

local trans = 0

local dwn=false

local Bin = Instance.new("HopperBin") 

Bin.Name = "Telekinesis" 

Bin.Parent = Player.Backpack


local ScreenGUI = Instance.new("ScreenGui", Player.PlayerGui)

local Color = Instance.new("Color3Value", ScreenGUI)

local ColorValue = Color.Value

local Blue = Instance.new("TextButton", ScreenGUI)

local Red = Instance.new("TextButton", ScreenGUI)

local Green = Instance.new("TextButton", ScreenGUI)

local Yellow = Instance.new("TextButton", ScreenGUI)

local Pink = Instance.new("TextButton", ScreenGUI)

local LightBlue = Instance.new("TextButton", ScreenGUI)

local White = Instance.new("TextButton", ScreenGUI)

local FireTrue = Instance.new("TextButton", ScreenGUI)

local FireFalse = Instance.new("TextButton", ScreenGUI)

local SparklesTrue = Instance.new("TextButton", ScreenGUI)

local SparklesFalse = Instance.new("TextButton", ScreenGUI)

local BoxTrue = Instance.new("TextButton", ScreenGUI)

local BoxFalse = Instance.new("TextButton", ScreenGUI)

Color.Name = "Color"

Blue.BackgroundColor3 = BrickColor.new("Bright blue").Color

Blue.Transparency = 0.5

Blue.Size = UDim2.new(0, 20 ,0, 20)

Blue.Position = UDim2.new(1, -35, 1, -35)

Blue.Name = "Blue"

Blue.Text = ""

Blue.Visible = false

Red.BackgroundColor3 = BrickColor.new("Bright red").Color

Red.Transparency = 0.5

Red.Size = UDim2.new(0, 20 ,0, 20)

Red.Position = UDim2.new(1,-65, 1, -35)

Red.Name = "Red"

Red.Text = ""

Red.Visible = false

Green.BackgroundColor3 = BrickColor.new("Bright green").Color

Green.Transparency = 0.5

Green.Size = UDim2.new(0, 20 ,0, 20)

Green.Position = UDim2.new(1,-95, 1, -35)

Green.Name = "Green"

Green.Text = ""

Green.Visible = false

Yellow.BackgroundColor3 = BrickColor.new("New Yeller").Color

Yellow.Transparency = 0.5

Yellow.Size = UDim2.new(0, 20 ,0, 20)

Yellow.Position = UDim2.new(1,-125, 1, -35)

Yellow.Name = "Yellow"

Yellow.Text = ""

Yellow.Visible = false

Pink.BackgroundColor3 = BrickColor.new("Hot pink").Color

Pink.Transparency = 0.5

Pink.Size = UDim2.new(0, 20 ,0, 20)

Pink.Position = UDim2.new(1,-155, 1, -35)

Pink.Name = "Pink"

Pink.Text = ""

Pink.Visible = false

LightBlue.BackgroundColor3 = BrickColor.new("Cyan").Color

LightBlue.Transparency = 0.5

LightBlue.Size = UDim2.new(0, 20 ,0, 20)

LightBlue.Position = UDim2.new(1,-185, 1, -35)

LightBlue.Name = "LightBlue"

LightBlue.Text = ""

LightBlue.Visible = false

White.BackgroundColor3 = BrickColor.new("White").Color

White.Transparency = 0.5

White.Size = UDim2.new(0, 20 ,0, 20)

White.Position = UDim2.new(1,-215, 1, -35)

White.Name = "White"

White.Text = ""

White.Visible = false

FireFalse.BackgroundColor3 = BrickColor.new("Really black").Color

FireFalse.Transparency = 0.5

FireFalse.Size = UDim2.new(0, 50 ,0, 20)

FireFalse.Position = UDim2.new(1,-65, 1, -65)

FireFalse.Name = "FireFalse"

FireFalse.Text = "Fire: F"

FireFalse.Visible = false

FireFalse.FontSize = "Size12"

FireFalse.Font = "ArialBold"

FireFalse.TextColor = BrickColor.new(255,255,255)

FireFalse.TextTransparency = 0

FireTrue.BackgroundColor3 = BrickColor.new("Really black").Color

FireTrue.Transparency = 0.5

FireTrue.Size = UDim2.new(0, 50 ,0, 20)

FireTrue.Position = UDim2.new(1,-65, 1, -65)

FireTrue.Name = "FireTrue"

FireTrue.Text = "Fire: T"

FireTrue.Visible = false

FireTrue.FontSize = "Size12"

FireTrue.Font = "ArialBold"

FireTrue.TextColor = BrickColor.new(255,255,255)

FireTrue.TextTransparency = 0

SparklesTrue.BackgroundColor3 = BrickColor.new("Really black").Color

SparklesTrue.Transparency = 0.5

SparklesTrue.Size = UDim2.new(0, 50 ,0, 20)

SparklesTrue.Position = UDim2.new(1,-125, 1, -65)

SparklesTrue.Name = "SparklesTrue"

SparklesTrue.Text = "SP: T"

SparklesTrue.Visible = false

SparklesTrue.FontSize = "Size12"

SparklesTrue.Font = "ArialBold"

SparklesTrue.TextColor = BrickColor.new(255,255,255)

SparklesTrue.TextTransparency = 0

SparklesFalse.BackgroundColor3 = BrickColor.new("Really black").Color

SparklesFalse.Transparency = 0.5

SparklesFalse.Size = UDim2.new(0, 50 ,0, 20)

SparklesFalse.Position = UDim2.new(1,-125, 1, -65)

SparklesFalse.Name = "SparklesFalse"

SparklesFalse.Text = "SP: F"

SparklesFalse.Visible = false

SparklesFalse.FontSize = "Size12"

SparklesFalse.Font = "ArialBold"

SparklesFalse.TextColor = BrickColor.new(255,255,255)

SparklesFalse.TextTransparency = 0

BoxTrue.BackgroundColor3 = BrickColor.new("Really black").Color

BoxTrue.Transparency = 0.5

BoxTrue.Size = UDim2.new(0, 50 ,0, 20)

BoxTrue.Position = UDim2.new(1,-185, 1, -65)

BoxTrue.Name = "BoxTrue"

BoxTrue.Text = "Box: T"

BoxTrue.Visible = false

BoxTrue.FontSize = "Size12"

BoxTrue.Font = "ArialBold"

BoxTrue.TextColor = BrickColor.new(255,255,255)

BoxTrue.TextTransparency = 0

BoxFalse.BackgroundColor3 = BrickColor.new("Really black").Color

BoxFalse.Transparency = 0.5

BoxFalse.Size = UDim2.new(0, 50 ,0, 20)

BoxFalse.Position = UDim2.new(1,-185, 1, -65)

BoxFalse.Name = "BoxFalse"

BoxFalse.Text = "Box: F"

BoxFalse.Visible = false

BoxFalse.FontSize = "Size12"

BoxFalse.Font = "ArialBold"

BoxFalse.TextColor = BrickColor.new(255,255,255)

BoxFalse.TextTransparency = 0

local bawl = Instance.new("Part", game.Lighting)

bawl.Name="TelekinesisGrab"

local bp = Instance.new("BodyPosition", bawl)

local w = Instance.new("Weld", bawl) 

function onButton1Down(mouse)
	
	bawl.Size = Vector3.new(2,2,2) 
	
	bawl.Material="Neon"
	
	bawl.Shape=0
	
	bawl.Transparency=trans
	
	bawl.Name="TelekinesisGrab"
	
	bawl.CanCollide = false  
	
	bawl.Parent = game.Workspace
	
	w.Parent = bawl 
	
	w.Name = "Weld"
	
	bp.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
	
	bp.Parent = bawl
	
	bp.Name="lolx"
	
	bawl.Parent = workspace
	
	if mouse ~= nil then
	
		if mouse.Target ~= nil then
	
			w.Part0 = mouse.Target 
			
			w.Part1 = bawl 
			
			dwn = true
	
			if mouse.Target.Parent:FindFirstChild("Humanoid") then
				
				mouse.Target.Parent:FindFirstChild("Humanoid").PlatformStand=true
				
			else
				
				print('no humanoid')
				
			end
	
		end
	
	end
	
	spawn(function()
		
		while dwn == true do 
			
			ypcall(function()		
			
				bp.Parent = bawl 
				
				bp.position = Player.Character.Torso.Position + (mouse.Hit.lookVector*dist)
				
				wait()
			
			end)
			
	    end
	
	end)
	
end

function onButton1Up(mouse)
		
	dwn=false

	if bawl ~= nil then
			
		bawl.Parent=game.Lighting 
			
	else 
			
		print('not found') 
			
	end
	
end 
	
function onKeyDown(key, mouse) 
		
	key:lower() 
		
	if key == "r" then 
			
		if bawl ~= nil then
				
			--bawl.Parent=nil
				
		end
			
	elseif key == "e" then 
			
		local p = Instance.new("Part", workspace)
			
		p.Size = Vector3.new(3,3,3)
			
		p.Material = "Neon"
			
		p.Position = mouse.Hit.p + Vector3.new(0,2,0) 
			
		p.BrickColor = bawl.BrickColor
			
		p.Shape = "Ball"
			
		p.BottomSurface = "Smooth"
			
		p.TopSurface = "Smooth"
			
	elseif key == "h" then
			
		if bawl ~= nil then
				
			if bawl:FindFirstChild("Weld") ~= nil then
				
				if bawl:FindFirstChild("Weld").Part0 ~= nil then
				
					bawl:FindFirstChild("Weld").Part0.Anchored=false
				
				end
				
			end
				
		end
			
	elseif key == "g" then
			
		if bawl ~= nil then

			local x = Instance.new("Explosion",workspace)

			x.Position=bawl.Position
				
		else
				
			print('some sort of error')
				
		end
			
	elseif key == "x" then 
			
		dist=dist - 5
			
	elseif key == "c" then 
			
		dist=15
			
	elseif key == "v" then 
			
		dist=100
			
	elseif key == "z" then 
			
		dist=dist + 5
			
	end  
		
end

FireX = 0

FireY = 0

FireZ = 0

SPX = 0

SPY = 0

SPZ = 0

BoxColor = "White"

FireFalse.MouseButton1Down:connect(function ()
	
	local Fire = Instance.new("Fire", bawl)
    Fire.Color = Color3.new(FireX,FireY,FireZ)

    Player.PlayerGui.ScreenGui.FireFalse.Visible = false

    Player.PlayerGui.ScreenGui.FireTrue.Visible = true

    Fire.Color = Color3.new(FireX,FireY,FireZ)
	
end)

FireTrue.MouseButton1Down:connect(function ()
	
	bawl.Fire:remove()

    Player.PlayerGui.ScreenGui.FireFalse.Visible = true

    Player.PlayerGui.ScreenGui.FireTrue.Visible = false
	
end)

SparklesFalse.MouseButton1Down:connect(function ()
	
	local SP = Instance.new("Sparkles", bawl)
    SP.Color = Color3.new(SPX,SPY,SPZ)

    Player.PlayerGui.ScreenGui.SparklesFalse.Visible = false

    Player.PlayerGui.ScreenGui.SparklesTrue.Visible = true
	
end)

SparklesTrue.MouseButton1Down:connect(function ()
	
	bawl.Sparkles:remove()

    Player.PlayerGui.ScreenGui.SparklesFalse.Visible = true

    Player.PlayerGui.ScreenGui.SparklesTrue.Visible = false
	
end)

BoxFalse.MouseButton1Down:connect(function ()
	
	local Box = Instance.new("SelectionBox", bawl)
    Box.Color = BrickColor.new(BoxColor)
    Box.Adornee = Box.Parent

    Player.PlayerGui.ScreenGui.BoxFalse.Visible = false

    Player.PlayerGui.ScreenGui.BoxTrue.Visible = true
	
end)

BoxTrue.MouseButton1Down:connect(function ()
	
	bawl.SelectionBox:remove()

    Player.PlayerGui.ScreenGui.BoxFalse.Visible = true

    Player.PlayerGui.ScreenGui.BoxTrue.Visible = false
	
end)
	
Blue.MouseButton1Down:connect(function ()

	if bawl ~= nil then
		
		bawl.BrickColor = BrickColor.new("Bright blue")
		
		FireX = 0
		FireY = 0
		FireZ = 255
		
		SPX = 0
		SPY = 0
		SPZ = 255
		
		BoxColor = "Bright blue"
		
		game.Lighting.TelekinesisGrab.Fire.Color = Color3.new(0,0,255)
		
		game.Lighting.TelekinesisGrab.Sparkles.Color = Color3.new(0,0,255)
		
		game.Lighting.TelekinesisGrab.SelectionBox.Color = BrickColor.new("Bright blue")

	end

end)
	
Red.MouseButton1Down:connect(function ()
		
	if bawl ~= nil then
			
		bawl.BrickColor = BrickColor.new("Bright red")
		
		FireX = 255
		FireY = 0
		FireZ = 0
		
		SPX = 255
		SPY = 0
		SPZ = 0
		
		BoxColor = "Bright red"
		
		game.Lighting.TelekinesisGrab.Fire.Color = Color3.new(255,0,0)
		
		game.Lighting.TelekinesisGrab.Sparkles.Color = Color3.new(255,0,0)
		
		game.Lighting.TelekinesisGrab.SelectionBox.Color = BrickColor.new("Bright red")

	end
		
end)
	
Green.MouseButton1Down:connect(function ()

	if bawl ~= nil then

		bawl.BrickColor = BrickColor.new("Bright green")
		
		FireX = 0
		FireY = 255
		FireZ = 0
		
		SPX = 0
		SPY = 255
		SPZ = 0
		
		BoxColor = "Bright green"
		
		game.Lighting.TelekinesisGrab.Fire.Color = Color3.new(0,255,0)
		
		game.Lighting.TelekinesisGrab.Sparkles.Color = Color3.new(0,255,0)
		
		game.Lighting.TelekinesisGrab.SelectionBox.Color = BrickColor.new("Bright green")
		
	end
	
end)
	
Yellow.MouseButton1Down:connect(function ()
		
	if bawl ~= nil then
			
		bawl.BrickColor = BrickColor.new("New Yeller")
		
		FireX = 255
		FireY = 255
		FireZ = 0
		
		SPX = 255
		SPY = 255
		SPZ = 0
		
		BoxColor = "New Yeller"
		
		game.Lighting.TelekinesisGrab.Fire.Color = Color3.new(255,255,0)
		
		game.Lighting.TelekinesisGrab.Sparkles.Color = Color3.new(255,255,0)
		
		game.Lighting.TelekinesisGrab.SelectionBox.Color = BrickColor.new("New Yeller")
			
	end
		
end)
	
Pink.MouseButton1Down:connect(function ()
		
	if bawl ~= nil then
			
		bawl.BrickColor = BrickColor.new("Hot pink")
		
		FireX = 255
		FireY = 0
		FireZ = 255
		
		SPX = 255
		SPY = 0
		SPZ = 255
		
		BoxColor = "Hot pink"
		
		game.Lighting.TelekinesisGrab.Fire.Color = Color3.new(255,0,255)
		
		game.Lighting.TelekinesisGrab.Sparkles.Color = Color3.new(255,0,255)
		
		game.Lighting.TelekinesisGrab.SelectionBox.Color = BrickColor.new("Hot pink")
		
	end
		
end)
	
LightBlue.MouseButton1Down:connect(function ()
		
	if bawl ~= nil then
			
		bawl.BrickColor = BrickColor.new("Cyan")
		
		FireX = 0
		FireY = 255
		FireZ = 255
		
		SPX = 0
		SPY = 255
		SPZ = 255
		
		BoxColor = "Cyan"
		
		game.Lighting.TelekinesisGrab.Fire.Color = Color3.new(0,255,255)
		
		game.Lighting.TelekinesisGrab.Sparkles.Color = Color3.new(0,255,255)
		
		game.Lighting.TelekinesisGrab.SelectionBox.Color = BrickColor.new("Cyan")
			
	end
		
end)
    
	
White.MouseButton1Down:connect(function ()

	if bawl ~= nil then
			
		bawl.BrickColor = BrickColor.new("White")
		
		FireX = 255
		FireY = 255
		FireZ = 255
		
		SPX = 255
		SPY = 255
		SPZ = 255
		
		BoxColor = "White"
		
		game.Lighting.TelekinesisGrab.Fire.Color = Color3.new(255,255,255)
		
		game.Lighting.TelekinesisGrab.Sparkles.Color = Color3.new(255,255,255)
		
		game.Lighting.TelekinesisGrab.SelectionBox.Color = BrickColor.new("White")
			
	end
	
end)

Bin.Selected:connect(function ()
	
	Fire = false
	
	Player.PlayerGui.ScreenGui.Blue.Visible = true
	
	Player.PlayerGui.ScreenGui.Red.Visible = true
	
	Player.PlayerGui.ScreenGui.Green.Visible = true
	
	Player.PlayerGui.ScreenGui.Yellow.Visible = true
	
	Player.PlayerGui.ScreenGui.Pink.Visible = true
	
	Player.PlayerGui.ScreenGui.LightBlue.Visible = true
	
	Player.PlayerGui.ScreenGui.White.Visible = true
	
	Player.PlayerGui.ScreenGui.FireFalse.Visible = true
	
	Player.PlayerGui.ScreenGui.FireTrue.Visible = false
	
	Player.PlayerGui.ScreenGui.SparklesFalse.Visible = true
	
	Player.PlayerGui.ScreenGui.SparklesTrue.Visible = false
	
	Player.PlayerGui.ScreenGui.BoxFalse.Visible = true
	
	Player.PlayerGui.ScreenGui.BoxTrue.Visible = false
	
end)

Bin.Deselected:connect(function ()
	
	Fire = false
	
	Player.PlayerGui.ScreenGui.Blue.Visible = false
	
	Player.PlayerGui.ScreenGui.Red.Visible = false
	
	Player.PlayerGui.ScreenGui.Green.Visible = false
	
	Player.PlayerGui.ScreenGui.Yellow.Visible = false
	
	Player.PlayerGui.ScreenGui.Pink.Visible = false
	
	Player.PlayerGui.ScreenGui.LightBlue.Visible = false
	
	Player.PlayerGui.ScreenGui.White.Visible = false
	
	Player.PlayerGui.ScreenGui.FireFalse.Visible = false
	
	Player.PlayerGui.ScreenGui.FireTrue.Visible = false
	
	Player.PlayerGui.ScreenGui.SparklesFalse.Visible = false
	
	Player.PlayerGui.ScreenGui.SparklesTrue.Visible = false
	
	Player.PlayerGui.ScreenGui.BoxFalse.Visible = false
	
	Player.PlayerGui.ScreenGui.BoxTrue.Visible = false
	
end)
	
Bin.Selected:connect(function(mouse)
	
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	
	mouse.Button1Up:connect(function() onButton1Up(mouse) end)
	
	mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
	
end)
--[[
~~ GENOCIDE SANS SCRIPT ~~

VERSION BETA V3.0.3
Whats New:
*1st attempt in adding skull (failed lol)
*Patched some more bugs
*1st attempt in adding bones (failed lol)
*removed ball spawning
- AzuLX

Genocide Sans script from the Undertale game Script is edited by Xeradius, Isaac and Pingu.
Full credit to whoever made the base
Please do not leak this script.
Full credit to 'KrystalTeam' and 'rocky2u' for the Telek script.
TeamAzuL2K16
]]--
ID = '319332735'
Looped = false

Music=Instance.new("Sound" ,workspace)
Music.Name = "Music"
if Looped == true then
Music.Looped = true
end
Music.SoundId = "http://roblox.com/asset/?id=319332735"
Music:Play() --Demonic Laugh. (Omega Flowey) You can remove if you wish. Its very loud (To not make play, remove 'Music:Play()')

--full credit to krystal and rocky2u for below
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

Bin.Name = "Sans' Telekinesis" 

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

BoxFalse.TextColor = BrickColor.new(255, 255, 255)

BoxFalse.TextTransparency = 0

local Credits = Instance.new("ScreenGui",Player.PlayerGui)

local Text = Instance.new("TextLabel",Credits)

Text.BackgroundTransparency = 1

Text.Position = UDim2.new(0, 0, 1, -25)

Text.Size = UDim2.new(0, 200, 0, 25)

Text.Font = "SourceSans"

Text.FontSize = "Size24"

Text.Text = "By AzuLX, Issac and Pingu - GSans Script."

Text.TextColor3 = Color3.new(255, 255, 255)

Text.TextXAlignment = "Left"

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
print 'Telek script has loaded, credit to Krystal and rocky2u'
dot = false
des = false
local ChatService = game:GetService("Chat")
local player = game.Players.LocalPlayer
char = player.Character
hum = char.Humanoid
torso = hum.Torso
lig = Instance.new("PointLight",player.Character.Torso)
lig.Color=Color3.new(0,255,255)
m=player:GetMouse()
bb = Instance.new("BillboardGui",player.Character.Head)
bb.Enabled = true
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,200,0,50)
bb.StudsOffset = Vector3.new(0,1,0)
gui=Instance.new("TextBox",bb)
gui.Text = "* "
gui.Size = UDim2.new(0,133,0,45)
gui.Position=UDim2.new(0,57,0,-40)
gui.TextColor3 = Color3.new(255,255,255)
gui.BackgroundColor3=Color3.new(0,0,0)
gui.TextWrapped = true
gui.TextScaled = true
gui.TextXAlignment = "Left"
gui.TextYAlignment = "Top"
gui.Visible = false
gui.BorderColor3 = Color3.new(0,0,0)

gui1=Instance.new("TextButton",bb)
gui1.Position=UDim2.new(0,5,0,-43)
gui1.Size = UDim2.new(0,190,0,51)

gui1.TextColor3 = Color3.new(255,255,255)
gui1.BackgroundColor3=Color3.new(255,255,255)

gui1.Visible = false
img = Instance.new("ImageLabel",bb)
img.Size = UDim2.new(0,46,0,47)
img.Position = UDim2.new(0,10,0,-41)
img.Image = "rbxassetid://388166921"
img.BorderColor3 = Color3.new(0,0,0)
img.Visible = false
asd = Instance.new("Sound",player.Character.Torso)
asd.SoundId = "http://www.roblox.com/asset/?id = 358280695"

asd1 = Instance.new("Sound",player.Character.Torso)
asd1.SoundId = "http://www.roblox.com/asset/?id = 358280695"

asd2 = Instance.new("Sound",player.Character.Torso)
asd2.SoundId = "http://www.roblox.com/asset/?id = 306370481"
asd2.Looped = true
asd3 = Instance.new("Sound",player.Character.Torso)
asd3.SoundId = "http://www.roblox.com/asset/?id = 316014309"
asd3.Looped = true
asd4 = Instance.new("Sound",player.Character.Torso)
asd4.SoundId = "http://www.roblox.com/asset/?id = 388938813"
asd4.Looped = false
asd5 = Instance.new("Sound",player.Character.Torso)
asd5.SoundId = "http://www.roblox.com/asset/?id = 0"
asd5.Looped = true
dunkd = Instance.new("Sound",player.Character.Torso)
dunkd.SoundId = "http://www.roblox.com/asset/?id = 333078694"
dunkd.Looped = false
function play(play)
asd:Play()
asd1:Play()
end
eye = Instance.new("Part",player.Character)
eye.BrickColor = BrickColor.new("Toothpaste")
eye.Material = "Neon"
eye.FormFactor = 3
eye.Shape = "Ball"
eye.Size = Vector3.new(0.37,0.37,0.1)
weld = Instance.new("Weld",eye)
weld.Part0 = eye
weld.Part1 = player.Character.Head
weld.C0 = CFrame.new(0.1,-0.2,0.45)
eye.Transparency = 1
-- listen for their chatting
player.Chatted:connect(function(message)
a = string.len(message)
gui.Text = "* "
gui.Visible = true
gui1.Visible = true
des = false
img.Visible = true
print(a)
if dot == false then
for i = 1,string.len(message) do wait(0.07)
gui.Text =gui.Text..message:sub(i,i)

play()
end
end

des = true
end)
m.KeyDown:connect(function(k)
if k == "g" then
asd2:Play()
eye.Transparency = 0

end
end)
m.KeyDown:connect(function(k)
if k == "p" then
eye.Transparency = 1
asd3:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "r" then
eye.Transparency = 0
asd4:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "q" then
eye.Transparency = 1
asd5:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "z" then

img.Image = "rbxassetid://388167098"
end
end)
m.KeyDown:connect(function(k)
if k == "c" then
img.Image = "rbxassetid://388166921"
end
end)
m.KeyDown:connect(function(k)
if k == "n" then
img.Image = "rbxassetid://388166991"
end
end)
m.KeyDown:connect(function(k)
if k == "b" then
img.Image = "rbxassetid://378060690"
end
end)
m.KeyDown:connect(function(k)
if k == "m" then
img.Image = "rbxassetid://378609498"
end
end)
m.KeyDown:connect(function(k)
if k == "v" then
img.Image = "rbxassetid://388166961"
end
end)
m.KeyDown:connect(function(k)
if k == "h" then
img.Image = "rbxassetid://378577428"
end
end)
m.KeyDown:connect(function(k)
if k == "j" then
img.Image = "rbxassetid://388167116"
end
end)
m.KeyDown:connect(function(k)
if k == "l" then
img.Image = "rbxassetid://388167154"
print("You take your very last breath...")
asdd = Instance.new("Sound",player.Character.Torso)
asdd.SoundId = "http://www.roblox.com/asset/?id = 357417055"
asdd.Looped = false
spawn(function()
wait()
asdd:Play()
end)
wait(2)
asddd = Instance.new("Sound",player.Character.Torso)
asddd.SoundId = "http://www.roblox.com/asset/?id = 387183672"
asddd.Looped = false
spawn(function()
wait()
asddd:Play()
end)
wait(2)
asdded = Instance.new("Sound",player.Character.Torso)
asdded.SoundId = "http://www.roblox.com/asset/?id = 387187707"
asdded.Looped = false
spawn(function()
wait()
asdded:Play()
end)
char:BreakJoints()
end
end) 
m.KeyDown:connect(function(k)
if k == "x" then
if des == true then
gui.Visible = false
gui.Text = "* "
gui1.Visible = false
img.Visible = false
end
end
end)
m.KeyDown:connect(function(k)
if k == "f" then
asd3:Stop()
asd2:Stop()
asd4:Stop()
dunkd:Stop()
eye.Transparency = 1
asd5:Stop()
end
end)
m.KeyDown:connect(function(k)
if k == "u" then
dunkd = Instance.new("Sound",player.Character.Torso)
dunkd.SoundId = "http://www.roblox.com/asset/?id = 333078694"
dunkd.Looped = false
dunkd:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "y" then
img.Image = "rbxassetid://378198656"
end
end)
-- my god...
-- Suck_HiyaThere moves to arizona

--------------------------------------------------------

        pls = game:GetService'Players'
        rs = game:GetService'RunService'
        uinps = game:GetService'UserInputService'
        lp = pls.LocalPlayer
        mouse = lp:GetMouse()
        c = lp.Character
        human = c.Humanoid
        human.MaxHealth = 50
        soundVol = 0
        wait()
        human.Health = 50
        c.Health:Destroy()

--------------------------------------------------------

        Debounces = {
                AnimationCycles = 0;
                FPS = 0;
                scalingDamage = false;
                damageLevel = 0;
                attackNumber = 0;
                isAttacking = false;
                isMoving = false;
                isSprinting = false;
                isBoosting = false;
                isPassive = false;
                isTyping = false;
        }

--------------------------------------------------------

        numLerp = function(start, goal, alpha)
                return(((goal - start) * alpha) + start)
        end

        CFrameZero = function()
                return CFrame.new(Vector3.new())
        end

        rad = function(value)
                return math.rad(value)
        end

        CFAngles = function(Vector)
                return CFrame.Angles(rad(Vector.x),rad(Vector.y),rad(Vector.z))
        end

--------------------------------------------------------

        AnimStat = {
                lerpSpeed = .2;
                lerpSpeed2 = .35;
                lerpTween = 0;
        }

        Joints = {
                c.HumanoidRootPart.RootJoint;
                c.Torso.Neck;
                c.Torso['Left Shoulder'];
                c.Torso['Right Shoulder'];
                c.Torso['Left Hip'];
                c.Torso['Right Hip'];
        }

        JointTargets = {
                CFrameZero();
                CFrameZero();
                CFrameZero();
                CFrameZero();
                CFrameZero();
                CFrameZero();
        }

--------------------------------------------------------

        BodyColors = {
                HeadColor = BrickColor.new("Institutional white");
                LeftArmColor = BrickColor.new("Institutional white");
                RightArmColor = BrickColor.new("Institutional white");
                LeftLegColor = BrickColor.new("Institutional white");
                RightLegColor = BrickColor.new("Institutional white");
                TorsoColor = BrickColor.new("Mid gray");
        }

        Customs = {
                Face = "http://www.roblox.com/asset/?id=8560915";
                Shirt = "http://www.roblox.com/asset/?id=334781688";
                Pants = "http://www.roblox.com/asset/?id=335237283";
        }

--------------------------------------------------------

        prepareCharacter = function()
                local transPoints = {
                        NumberSequenceKeypoint.new(0,0,0),
                        NumberSequenceKeypoint.new(.4,.05,0),
                        NumberSequenceKeypoint.new(.8,.16,0),
                        NumberSequenceKeypoint.new(1,.25,0)
                }
                local sizePoints = {
                        NumberSequenceKeypoint.new(0,.5,0),
                        NumberSequenceKeypoint.new(.18,.5,0),
                        NumberSequenceKeypoint.new(.49,.69,0),
                        NumberSequenceKeypoint.new(.74,.5,0),
                        NumberSequenceKeypoint.new(.92,.25,0),
                        NumberSequenceKeypoint.new(1,.0625,0)
                }
                local Size = NumberSequence.new(sizePoints)
                local Transparency = NumberSequence.new(transPoints)
                rayModel = Instance.new("Model",c)
                efxBlock = Instance.new("Part",c)
                efxBlock.Material = "Neon"
                efxBlock.FormFactor = "Custom"
                efxBlock.Size = Vector3.new(.3,.3,.3)
                light = Instance.new("PointLight",c.Head)
                light.Range = 8
                light.Color = Color3.new(1,1,1)
                light.Shadows = false
                local particles = Instance.new("ParticleEmitter",efxBlock)
                particles.Color = ColorSequence.new(Color3.new(.85,.85,.85),Color3.new(1,1,1))
                particles.ZOffset = 1
                particles.LightEmission = .96
                particles.Size = Size
                particles.Name = "Fire"
                particles.Transparency = Transparency
                particles.LockedToPart = true
                particles.Rate = 25
                particles.EmissionDirection = "Right"
                particles.Acceleration = Vector3.new(-.5,0,0)
                particles.Texture = "rbxassetid://24378732"
                particles.Lifetime = NumberRange.new(.25,.25)
                particles.Speed = NumberRange.new(-.5,5)
                script.Parent = efxBlock
                fire = particles
                local offset = Vector3.new(0.2, .23, -0.5)
                local weld = Instance.new("Weld",c.Head)
                weld.Part0 = c.Head
                weld.Part1 = efxBlock
                weld.C0 = CFrame.new(offset) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
                efxBlock.Parent = c
                local music = Instance.new("Sound",c.Torso)
                music.SoundId = "rbxassetid://316012176"
                music.Looped = true
                music.Volume = soundVol
                fight = music
                local music2 = Instance.new("Sound",c.Torso)
                music2.SoundId = "rbxassetid://316014309"
                music2.Looped = true
                music2.Volume = soundVol
                sans = music2
                pointGyro = Instance.new("BodyGyro",c.HumanoidRootPart)
                pointGyro.P = 1e7
                pointGyro.D = 1e3
                pointGyro.MaxTorque = Vector3.new(0,1e7,0)
                animator = c.Humanoid:FindFirstChild("Animator")
                if animator then
                        animator:Destroy()
                end
                c.Torso.roblox:Destroy()
                for i,v in pairs (c.Head:children()) do
                        if v.ClassName == "Sound" then
                                v:Destroy()
                        end
                end
                for i = 1,#Joints do
                        Joints[i].C1 = CFrame.new(Vector3.new())
                end
                human.WalkSpeed = 0
                human.JumpPower = 0
        end

        uinps.InputBegan:connect(function(InputObject)
                if InputObject.KeyCode == Enum.KeyCode.K and Debounces.isTyping == false then
                        Debounces.isPassive = not Debounces.isPassive
                end
        end)

        setJointCFrames = function(table)
                for i = 1,#table do
                        JointTargets[i] = table[i]
                end
                AnimationCycles = 0
        end

        setLerp = function(speed)
                AnimStat.lerpSpeed = speed
        end

        setTween = function(tween)
                AnimStat.lerpTween = tween
        end

        takeDamage = function(position,damage,distance,platformStand)
                for i,v in pairs (pls:children()) do
                        if v.ClassName == "Player" and v:FindFirstChild("Character") then
                                local torso = v.Character:FindFirstChild("Torso")
                                if torso and (torso.Position - position).magnitude < distance then
                                if v.Character.Humanoid.MaxHealth > 1000 then
                                    v.Character.Humanoid.MaxHealth = 100;
                               v.Character.Humanoid.Breakjoints()
                                end
                                
                            
                                        v.Character.Humanoid:TakeDamage(damage)
                                        if platformStand == true then
                                                v.Character.PlatformStand = platformStand
                                        end
                                end
                        end
                end
        end

--------------------------------------------------------

        prepareCharacter()

--------------------------------------------------------

        spawn(function()
                local sine = 0
                while wait() do
                        pointGyro.CFrame = CFrame.new(Vector3.new(),(mouse.Hit.p - c.HumanoidRootPart.CFrame.p).unit * 100)
                        if Debounces.isAttacking == false and Debounces.isMoving == false and Debounces.isBoosting == false then
                                setLerp(.1)
                                if Debounces.isPassive == true then
                                         setJointCFrames({
                                                CFrame.new(Vector3.new(0, 0 + math.sin(tick() * 1.5)/25, 0)) * CFAngles(Vector3.new(0, 0, 0));
                                                CFrame.new(Vector3.new(0, 1.5 + math.sin(tick() * -1.5)/35, math.sin(tick() * 1.5)/35)) * CFAngles(Vector3.new(1.554 + math.sin((-tick() + 2) * 1.5) * 5, -0.001, -0.001));
                                                CFrame.new(Vector3.new(-1.06, -0.03 + math.sin(tick() * 1.5)/25, 0.449)) * CFAngles(Vector3.new(-29.511, 0, 29.51));
                                                CFrame.new(Vector3.new(1.059, -0.031 + math.sin(tick() * 1.5)/25, 0.449)) * CFAngles(Vector3.new(-29.511, -3.842, -29.511));
                                                CFrame.new(Vector3.new(-0.49, -2, -0.05/1.5)) * CFAngles(Vector3.new(0, 8.885, 0));
                                                CFrame.new(Vector3.new(0.49, -2, -0.05/1.5)) * CFAngles(Vector3.new(-0.001, -8.886, 0));
                                        })
                                else
                                        setJointCFrames({
                                                CFrame.new(Vector3.new(0, 0 + math.sin(tick() * 1.5)/25, 0)) * CFAngles(Vector3.new(0, 0, 0));
                                                CFrame.new(Vector3.new(0, 1.5 + math.sin(tick() * -1.5)/35, math.sin(tick() * 1.5)/35)) * CFAngles(Vector3.new(1.554 + math.sin((-tick() + 2) * 1.5) * 5, -0.001, -0.001));
                                                CFrame.new(Vector3.new(-1.06, -0.03 + math.sin(tick() * 1.5)/25, 0.449)) * CFAngles(Vector3.new(-29.511, 0, 29.51));
                                                CFrame.new(Vector3.new(1.059, -0.031 + math.sin(tick() * 1.5)/25, 0.449)) * CFAngles(Vector3.new(-29.511, -3.842, -29.511));
                                                CFrame.new(Vector3.new(-0.49, -2, -0.05/1.5)) * CFAngles(Vector3.new(0, 8.885, 0));
                                                CFrame.new(Vector3.new(0.49, -2, -0.05/1.5)) * CFAngles(Vector3.new(-0.001, -8.886, 0));
                                        })
                                end
                        elseif Debounces.isAttacking == false and Debounces.isMoving == true and Debounces.isBoosting == false then
                                sine = sine + math.rad(12)
                                human.WalkSpeed = 15
                                setLerp(.15)
                                setJointCFrames({
                                        CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, math.sin(sine) * -2.5, 0));
                                        CFrame.new(Vector3.new(0, 1.499, -0.04)) * CFAngles(Vector3.new(-5.676, -0.001 - math.sin(sine) * 3, -0.001));
                                        CFrame.new(Vector3.new(-1.97, 0 + math.sin(sine + .5)/20, 0.1 + math.sin(-sine)/2)/1.3) * CFAngles(Vector3.new(-5 + math.sin(sine) * 23, 0, 0));
                                        CFrame.new(Vector3.new(1.97, 0 - math.sin(sine + .5)/20, 0.1 + math.sin(sine)/2)/1.3) * CFAngles(Vector3.new(-5 + math.sin(-sine) * 23, 0, 0));
                                        CFrame.new(Vector3.new(-0.5, -1.93 - math.cos(sine)/8.7, 0.2 + math.sin(sine)/2)) * CFAngles(Vector3.new(-15 + math.sin(-sine) * 30, 0, 0));
                                        CFrame.new(Vector3.new(0.5, -1.93 + math.cos(sine)/8.7, 0.2 + math.sin(-sine)/2)) * CFAngles(Vector3.new(-15 + math.sin(sine) * 30, 0, 0));
                                })
                        end
                        if Debounces.scalingDamage == true then
                                takeDamage(c.HumanoidRootPart.Position,Debounces.damageLevel,8,true)
                        end
                end
        end)

        human.Changed:connect(function(prop)
                if prop == "MoveDirection" then
                        if human.MoveDirection.magnitude > .02 then
                                Debounces.isMoving = true
                        else
                                Debounces.isMoving = false
                        end
                end
        end)

        uinps.InputBegan:connect(function(InputObject)
                if InputObject.KeyCode == Enum.KeyCode.A and Debounces.isAttacking == false and Debounces.isSprinting == true and Debounces.isBoosting == false and Debounces.isPassive == true and Debounces.isTyping == false then
                        Debounces.isBoosting = true
                        Debounces.damageLevel = 10
                        Debounces.scalingDamage = true
                        local vel = Instance.new("BodyVelocity",c.HumanoidRootPart)
                        setLerp(.15)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -0.901, 0)) * CFAngles(Vector3.new(-22.001, 0, 20));
                                CFrame.new(Vector3.new(-0.001, 1.52, 0)) * CFAngles(Vector3.new(-10.372, 28.758, -1.837));
                                CFrame.new(Vector3.new(-0.7, -0.2, -0.801)) * CFAngles(Vector3.new(45, 0, 45));
                                CFrame.new(Vector3.new(1.7, 0.2, 0.199)) * CFAngles(Vector3.new(-15.001, -15.001, 45));
                                CFrame.new(Vector3.new(-0.3, -2, 0.2)) * CFAngles(Vector3.new(-11.283, -17.801, 19.495));
                                CFrame.new(Vector3.new(0.9, -2, -0.201)) * CFAngles(Vector3.new(15, -15, 29.999));
                        })
                        local boostSpeed = 250
                        local efx = Instance.new("Sound",c.Head)
                        efx.SoundId = "rbxassetid://200632875"
                        efx.Pitch = math.random(1100,1300)/1000
                        efx.Volume = .5
                        efx:Play()
                        spawn(function()
                                wait(5)
                                efx:Destroy()
                        end)
                        vel.Velocity = (c.HumanoidRootPart.Position - c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(1,0,0)).p).unit * boostSpeed
                        vel.P = 1e3
                        vel.MaxForce = Vector3.new(math.huge,0,math.huge)
                        wait(.15)
                        vel.P = 1000
                        vel.MaxForce = Vector3.new(3000,0,3000)
                        vel.Velocity = Vector3.new()
                        wait(.3)
                        setLerp(.3)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -0.901, 0)) * CFAngles(Vector3.new(-22.001, 0, 13));
                                CFrame.new(Vector3.new(-0.001, 1.52, 0)) * CFAngles(Vector3.new(-30.239, 42.47, 11.879));
                                CFrame.new(Vector3.new(-1.9, -0.2, -0.401)) * CFAngles(Vector3.new(44.999, 0, -45));
                                CFrame.new(Vector3.new(1.5, 0.4, 0.599)) * CFAngles(Vector3.new(-62.058, -21.088, -15.383));
                                CFrame.new(Vector3.new(-0.7, -1.8, 0.6)) * CFAngles(Vector3.new(-59.239, -26.158, -14.457));
                                CFrame.new(Vector3.new(0.5, -1, -0.801)) * CFAngles(Vector3.new(-0.505, -14.478, -18.968));
                        })
                        wait(.2)
                        vel:Destroy()
                        Debounces.damageLevel = 0
                        Debounces.scalingDamage = false
                        Debounces.isBoosting = false
                end
        end)

        uinps.InputBegan:connect(function(InputObject)
                if InputObject.KeyCode == Enum.KeyCode.D and Debounces.isAttacking == false and Debounces.isSprinting == true and Debounces.isBoosting == false and Debounces.isPassive == true and Debounces.isTyping == false then
                        Debounces.isBoosting = true
                        Debounces.damageLevel = 10
                        Debounces.scalingDamage = true
                        local vel = Instance.new("BodyVelocity",c.HumanoidRootPart)
                        setLerp(.15)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -0.901, 0)) * CFAngles(Vector3.new(-22.001, 0, -15));
                                CFrame.new(Vector3.new(-0.001, 1.52, 0)) * CFAngles(Vector3.new(-13.603, -45.662, -6.645));
                                CFrame.new(Vector3.new(-1.9, 0, -0.201)) * CFAngles(Vector3.new(31.935, -7.436, -60.853));
                                CFrame.new(Vector3.new(1.9, 0, 0.399)) * CFAngles(Vector3.new(-3.644, -23.448, 59.102));
                                CFrame.new(Vector3.new(-1.1, -1.8, 0)) * CFAngles(Vector3.new(-3.616, -11.936, -29.566));
                                CFrame.new(Vector3.new(0.1, -1.6, -0.601)) * CFAngles(Vector3.new(1.943, -7.181, -32.528));
                        })
                        local boostSpeed = 250
                        local efx = Instance.new("Sound",c.Head)
                        efx.SoundId = "rbxassetid://200632875"
                        efx.Pitch = math.random(1100,1300)/1000
                        efx.Volume = .5
                        efx:Play()
                        spawn(function()
                                wait(5)
                                efx:Destroy()
                        end)
                        vel.Velocity = (c.HumanoidRootPart.Position - c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(-1,0,0)).p).unit * boostSpeed
                        vel.P = 1e3
                        vel.MaxForce = Vector3.new(math.huge,0,math.huge)
                        wait(.15)
                        vel.P = 1000
                        vel.MaxForce = Vector3.new(3000,0,3000)
                        vel.Velocity = Vector3.new()
                        wait(.3)
                        setLerp(.3)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -0.901, 0)) * CFAngles(Vector3.new(-22.001, 0, -13));
                                CFrame.new(Vector3.new(-0.001, 1.52, 0)) * CFAngles(Vector3.new(-12.936, -46.206, -2.327));
                                CFrame.new(Vector3.new(-1.9, 0.2, -0.201)) * CFAngles(Vector3.new(45, 0, -60));
                                CFrame.new(Vector3.new(1.7, 0, -0.401)) * CFAngles(Vector3.new(14.035, -5.69, 35.342));
                                CFrame.new(Vector3.new(-0.3, -1.8, 0.6)) * CFAngles(Vector3.new(-55.479, -10.612, 15.729));
                                CFrame.new(Vector3.new(0.5, -1, -0.801)) * CFAngles(Vector3.new(14.999, -15, 14.999));
                        })
                        wait(.2)
                        vel:Destroy()
                        Debounces.damageLevel = 0
                        Debounces.scalingDamage = false
                        Debounces.isBoosting = false
                end
        end)

        uinps.InputBegan:connect(function(InputObject)
                if InputObject.KeyCode == Enum.KeyCode.W and Debounces.isAttacking == false and Debounces.isSprinting == true and Debounces.isBoosting == false and Debounces.isPassive == true and Debounces.isTyping == false then
                        Debounces.isBoosting = true
                        Debounces.damageLevel = 10
                        Debounces.scalingDamage = true
                        local vel = Instance.new("BodyVelocity",c.HumanoidRootPart)
                        setLerp(.15)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -0.901, 0)) * CFAngles(Vector3.new(-40.001, 0, 5));
                                CFrame.new(Vector3.new(-0.001, 1.429, 0.2)) * CFAngles(Vector3.new(25.141, -8.347, 0.878));
                                CFrame.new(Vector3.new(-1.5, 0, .101)) * CFAngles(Vector3.new(14.999, -0.001, 0));
                                CFrame.new(Vector3.new(1.7, 0.199, -0.401)) * CFAngles(Vector3.new(28.08, -0.358, 21.087));
                                CFrame.new(Vector3.new(-0.5, -1.8, 0.6)) * CFAngles(Vector3.new(-29.448, 3.57, -1.5));
                                CFrame.new(Vector3.new(0.499, -1.6, -0.401)) * CFAngles(Vector3.new(-0.505, -14.478, -3.968));
                        })
                        local boostSpeed = 250
                        local efx = Instance.new("Sound",c.Head)
                        efx.SoundId = "rbxassetid://200632875"
                        efx.Pitch = math.random(1100,1300)/1000
                        efx.Volume = .5
                        efx:Play()
                        spawn(function()
                                wait(5)
                                efx:Destroy()
                        end)
                        vel.Velocity = (c.HumanoidRootPart.Position - c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0,0,1)).p).unit * boostSpeed
                        vel.P = 1e3
                        vel.MaxForce = Vector3.new(math.huge,0,math.huge)
                        wait(.15)
                        vel.P = 1000
                        vel.MaxForce = Vector3.new(3000,0,3000)
                        vel.Velocity = Vector3.new()
                        wait(.3)
                        setLerp(.3)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -0.901, 0)) * CFAngles(Vector3.new(-22.001, 40, -13));
                                CFrame.new(Vector3.new(-0.001, 1.52, 0)) * CFAngles(Vector3.new(-12.936, -46.206, -2.327));
                                CFrame.new(Vector3.new(-1.9, 0.2, -0.201)) * CFAngles(Vector3.new(45, 0, -60));
                                CFrame.new(Vector3.new(1.7, 0, -0.401)) * CFAngles(Vector3.new(14.035, -5.69, 35.342));
                                CFrame.new(Vector3.new(-0.3, -1.8, 0.6)) * CFAngles(Vector3.new(-55.479, -10.612, 15.729));
                                CFrame.new(Vector3.new(0.5, -1, -0.801)) * CFAngles(Vector3.new(14.999, -15, 14.999));
                        })
                        wait(.2)
                        vel:Destroy()
                        Debounces.damageLevel = 0
                        Debounces.scalingDamage = false
                        Debounces.isBoosting = false
                end
        end)

        uinps.InputBegan:connect(function(InputObject)
                if InputObject.KeyCode == Enum.KeyCode.S and Debounces.isAttacking == false and Debounces.isSprinting == true and Debounces.isBoosting == false and Debounces.isPassive == true and Debounces.isTyping == false then
                        Debounces.isBoosting = true
                        Debounces.damageLevel = 10
                        Debounces.scalingDamage = true
                        local vel = Instance.new("BodyVelocity",c.HumanoidRootPart)
                        setLerp(.15)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -.3, 0)) * CFAngles(Vector3.new(15, 0, 0));
                                CFrame.new(Vector3.new(-0.001, 1.52, -0.03)) * CFAngles(Vector3.new(-5.298, -1.305, -4.093));
                                CFrame.new(Vector3.new(-1.7, 0, -0.201)) * CFAngles(Vector3.new(12.112, -6.562, -16.939));
                                CFrame.new(Vector3.new(1.7, 0, -0.201)) * CFAngles(Vector3.new(8.817, 8.378, 20.465));
                                CFrame.new(Vector3.new(-0.7, -1.8, 0.2)) * CFAngles(Vector3.new(-14.432, 3.06, -2.373));
                                CFrame.new(Vector3.new(0.5, -1.8, -0.201)) * CFAngles(Vector3.new(-0.505, -14.478, -3.968));
                        })
                        local boostSpeed = 150
                        local boostSpeed = 250
                        local efx = Instance.new("Sound",c.Head)
                        efx.SoundId = "rbxassetid://200632875"
                        efx.Pitch = math.random(1100,1300)/1000
                        efx.Volume = .5
                        efx:Play()
                        spawn(function()
                                wait(5)
                                efx:Destroy()
                        end)
                        vel.Velocity = (c.HumanoidRootPart.Position - c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0,0,-1)).p).unit * boostSpeed
                        vel.P = 1e3
                        vel.MaxForce = Vector3.new(math.huge,0,math.huge)
                        wait(.15)
                        vel.P = 1000
                        vel.MaxForce = Vector3.new(3000,0,3000)
                        vel.Velocity = Vector3.new()
                        wait(.3)
                        setLerp(.3)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -.5, 0)) * CFAngles(Vector3.new(4, 0, 0));
                                CFrame.new(Vector3.new(-0.001, 1.52, -0.03)) * CFAngles(Vector3.new(-20.081, 28.752, 3.598));
                                CFrame.new(Vector3.new(-1.7, 0.2, -0.601)) * CFAngles(Vector3.new(59.51, -3.841, -14.511));
                                CFrame.new(Vector3.new(1.7, 0.2, 0.399)) * CFAngles(Vector3.new(-47.597, -13.104, 17.887));
                                CFrame.new(Vector3.new(-0.7, -1.4, 0.2)) * CFAngles(Vector3.new(-44.477, 3.836, -0.524));
                                CFrame.new(Vector3.new(0.5, -1.4, -0.601)) * CFAngles(Vector3.new(-15.868, -12.953, -7.631));
                        })
                        wait(.2)
                        vel:Destroy()
                        Debounces.damageLevel = 0
                        Debounces.scalingDamage = false
                        Debounces.isBoosting = false
                end
        end)

        uinps.InputBegan:connect(function(InputObject)
                if InputObject.KeyCode == Enum.KeyCode.Q and Debounces.isAttacking == false and Debounces.isSprinting == false and Debounces.isPassive == true and Debounces.isTyping == false then
                        local isLooping = true
                        uinps.InputEnded:connect(function(InputObject2)
                                if InputObject2.KeyCode == Enum.KeyCode.Q then
                                        isLooping = false
                                end
                        end)
                        while true do
                                if isLooping == false then
                                        break
                                end
                                Debounces.attackNumber = Debounces.attackNumber + 1
                                local aimPos = mouse.Hit.p
                                local head = Instance.new("Part",c)
                                head.Size = Vector3.new(12,.2,12)
                                head.CanCollide = false
                                head.Anchored = true
                                head.Transparency = 1
                                for i = 1,2 do
                                        local decal = Instance.new("Decal",head)
                                        decal.Texture = "rbxassetid://323497117"
                                        if i == 1 then
                                                decal.Face = Enum.NormalId.Top
                                        else
                                                decal.Face = Enum.NormalId.Bottom
                                        end
                                end
                                if Debounces.attackNumber%2 == 1 then
                                        head.CFrame = CFrame.new(c.Torso.CFrame:toWorldSpace(CFrame.new(8,8,.5)).p,aimPos)
                                else
                                        head.CFrame = CFrame.new(c.Torso.CFrame:toWorldSpace(CFrame.new(-8,8,.5)).p,aimPos)
                                end
                                spawn(function()
                                        local timer = 0
                                        while rs.RenderStepped:wait() do
                                                if timer >= 1.55 then
                                                        break
                                                end
                                                head.CFrame = head.CFrame * CFrame.Angles(0,0,math.rad(timer * 25/(Debounces.FPS/60)))
                                                timer = timer + 1/30/(Debounces.FPS/60)
                                        end
                                        head.CFrame = CFrame.new(head.CFrame.p,aimPos)
                                        local ray = Ray.new(head.CFrame.p,(aimPos - head.CFrame.p).unit * 999)
                                        local hit, pos = workspace:FindPartOnRay(ray,c)
                                        local dis = (head.CFrame.p - pos).magnitude
                                        local rayPart = Instance.new("Part",rayModel)
                                        rayPart.Material = "Neon"
                                        rayPart.FormFactor = "Custom"
                                        rayPart.BrickColor = BrickColor.new(1,1,1)
                                        rayPart.Anchored = true
                                        rayPart.CanCollide = false
                                        rayPart.Size = Vector3.new(7,7,dis + 400)
                                        local rayCFrame = CFrame.new(head.CFrame.p + (aimPos - head.CFrame.p).unit * (dis/2 + 200),head.CFrame.p + (aimPos - head.CFrame.p).unit * dis * 2)
                                        rayPart.CFrame = rayCFrame
                                        head:Destroy()
                                end)
                                wait()
                                local s = Instance.new("Sound",head)
                                s.Volume = 1
                                s.SoundId = "rbxassetid://332223043"
                                s:Play()
                                wait(.04)
                        end
                end
        end)

        uinps.InputBegan:connect(function(InputObj)
                if InputObj.KeyCode == Enum.KeyCode.E and Debounces.isAttacking == false and Debounces.isSprinting == false and Debounces.isPassive == true and Debounces.isTyping == false then
                        Debounces.isAttacking = true
                        local aimPos = c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0,0,-999)).p
                        local head = Instance.new("Part",c)
                        head.Size = Vector3.new(18,.2,18)
                        head.CanCollide = false
                        head.Anchored = true
                        head.CFrame = CFrame.new(c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0,0,-9)).p,aimPos)
                        head.Transparency = 1
                        for i = 1,2 do
                                local decal = Instance.new("Decal",head)
                                decal.Texture = "rbxassetid://323497117"
                                if i == 1 then
                                        decal.Face = Enum.NormalId.Top
                                else
                                        decal.Face = Enum.NormalId.Bottom
                                end
                        end
                        setLerp(.1)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
                                CFrame.new(Vector3.new(0, 1.499, -0.09)) * CFAngles(Vector3.new(-11.676, -0.001, -0.001));
                                CFrame.new(Vector3.new(-1.7, 0, 0)) * CFAngles(Vector3.new(-12.808, -28.88, -21.502));
                                CFrame.new(Vector3.new(1.699, 1.2, 0.599)) * CFAngles(Vector3.new(-146.606, 16.571, 13.928));
                                CFrame.new(Vector3.new(-0.501, -1.601, 0.6)) * CFAngles(Vector3.new(-60, 0, -0.001));
                                CFrame.new(Vector3.new(0.5, -1.4, -0.4)) * CFAngles(Vector3.new(-15.001, -15.001, 0));
                        })
                        spawn(function()
                                local timer = 0
                                while rs.RenderStepped:wait() do
                                        if timer >= 1.55/.8 then
                                                break
                                        end
                                        head.CFrame = head.CFrame * CFrame.Angles(0,0,math.rad(timer * 25/(Debounces.FPS/60)))
                                        timer = timer + 1/30/(Debounces.FPS/60)
                                end
                                head.CFrame = CFrame.new(head.CFrame.p,aimPos)
                                local ray = Ray.new(head.CFrame.p,(aimPos - head.CFrame.p).unit * 999)
                                local hit, pos = workspace:FindPartOnRay(ray,c)
                                local dis = (head.CFrame.p - pos).magnitude
                                local rayPart = Instance.new("Part",rayModel)
                                rayPart.Material = "Neon"
                                rayPart.FormFactor = "Custom"
                                rayPart.Name = "Punch"
                                rayPart.BrickColor = BrickColor.new(1,1,1)
                                rayPart.Anchored = true
                                rayPart.CanCollide = false
                                rayPart.Size = Vector3.new(28,28,dis + 400)
                                local rayCFrame = CFrame.new(head.CFrame.p + (aimPos - head.CFrame.p).unit * (dis/2 + 200),head.CFrame.p + (aimPos - head.CFrame.p).unit * dis * 2)
                                rayPart.CFrame = rayCFrame
                                head:Destroy()
                        end)
                        wait()
                        local s = Instance.new("Sound",head)
                        s.Volume = 1
                        s.SoundId = "rbxassetid://332223043"
                        s.Pitch = .8
                        s:Play()
                        wait(.75)
                        setLerp(.17)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -.5, 0)) * CFAngles(Vector3.new(-20, 15, 0));
                                CFrame.new(Vector3.new(0, 1.499, -0.09)) * CFAngles(Vector3.new(-11.676, 14.999, -0.001));
                                CFrame.new(Vector3.new(-1.7, 0, 0.2)) * CFAngles(Vector3.new(-33.928, -4.374, -38.76));
                                CFrame.new(Vector3.new(1.499, 0.4, -0.601)) * CFAngles(Vector3.new(74.335, 25.091, -6.155));
                                CFrame.new(Vector3.new(-0.501, -1.601, 0.6)) * CFAngles(Vector3.new(-45, 0, -0.001));
                                CFrame.new(Vector3.new(0.5, -1.8, -0.4)) * CFAngles(Vector3.new(-15, -15, 0));
                        })
                        wait(.5)
                        Debounces.isAttacking = false
                end
        end)
        
        reflect = function(d,n)
                local i, n = -1 * d.unit, n.unit
                local dot = n:Dot(i)
                return 2*dot*n - i
        end

        makeReflectionBeam = function(pos,look,isCrit)
                local ray = Ray.new(pos,look)
                local hit,hitpos,norm = workspace:FindPartOnRay(ray,c)
                local e = Instance.new("Part",rayModel)
                e.Anchored = true
                e.CanCollide = false
                e.BrickColor = BrickColor.new("White")
                e.Material = "Neon"
                e.FormFactor = "Custom"
                e.Size = Vector3.new(6,6,(pos - hitpos).magnitude)
                if isCrit == true then
                        e.Size = Vector3.new(16,16,(pos - hitpos).magnitude)
                        e.Name = "Punch"
                end
                e.CFrame = CFrame.new(pos + (hitpos - pos)/2, pos)
                local e = Instance.new("Sound",c)
                if isCrit == true then
                        e.Volume = .5
                else
                        e.Volume = .3
                        e.Pitch = 1.5
                end
                e.SoundId = "rbxassetid://200632875"
                e:Play()
                spawn(function()
                        wait(6)
                        e:Destroy()
                end)
                wait(.05)
                if hit ~= nil then
                        newDir = reflect(look.unit,norm,isCrit)
                        makeReflectionBeam(hitpos,newDir * 999,isCrit)
                end
        end

        uinps.InputBegan:connect(function(InputObject)
                if InputObject.KeyCode == Enum.KeyCode.Q and Debounces.isAttacking == false and Debounces.isSprinting == true and Debounces.isPassive == true and Debounces.isTyping == false then
                        local isLooping = true
                        uinps.InputEnded:connect(function(InputObject2)
                                if InputObject2.KeyCode == Enum.KeyCode.Q then
                                        isLooping = false
                                end
                        end)
                        while true do
                                if isLooping == false then
                                        break
                                end
                                Debounces.attackNumber = Debounces.attackNumber + 1
                                local aimPos = mouse.Hit.p
                                local head = Instance.new("Part",c)
                                head.Size = Vector3.new(12,.2,12)
                                head.CanCollide = false
                                head.Anchored = true
                                head.Transparency = 1
                                for i = 1,2 do
                                        local decal = Instance.new("Decal",head)
                                        decal.Texture = "rbxassetid://323497117"
                                        if i == 1 then
                                                decal.Face = Enum.NormalId.Top
                                        else
                                                decal.Face = Enum.NormalId.Bottom
                                        end
                                end
                                if Debounces.attackNumber%2 == 1 then
                                        head.CFrame = CFrame.new(c.Torso.CFrame:toWorldSpace(CFrame.new(8,8,.5)).p,aimPos)
                                else
                                        head.CFrame = CFrame.new(c.Torso.CFrame:toWorldSpace(CFrame.new(-8,8,.5)).p,aimPos)
                                end
                                spawn(function()
                                        local timer = 0
                                        while rs.RenderStepped:wait() do
                                                if timer >= 1.55 then
                                                        break
                                                end
                                                head.CFrame = head.CFrame * CFrame.Angles(0,0,math.rad(timer * 25/(Debounces.FPS/60)))
                                                timer = timer + 1/30/(Debounces.FPS/60)
                                        end
                                        head.CFrame = CFrame.new(head.CFrame.p,aimPos)
                                        head:Destroy()
                                        makeReflectionBeam(head.CFrame.p,(head.CFrame.p - aimPos).unit * -999,false)        
                                end)
                                
                                wait()
                                local s = Instance.new("Sound",head)
                                s.Volume = 1
                                s.SoundId = "rbxassetid://332223043"
                                s.Pitch = 1.02
                                s:Play()
                                wait(.2)
                        end
                end
        end)

        uinps.InputBegan:connect(function(InputObj)
                if InputObj.KeyCode == Enum.KeyCode.E and Debounces.isAttacking == false and Debounces.isSprinting == true and Debounces.isPassive == true and Debounces.isTyping == false then
                        Debounces.isAttacking = true
                        local aimPos = c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0,0,-999)).p
                        local head = Instance.new("Part",c)
                        head.Size = Vector3.new(18,.2,18)
                        head.CanCollide = false
                        head.Anchored = true
                        head.CFrame = CFrame.new(c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0,0,-9)).p,aimPos)
                        head.Transparency = 1
                        for i = 1,2 do
                                local decal = Instance.new("Decal",head)
                                decal.Texture = "rbxassetid://323497117"
                                if i == 1 then
                                        decal.Face = Enum.NormalId.Top
                                else
                                        decal.Face = Enum.NormalId.Bottom
                                end
                        end
                        setLerp(.1)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
                                CFrame.new(Vector3.new(0, 1.499, -0.09)) * CFAngles(Vector3.new(-11.676, -0.001, -0.001));
                                CFrame.new(Vector3.new(-1.7, 0, 0)) * CFAngles(Vector3.new(-12.808, -28.88, -21.502));
                                CFrame.new(Vector3.new(1.699, 1.2, 0.599)) * CFAngles(Vector3.new(-146.606, 16.571, 13.928));
                                CFrame.new(Vector3.new(-0.501, -1.601, 0.6)) * CFAngles(Vector3.new(-60, 0, -0.001));
                                CFrame.new(Vector3.new(0.5, -1.4, -0.4)) * CFAngles(Vector3.new(-15.001, -15.001, 0));
                        })
                        spawn(function()
                                local timer = 0
                                while rs.RenderStepped:wait() do
                                        if timer >= 1.55/.8 then
                                                break
                                        end
                                        head.CFrame = head.CFrame * CFrame.Angles(0,0,math.rad(timer * 25/(Debounces.FPS/60)))
                                        timer = timer + 1/30/(Debounces.FPS/60)
                                end
                                head.CFrame = CFrame.new(head.CFrame.p,aimPos)
                                head:Destroy()
                                makeReflectionBeam(head.CFrame.p,(head.CFrame.p - aimPos).unit * -999,true)
                        end)
                        wait()
                        local s = Instance.new("Sound",head)
                        s.Volume = 2
                        s.SoundId = "rbxassetid://332223043"
                        s.Pitch = .8
                        s:Play()
                        wait(.75)
                        setLerp(.17)
                        setJointCFrames({
                                CFrame.new(Vector3.new(0, -.5, 0)) * CFAngles(Vector3.new(-20, 15, 0));
                                CFrame.new(Vector3.new(0, 1.499, -0.09)) * CFAngles(Vector3.new(-11.676, 14.999, -0.001));
                                CFrame.new(Vector3.new(-1.7, 0, 0.2)) * CFAngles(Vector3.new(-33.928, -4.374, -38.76));
                                CFrame.new(Vector3.new(1.499, 0.4, -0.601)) * CFAngles(Vector3.new(74.335, 25.091, -6.155));
                                CFrame.new(Vector3.new(-0.501, -1.601, 0.6)) * CFAngles(Vector3.new(-45, 0, -0.001));
                                CFrame.new(Vector3.new(0.5, -1.8, -0.4)) * CFAngles(Vector3.new(-15, -15, 0));
                        })
                        wait(.5)
                        Debounces.isAttacking = false
                end
        end)

        uinps.InputBegan:connect(function(InputObj)
                if InputObj.KeyCode == Enum.KeyCode.Slash then
                        local finishEvent = nil
                        Debounces.isTyping = true
                        finishEvent = uinps.InputBegan:connect(function(InputObj)
                                if InputObj.KeyCode == Enum.KeyCode.Return or InputObj.UserInputType == Enum.UserInputType.MouseButton1 then
                                        Debounces.isTyping = false
                                        finishEvent:disconnect()
                                end
                        end)
                end
        end)

        uinps.InputBegan:connect(function(InputObj)
                if InputObj.KeyCode == Enum.KeyCode.LeftShift then
                        Debounces.isSprinting = true
                end
        end)

        uinps.InputEnded:connect(function(InputObj)
                if InputObj.KeyCode == Enum.KeyCode.LeftShift then
                        Debounces.isSprinting = false
                end
        end)

        rs.RenderStepped:connect(function()
                Debounces.FPS = 1/rs.RenderStepped:wait()
                local FPSLerp = AnimStat.lerpSpeed/(Debounces.FPS/60)
                if Debounces.isPassive == false then
                        fight:Pause()
                        sans:Resume()
                        efxBlock.Transparency = 1
                else
                        fight:Resume()
                        sans:Pause()
                        efxBlock.Transparency = 0
                end
                for i,v in pairs (rayModel:children()) do
                        if v.Transparency >= 1 then
                                v:Destroy()
                        else
                                v.CanCollide = true
                                local parts = v:GetTouchingParts()
                                v.CanCollide = false
                                for i = 1,#parts do
                                        if parts[i].Parent:FindFirstChild("Humanoid") and parts[i].Parent ~= c and v.Name ~= "Punch" then
                                                parts[i].Parent.Humanoid:TakeDamage(.5/(Debounces.FPS/60))
                                        elseif parts[i].Parent:FindFirstChild("Humanoid") and parts[i].Parent ~= c and v.Name == "Punch" then
                                                parts[i].Parent.Humanoid:TakeDamage(3.1/(Debounces.FPS/60))
                                        end
                                end
                                v.Size = v.Size + Vector3.new(1/(Debounces.FPS/60),1/(Debounces.FPS/60),0)
                                v.Transparency = v.Transparency + .05/(Debounces.FPS/60)
                        end
                end
                for i = 1,#Joints do
                        Joints[i].C0 = Joints[i].C0:lerp(JointTargets[i], FPSLerp)
                end
                light.Brightness = math.random(1,4)
        end)
--dont leak
--k33p it rare lolz

Head spin:

for X = 1, math.huge, 0.1 do
	wait()
	game.Workspace.polo1716.Torso.Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromAxisAngle(Vector3.new(0,1,0), X)
	game.Workspace.polo1716.Torso.Neck.C1 = CFrame.new(0,0,0)
end
-----------------------------------------------------------------------------------------------------------------
Freeze-on

p= game.Players:GetChildren()	
for i= 1, #p do	
if p[i]~= "shanethe13" then	
p[i].Character.Torso.Anchored = true	
end	
end
---------------------------------------------------
Freeze-off

p= game.Players:GetChildren()	
for i= 1, #p do	
if p[i]~= "shanethe13" then	
p[i].Character.Torso.Anchored = false	
end	
end
----------------------------------------------------------
Ghost

c= game.Players:GetChildren()	
for i= 1, #c do	
p= c[i].Character:GetChildren()	
for i= 1, #p do	
if p[i].className == "Part" then
p[i].Transparency = 0.7
end/hey

end
end
---------------------------------------------------------------
PRISON! 
 
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(0,500,0) p.Size = Vector3.new(50,0,50) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(25,501,0) p.Size = Vector3.new(0,50,50) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(-25,501,0) p.Size = Vector3.new(0,50,50) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(0,501,25) p.Size = Vector3.new(50,50,0) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(0,501,-25) p.Size = Vector3.new(50,50,0) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 


p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(0,525,0) p.Size = Vector3.new(50,0,50) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p= game.Players:GetChildren() 
for i= 1, #p do 
if p[i] ~= "cruckshank" then 
p[i].Character.Torso.CFrame = CFrame.new(0,515,0) 
end 
end 
------------------------------------------------------
Kill person

game.Workspace.name.Head:Remove()
-----------------------------------------------
Castle


p = Instance.new("Part")	p.Anchored = true	p.Position = Vector3.new(1,1.8,-40.5)	p.Size = Vector3.new(58,1.2,52)	p.Parent = game.Workspace	p.Locked = true	 p.BrickColor = BrickColor.new(38)	

p = Instance.new("Part")	p.Anchored = true	p.Position = Vector3.new(1,1.8,-5.5)	p.Size = Vector3.new(8,1.2,18)	p.Parent = game.Workspace	p.Locked = true	 p.BrickColor = BrickColor.new(38)	


p = Instance.new("Part")	p.Anchored = true	p.Position = Vector3.new(-15.5,9,-12.5)	p.Size = Vector3.new(25,15.6,4)	p.Parent = game.Workspace	p.Locked = true	 p.BrickColor = BrickColor.new(194)	


p = Instance.new("Part")	p.Anchored = true	p.Position = Vector3.new(17.5,9,-12.5)	p.Size = Vector3.new(25,15.6,4)	p.Parent = game.Workspace	p.Locked = true	 p.BrickColor = BrickColor.new(194)	

p = Instance.new("Part")	p.Anchored = true	p.Position = Vector3.new(1,27,-12.5)	p.Size = Vector3.new(58,20.4,4)	p.Parent = game.Workspace	p.Locked = true	 p.BrickColor = BrickColor.new(194)	

p = Instance.new("Part")	p.Anchored = true	p.Position = Vector3.new(-31,19.2,-40.5)	p.Size = Vector3.new(6,36,60)	p.Parent = game.Workspace	p.Locked = true	 p.BrickColor = BrickColor.new(194)	

p = Instance.new("Part")	p.Anchored = true	p.Position = Vector3.new(33,19.2,-40.5)	p.Size = Vector3.new(6,36,60)	p.Parent = game.Workspace	p.Locked = true	 p.BrickColor = BrickColor.new(194)	

p = Instance.new("Part")	p.Anchored = true	p.Position = Vector3.new(1,19.2,-68.5)	p.Size = Vector3.new(58,36,4)	p.Parent = game.Workspace	p.Locked = true	 p.BrickColor = BrickColor.new(194)	


p = Instance.new("Part")	p.Anchored = true	p.Position = Vector3.new(1,37.8,-40.5)	p.Size = Vector3.new(70,1.2,60)	p.Parent = game.Workspace	p.Locked = true	 p.BrickColor = BrickColor.new(194)	


p = Instance.new("SpawnLocation")	p.Anchored = true	p.Position = Vector3.new(1,1.8,20.5) p.Size = Vector3.new(8,1.2,6)	p.Parent = game.Workspace	p.Locked = true
------------------------------------------------------------
Deadly handshake

A = game.Workspace.polo1716:findFirstChild("Right Arm")
script.Parent = A
function OnTouched(hit)
human = hit.Parent.Humanoid
if hit ~= nil then
human.Health = 0
end
end
script.Parent.Touched:connect(OnTouched)
---------------------------------------------------
FireWorks


game.Lighting.TimeOfDay = "08,00,00" 
e = {} 

msg = Instance.new("Message") 
msg.Text = "Get ready for ic3w0lf589's awesome fireworks!" 
msg.Parent = game.Workspace 

p = game.Players:GetChildren() 
ch = game.Workspace:GetChildren() 
for i = 1, #p do 
for j = 1, #ch do 
if ch[j].Name == p[i].Name then 
ch[j]:MoveTo(Vector3.new(math.random(-500,-450),200,math.random(-50,50))) 
ch[j].Torso.Anchored = true 
end 
end 
end 

wait(3) 
msg:Remove() 

for n = 1, 10 do 
for t = 1, 2 do 
x = math.random(-100, 100) 
y = math.random(50,150) 
z = math.random(-100,100) 
e[t] = Instance.new("Explosion") 
e[t].Position = Vector3.new(x,y,z) 
e[t].BlastPressure = 100 
e[t].Parent = game.Workspace 
col = BrickColor.Random() 
for i = 1, 100 do 
b = Instance.new("Part") 
b.Size = Vector3.new(math.random(1,5), math.random(1,5), math.random(1,5)) 
b.BrickColor = col 
b.Name = "aBrick" 
b.Position = Vector3.new(x+math.random(-1,1), y+math.random(-1, 1), z+math.random(-1, 1)) 
b.Parent = game.Workspace 
b.Velocity = Vector3.new(math.random(-20,20), math.random(-5,200), math.random(-20,20))
end 
wait() 
end 
wait(5) 
end 
wait(2) 

p = game.Players:GetChildren() 
ch = game.Workspace:GetChildren() 
for i = 1, #p do 
for j = 1, #ch do 
if ch[j].Name == p[i].Name then 
ch[j]:MoveTo(Vector3.new(math.random(-50,50),10,math.random(-50,50))) 
ch[j].Torso.Anchored = false 
end 
end 
end 

ch = game.Workspace:GetChildren() 
for i = 1, #ch do 
if ch[i].Name == "aBrick" then 
ch[i]:Remove() 
end 
end 

game.Lighting.TimeOfDay = "12,00,00"
-----------------------------------------------
Clone scipt

while true do   --Starts up a While loop
wait(1)
model = script.Parent:clone()  --Right here, it creates a copy of game.Workspace.Model, and sets it as the variable "model"
script.Parent.Parent = nil  --This sets the game.Workspace.Model's parent to nothing, removing it from the game.
model.Parent = game.Workspace  --Sets the cloned object's Parent to the Workspace.
wait(30)  --Waits for 300 seconds.
end 
----------------------------------------------- 
Kick

game.Players.YOURnameHere!:Remove() -- >_> =P
-------------------------------------------
Gear

GetAsset = function(284)
        local Model = Game:GetService("InsertService"):LoadAsset(284)
        
        repeat
            wait(1)
        until
            Model ~= nil
        
        return Model:GetChildren()[1]
    end
    
    local Asset = GetAsset(284)
    Asset.Parent = Workspace
    -- This returns the actual ASSET, not the model it self. Normal InsertService returns a model.
--------------------------------------------
Terain editor

-- Bouyer the Destroyer

-- Remember, this is a script meant to be in a hopperbin.
-- If you dont know how to make a Hopperbin, consult the wiki.
-- If you are using this in Script Builder, say "help/Tool".

local MaxHeight = 100 -- The maximum height of whatever you make
local Distance = 25 -- Max distance away from mouse
local D_Increase = 5 -- Rate of increase per unit of distance
local Scale = 1 / 25 -- Drag D_Increase
local Text = "Press U and J to edit the terrain. Press Y and H to change the Distance."

local Hint = Instance.new("Hint")
local Mode = "Raise"
local Down = false

function GetParts(Root, Mouse)
	local Parts = Root:GetChildren()
	for X = 1, # Parts do
		if Parts[X].className == "Part" then
			Edit(Parts[X], Mouse)
		else
			GetParts(Parts[X], Mouse)
		end
	end
end

function Edit(Part, Mouse)
	if Part.Anchored == false or Part.Locked == true then
		return
	end
	local CF = Mouse.Hit
	if Mode == "Raise" then
		local Dist = (Vector3.new(CF.p.x,0,CF.p.z) - Vector3.new(Part.Position.x,0,Part.Position.z)).magnitude
		if Dist > Distance then
			return
		end
		local Inc = Distance - Dist
		Part.Size = Part.Size + Vector3.new(0,Inc * Scale,0)
		if Part.Size.y > MaxHeight then
			Part.Size = Vector3.new(Part.Size.x, MaxHeight, Part.size.z)
		end
		Part.CFrame = CFrame.new(Part.Position.x, Part.Size.y / 2, Part.Position.z)
	elseif Mode == "Lower" then
		local Dist = (Vector3.new(CF.p.x,0,CF.p.z) - Vector3.new(Part.Position.x,0,Part.Position.z)).magnitude
		if Dist > Distance then
			return
		end
		local Inc = Distance - Dist
		Part.Size = Part.Size - Vector3.new(0,Inc * Scale,0)
		Part.CFrame = CFrame.new(Part.Position.x, Part.Size.y / 2, Part.Position.z)
	end
end

function OnDown(Mouse)
	Down = true
	while Down do
		wait(.1)
		if Mouse.Target ~= nil then
			GetParts(game.Workspace, Mouse)
		end
	end
end

function OnPressed(Key)
	if Key == nil then
		return
	end
	if Key:lower() == "u" then
		Mode = "Raise"
		Hint.Text = "Mode: "..Mode
	elseif Key:lower() == "j" then
		Mode = "Lower"
		Hint.Text = "Mode: "..Mode
	elseif Key:lower() == "y" then
		Distance = Distance + D_Increase
		Hint.Text = "Range: "..Distance
	elseif Key:lower() == "h" then
		if Distance <= D_Increase then
			return
		end
		Distance = Distance - D_Increase
		Hint.Text = "Range: "..Distance
	end
end

function OnSelected(Mouse)
	Hint.Parent = game.Players.polo1716
	Hint.Text = Text
	Mouse.Button1Down:connect(function() OnDown(Mouse) end)
	Mouse.Button1Up:connect(function() Down = false end)
	Mouse.KeyDown:connect(function(Key) OnPressed(Key) end)
	script.Parent.Deselected:connect(function() Hint.Parent = nil end)
end

script.Parent.Selected:connect(OnSelected)
----------------------------------------
Hopperbin

local hop = Instance.new("HopperBin")
hop.Parent = game.Players.polo1716.Backpack
 
local function onClicked(mouse)
  print("Hopperbin clicked")
end
 
local function onKeyDown(key)
  print("Key",key,"was pressed")
end
 
local function onSelected(mouse)
  print("HopperBin selected")
  mouse.Button1Down:connect(function() onClicked(mouse) end)
  mouse.KeyDown:connect(onKeyDown)
end
 
hop.Selected:connect(onSelected)
------------------------------------------
Terrain plate gener

-- Bouyer the Destroyer

local Total = 1000 -- The number of bricks total you want the board to create.
local SpawnPos = Vector3.new(0,0.2,0)

local Brick = Instance.new("Part")
Brick.FormFactor = 2
Brick.Size = Vector3.new(10,0.4,10)
Brick.Anchored = true
Brick.BrickColor = BrickColor.Green()

local Pos = SpawnPos + Vector3.new(Brick.Size.x / 2,0,0)
local Model = game.Workspace

for X = 1, math.sqrt(Total) / 2 do
	local BPos = Pos + Vector3.new(0,0,Brick.Size.z / 2)
	for X = 1, math.sqrt(Total) / 2 do
		local Part = Brick:clone()
		Part.Parent = Model
		Part.CFrame = CFrame.new(BPos)
		BPos = BPos + Vector3.new(0,0,Brick.Size.z)
	end
	local BPos = Pos - Vector3.new(0,0,Brick.Size.z / 2)
	for X = 1, math.sqrt(Total) / 2 do
		local Part = Brick:clone()
		Part.Parent = Model
		Part.CFrame = CFrame.new(BPos)
		BPos = BPos - Vector3.new(0,0,Brick.Size.z)
	end
	Pos = Pos + Vector3.new(Brick.Size.x,0,0)
end
local Pos = SpawnPos - Vector3.new(Brick.Size.x / 2,0,0)
for X = 1, math.sqrt(Total) / 2 do
	local BPos = Pos + Vector3.new(0,0,Brick.Size.z / 2)
	for X = 1, math.sqrt(Total) / 2 do
		local Part = Brick:clone()
		Part.Parent = Model
		Part.CFrame = CFrame.new(BPos)
		BPos = BPos + Vector3.new(0,0,Brick.Size.z)
	end
	local BPos = Pos - Vector3.new(0,0,Brick.Size.z / 2)
	for X = 1, math.sqrt(Total) / 2 do
		local Part = Brick:clone()
		Part.Parent = Model
		Part.CFrame = CFrame.new(BPos)
		BPos = BPos - Vector3.new(0,0,Brick.Size.z)
	end
	Pos = Pos - Vector3.new(Brick.Size.x,0,0)
end
--------------------------------------------
Slave

p= game.Players:GetChildren()	
for i= 1, #p do	
p[i].Character.Name = "polo1716's Slave"	
end

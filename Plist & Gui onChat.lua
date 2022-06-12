--{{----------------------------------------------------------------mediafire----------------------------------------------------------------}}-- 
vip = game.Players.yfc 


function onChatted(msg) 
if msg == "Gui" then 
--this gui was created by yfc                 
--62 buttons                 
--2600+ lines                 
P = game.Players.yfc 
x = Instance.new("GuiMain") 
x.Name = "Gui"
x.Parent = P.PlayerGui


script.Parent = x 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "IT" 
z.Name = "Q0" 
z.Transparency = 0 
z.Position = UDim2.new(0, 979, 0, 575)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 50, 0, 25)--same as above 


function Q0() 
a = game:GetService("InsertService"):LoadAsset(36706176) 
a.Parent = game.Workspace 
a:MakeJoints() 
a:MoveTo(player.Character.Torso.Position) 
end 
script.Parent.Q0.MouseButton1Down:connect(Q0) 


z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "yfc's Plane" 
z.Name = "R0" 
z.Transparency = 0 
z.Position = UDim2.new(0, 1029, 0, 575)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 250, 0, 25)--same as above 


function R0() 
a = game:GetService("InsertService"):LoadAsset(36400140) 
a.Parent = x.Parent.Parent.Character
a:MakeJoints() 
end 
script.Parent.R0.MouseButton1Down:connect(R0) 



z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Gui" 
z.Name = "R1" 
z.Transparency = 0 
z.Position = UDim2.new(0, 979, 0, 600)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 50, 0, 25)--same as above 



function R1() 
z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Player Gui" 
z.Name = "lso" 
z.Transparency = 0 
z.Position = UDim2.new(0, 979, 0, 625)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function lso() 
z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Me yfc" 
z.Name = "els" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 125)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function els() 
while true do 
x.Parent.Parent.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=1327454" 
x.Parent.Parent.Character.Torso:Remove() 
end 
end 

script.Parent.els.MouseButton1Down:connect(els) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Me DrumDude280" 
z.Name = "eddj" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 125)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function eddj() 
while true do 
x.Parent.Parent.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=2131216" 
x.Parent.Parent.Character.Torso:Remove() 
end 
end 

script.Parent.eddj.MouseButton1Down:connect(eddj) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "FF On" 
z.Name = "lol" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 150)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function lol() 
local ff = Instance.new("ForceField") 
ff.Parent = x.Parent.Parent.Character 
end 

script.Parent.lol.MouseButton1Down:connect(lol) 


z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "FF Off" 
z.Name = "Geist" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 150)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function Geist() 
x.Parent.Parent.Character.ForceField:Remove() 
end 

script.Parent.Geist.MouseButton1Down:connect(Geist) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Invisible On" 
z.Name = "Gost" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 175)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function Gost() 
x.Parent.Parent.Character.Head.Transparency = 1
x.Parent.Parent.Character.Torso.Transparency = 1
x.Parent.Parent.Character["Left Arm"].Transparency = 1
x.Parent.Parent.Character["Right Arm"].Transparency = 1
x.Parent.Parent.Character["Left Leg"].Transparency = 1
x.Parent.Parent.Character["Right Leg"].Transparency = 1
end 

script.Parent.Gost.MouseButton1Down:connect(Gost) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Invisible Off" 
z.Name = "Giost" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 175)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function Giost() 
x.Parent.Parent.Character.Head.Transparency = 0
x.Parent.Parent.Character.Torso.Transparency = 0
x.Parent.Parent.Character["Left Arm"].Transparency = 0
x.Parent.Parent.Character["Right Arm"].Transparency = 0
x.Parent.Parent.Character["Left Leg"].Transparency = 0
x.Parent.Parent.Character["Right Leg"].Transparency = 0
end 

script.Parent.Giost.MouseButton1Down:connect(Giost) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Slime" 
z.Name = "Gaiost" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 200)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function Gaiost() 
x.Parent.Parent.Character.Head.BrickColor = BrickColor.new("Lime green")
x.Parent.Parent.Character.Torso.BrickColor = BrickColor.new("Lime green")
x.Parent.Parent.Character["Left Arm"].BrickColor = BrickColor.new("Lime green")
x.Parent.Parent.Character["Right Arm"].BrickColor = BrickColor.new("Lime green")
x.Parent.Parent.Character["Left Leg"].BrickColor = BrickColor.new("Lime green")
x.Parent.Parent.Character["Right Leg"].BrickColor = BrickColor.new("Lime green")
end 

script.Parent.Gaiost.MouseButton1Down:connect(Gaiost) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Reflect 1/3" 
z.Name = "Gaioste" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 200)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function Gaioste() 
x.Parent.Parent.Character.Head.Reflectance = 0.3
wait()
x.Parent.Parent.Character.Torso.Reflectance = 0.3
wait()
x.Parent.Parent.Character["Right Arm"].Reflectance = 0.3
wait()
x.Parent.Parent.Character["Left Arm"].Reflectance = 0.3
wait()
x.Parent.Parent.Character["Right Leg"].Reflectance = 0.3
wait()
x.Parent.Parent.Character["Left Leg"].Reflectance = 0.3
end 

script.Parent.Gaioste.MouseButton1Down:connect(Gaioste) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Reflect 2/3" 
z.Name = "Gaiostey" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 225)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function Gaiostey() 
x.Parent.Parent.Character.Head.Reflectance = 0.65
wait()
x.Parent.Parent.Character.Torso.Reflectance = 0.65
wait()
x.Parent.Parent.Character["Right Arm"].Reflectance = 0.65
wait()
x.Parent.Parent.Character["Left Arm"].Reflectance = 0.65
wait()
x.Parent.Parent.Character["Right Leg"].Reflectance = 0.65
wait()
x.Parent.Parent.Character["Left Leg"].Reflectance = 0.65
end 

script.Parent.Gaiostey.MouseButton1Down:connect(Gaiostey) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Reflect 3/3" 
z.Name = "Guaiostey" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 225)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function Guaiostey() 
x.Parent.Parent.Character.Head.Reflectance = 1
wait()
x.Parent.Parent.Character.Torso.Reflectance = 1
wait()
x.Parent.Parent.Character["Right Arm"].Reflectance = 1
wait()
x.Parent.Parent.Character["Left Arm"].Reflectance = 1
wait()
x.Parent.Parent.Character["Right Leg"].Reflectance = 1
wait()
x.Parent.Parent.Character["Left Leg"].Reflectance = 1
end 

script.Parent.Guaiostey.MouseButton1Down:connect(Guaiostey) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "health" 
z.Name = "healthy" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 325)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function healthy() 
x.Parent.Parent.Character.Humanoid.MaxHealth = math.huge
end 

script.Parent.healthy.MouseButton1Down:connect(healthy) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "suit" 
z.Name = "b" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 375)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function b() 
T = Instance.new("Tool")
T.Parent = x.Parent.Parent.Backpack
wait(1)
m = x.Parent.Parent.Character
m.Torso.CFrame = CFrame.new(m.Torso.Position + Vector3.new(0,0,0)) 
torso = m.Torso 
shield = Instance.new("Part") 
shield.Name = "Shield" 
shield.CFrame = torso.CFrame + Vector3.new(0,0.3,0) -- Moves the shield to your torso so you won't teleport when it welds 
shield.Size = Vector3.new(2, 2, 2) 
shield.formFactor = 0 
shield.BrickColor = BrickColor.new("Lime green")
shield.Parent = T 
shield.Locked = true 
shield.Transparency = 0.6 
shield.Reflectance = 0 
shield.Shape = "Ball" 
shield.CanCollide = true 
shield.Velocity = Vector3.new(0,0,5) 
local w = Instance.new("Weld") 
w.Part1 = torso 
w.Part0 = shield 
local C1 = torso.CFrame 
local C0 = torso.CFrame + Vector3.new(0,0,0) --change this vector to change the position of the shield, its inverted 
w.C1 = C1 
w.C0 = C0 
w.Parent = T.Parent.Parent.Character 




shield = Instance.new("Part") 
shield.Name = "Shield" 
shield.CFrame = torso.CFrame + Vector3.new(0,0.3,0) -- Moves the shield to your torso so you won't teleport when it welds 
shield.Size = Vector3.new(2, 2, 2) 
shield.formFactor = 0 
shield.BrickColor = BrickColor.new("Lime green")
shield.Parent = T 
shield.Locked = true 
shield.Transparency = 0.6 
shield.Reflectance = 0 
shield.Shape = "Ball" 
shield.CanCollide = true 
shield.Velocity = Vector3.new(0,0,5) 
local w = Instance.new("Weld") 
w.Part1 = torso 
w.Part0 = shield 
local C1 = torso.CFrame 
local C0 = torso.CFrame + Vector3.new(1.5,0,0) --change this vector to change the position of the shield, its inverted 
w.C1 = C1 
w.C0 = C0 
w.Parent = T.Parent.Parent.Character 




shield = Instance.new("Part") 
shield.Name = "Shield" 
shield.CFrame = torso.CFrame + Vector3.new(0,0.3,0) -- Moves the shield to your torso so you won't teleport when it welds 
shield.Size = Vector3.new(2, 2, 2) 
shield.formFactor = 0 
shield.BrickColor = BrickColor.new("Lime green")
shield.Parent = T 
shield.Locked = true 
shield.Transparency = 0.6 
shield.Reflectance = 0 
shield.Shape = "Ball" 
shield.CanCollide = true 
shield.Velocity = Vector3.new(0,0,5) 
local w = Instance.new("Weld") 
w.Part1 = torso 
w.Part0 = shield 
local C1 = torso.CFrame 
local C0 = torso.CFrame + Vector3.new(-1.5,0,0) --change this vector to change the position of the shield, its inverted 
w.C1 = C1 
w.C0 = C0 
w.Parent = T.Parent.Parent.Character 




shield = Instance.new("Part") 
shield.Name = "Shield" 
shield.CFrame = torso.CFrame + Vector3.new(0,0.3,0) -- Moves the shield to your torso so you won't teleport when it welds 
shield.Size = Vector3.new(2, 2, 2) 
shield.formFactor = 0 
shield.BrickColor = BrickColor.new("Lime green")
shield.Parent = T 
shield.Locked = true 
shield.Transparency = 0.6 
shield.Reflectance = 0 
shield.Shape = "Ball" 
shield.CanCollide = true 
shield.Velocity = Vector3.new(0,0,5) 
local w = Instance.new("Weld") 
w.Part1 = torso 
w.Part0 = shield 
local C1 = torso.CFrame 
local C0 = torso.CFrame + Vector3.new(0.5,2,0) --change this vector to change the position of the shield, its inverted 
w.C1 = C1 
w.C0 = C0 
w.Parent = T.Parent.Parent.Character 




shield = Instance.new("Part") 
shield.Name = "Shield" 
shield.CFrame = torso.CFrame + Vector3.new(0,0.3,0) -- Moves the shield to your torso so you won't teleport when it welds 
shield.Size = Vector3.new(2, 2, 2) 
shield.formFactor = 0 
shield.BrickColor = BrickColor.new("Lime green")
shield.Parent = T 
shield.Locked = true 
shield.Transparency = 0.6 
shield.Reflectance = 0 
shield.Shape = "Ball" 
shield.CanCollide = true
shield.Velocity = Vector3.new(0,0,5) 
local w = Instance.new("Weld") 
w.Part1 = torso 
w.Part0 = shield 
local C1 = torso.CFrame 
local C0 = torso.CFrame + Vector3.new(-0.5,2,0) --change this vector to change the position of the shield, its inverted 
w.C1 = C1 
w.C0 = C0 
w.Parent = T.Parent.Parent.Character 

end 

script.Parent.b.MouseButton1Down:connect(b) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Norm Speed" 
z.Name = "ba" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 250)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function ba() 
x.Parent.Parent.Character.Humanoid.WalkSpeed = 18
end 

script.Parent.ba.MouseButton1Down:connect(ba) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "50 Speed" 
z.Name = "bal" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 250)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function bal() 
x.Parent.Parent.Character.Humanoid.WalkSpeed = 50
end 

script.Parent.bal.MouseButton1Down:connect(bal) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "75 Speed" 
z.Name = "ball" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 275)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function ball() 
x.Parent.Parent.Character.Humanoid.WalkSpeed = 75
end 

script.Parent.ball.MouseButton1Down:connect(ball) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "100 Speed" 
z.Name = "balls" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 275)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function balls() 
x.Parent.Parent.Character.Humanoid.WalkSpeed = 100
end 

script.Parent.balls.MouseButton1Down:connect(balls) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "car" 
z.Name = "ballis" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 300)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function ballis() 
mod=Instance.new("Model") mod.Name="MarCompile" mod.Parent=workspace.Base o=Instance.new("Geometry") o["Name"]="No samurai plzzz" o=Instance.new("Model") o["Name"]="Deth 2 teh samurai!" o=Instance.new("Script") o["Name"]="Kill tem!" o=Instance.new("StockSound") o["Name"]="0mbyrb6" o=Instance.new("Timer") o["Name"]="5p7nta9" o=Instance.new("Timer") o["Name"]="szj3xvj4q" o=Instance.new("Script") o["Name"]="join teh moovment!" o=Instance.new("StockSound") o["Name"]="5hsppzvl" o=Instance.new("Timer") o["Name"]="8bcmks" o=Instance.new("Timer") o["Name"]="05igq" o=Instance.new("StockSound") o["Name"]="x2mdg" o=Instance.new("Timer") o["Name"]="ah32" o=Instance.new("Timer") o["Name"]="v2p30esaa" o=Instance.new("StockSound") o["Name"]="tefqwy3he" o=Instance.new("Timer") o["Name"]="m3f6ebg" o=Instance.new("Timer") o["Name"]="6qhwuwpa5" o=Instance.new("Geometry") o["Name"]="No samurai plzzz" o=Instance.new("Model") o["Name"]="Deth 2 teh samurai!" o=Instance.new("Script") o["Name"]="Kill tem!" o=Instance.new("StockSound") o["Name"]="h36zpz" o=Instance.new("Script") o["Name"]="join teh moovment!" o=Instance.new("StockSound") o["Name"]="qkla" o=Instance.new("StockSound") o["Name"]="nfmrln" o=Instance.new("StockSound") o["Name"]="itaft" o=Instance.new("Model") o["Name"]="Car2" o=Instance.new("Part") o["Name"]="Right Front" o["Reflectance"]=0 o["Transparency"]=0 o["CFrame"]=CFrame.new(68.3314056, 8.88359356, 67.7160339, -0.00185816165, 0.959231794, -0.28261435, 0.00277126231, 0.282618701, 0.959228337, 0.999994457, 0.000999214826, -0.00318342075) o["BrickColor"]=BrickColor.new("Really black") o["TopSurface"]=Enum.SurfaceType.Smooth o["BottomSurface"]=Enum.SurfaceType.Smooth o["LeftSurface"]=Enum.SurfaceType.Hinge o["RightSurface"]=Enum.SurfaceType.Smooth o["FrontSurface"]=Enum.SurfaceType.Smooth o["BackSurface"]=Enum.SurfaceType.Smooth o["Material"]=Enum.Material.Plastic o["Size"]=Vector3.new(3, 3, 3) o["Shape"]=Enum.PartType.Cylinder o["Anchored"]=false o["Locked"]=false o.Parent=mod o:makeJoints() o=Instance.new("StockSound") o["Name"]="y398sd" o=Instance.new("Weld") o["Name"]="OH SNAP YOU GOT INFECTED XD XD XD" o=Instance.new("Script") o["Name"]="Wormed" o=Instance.new("NumberValue") o["Name"]="vic" o=Instance.new("StockSound") o["Name"]="u56w" o=Instance.new("StockSound") o["Name"]="gvzvm" o=Instance.new("Part") o["Name"]="Right Rear" o["Reflectance"]=0 o["Transparency"]=0 o["CFrame"]=CFrame.new(54.3314362, 8.88336277, 67.6925583, -0.00182748865, 0.437931478, 0.899006546, 0.00295142224, -0.899001777, 0.437935174, 0.99999404, 0.00345364655, 0.000350311224) o["BrickColor"]=BrickColor.new("Really black") o["TopSurface"]=Enum.SurfaceType.Smooth o["BottomSurface"]=Enum.SurfaceType.Smooth o["LeftSurface"]=Enum.SurfaceType.Hinge o["RightSurface"]=Enum.SurfaceType.Smooth o["FrontSurface"]=Enum.SurfaceType.Smooth o["BackSurface"]=Enum.SurfaceType.Smooth o["Material"]=Enum.Material.Plastic o["Size"]=Vector3.new(3, 3, 3) o["Shape"]=Enum.PartType.Cylinder o["Anchored"]=false o["Locked"]=false o.Parent=mod o:makeJoints() o=Instance.new("StockSound") o["Name"]="c6ouqz" o=Instance.new("Weld") o["Name"]="OH SNAP YOU GOT INFECTED XD XD XD" o=Instance.new("Script") o["Name"]="Wormed" o=Instance.new("NumberValue") o["Name"]="vic" o=Instance.new("StockSound") o["Name"]="u56w" o=Instance.new("StockSound") o["Name"]="gvzvm" o=Instance.new("Part") o["Name"]="Part" o["Reflectance"]=0 o["Transparency"]=0 o["CFrame"]=CFrame.new(61.3407936, 9.37712765, 62.2044754, -0.00168553845, -3.84404048e-005, -0.999998569, 1.16818692e-005, 1, -3.84601517e-005, 0.999998569, -1.17466798e-005, -0.00168553798) o["BrickColor"]=BrickColor.new("Really red") o["TopSurface"]=Enum.SurfaceType.Studs o["BottomSurface"]=Enum.SurfaceType.Inlet o["LeftSurface"]=Enum.SurfaceType.Smooth o["RightSurface"]=Enum.SurfaceType.Smooth o["FrontSurface"]=Enum.SurfaceType.Smooth o["BackSurface"]=Enum.SurfaceType.Weld o["Material"]=Enum.Material.Plastic o["Size"]=Vector3.new(8, 2.4000001, 17) o["Shape"]=Enum.PartType.Block o["Anchored"]=false o["Locked"]=false o.Parent=mod o:makeJoints() o=Instance.new("StockSound") o["Name"]="8b2ksh" o=Instance.new("Weld") o["Name"]="OH SNAP YOU GOT INFECTED XD XD XD" o=Instance.new("Script") o["Name"]="Wormed" o=Instance.new("NumberValue") o["Name"]="vic" o=Instance.new("StockSound") o["Name"]="u56w" o=Instance.new("StockSound") o["Name"]="gvzvm" o=Instance.new("VelocityMotor") o["Name"]="4D Being" o=Instance.new("VelocityMotor") o["Name"]="4D Being" o=Instance.new("Script") o["Name"]="Script" o=Instance.new("Model") o["Name"]="4D Being" o=Instance.new("Script") o["Name"]="Wildfire" o=Instance.new("Geometry") o["Name"]="No samurai plzzz" o=Instance.new("Model") o["Name"]="Deth 2 teh samurai!" o=Instance.new("Script") o["Name"]="Kill tem!" o=Instance.new("StockSound") o["Name"]="h36zpz" o=Instance.new("Script") o["Name"]="join teh moovment!" o=Instance.new("StockSound") o["Name"]="qkla" o=Instance.new("StockSound") o["Name"]="nfmrln" o=Instance.new("StockSound") o["Name"]="itaft" o=Instance.new("Part") o["Name"]="Left Rear" o["Reflectance"]=0 o["Transparency"]=0 o["CFrame"]=CFrame.new(54.350235, 8.88327503, 56.6924706, -0.00201655994, 0.916468918, 0.400100648, -0.00298607233, -0.400105149, 0.916464269, 0.999993443, 0.000653433497, 0.00354355993) o["BrickColor"]=BrickColor.new("Really black") o["TopSurface"]=Enum.SurfaceType.Smooth o["BottomSurface"]=Enum.SurfaceType.Smooth o["LeftSurface"]=Enum.SurfaceType.Smooth o["RightSurface"]=Enum.SurfaceType.Hinge o["FrontSurface"]=Enum.SurfaceType.Smooth o["BackSurface"]=Enum.SurfaceType.Smooth o["Material"]=Enum.Material.Plastic o["Size"]=Vector3.new(3, 3, 3) o["Shape"]=Enum.PartType.Cylinder o["Anchored"]=false o["Locked"]=false o.Parent=mod o:makeJoints() o=Instance.new("StockSound") o["Name"]="281hws43" o=Instance.new("Weld") o["Name"]="OH SNAP YOU GOT INFECTED XD XD XD" o=Instance.new("Script") o["Name"]="Wormed" o=Instance.new("NumberValue") o["Name"]="vic" o=Instance.new("StockSound") o["Name"]="u56w" o=Instance.new("StockSound") o["Name"]="gvzvm" o=Instance.new("Part") o["Name"]="Left Front" o["Reflectance"]=0 o["Transparency"]=0 o["CFrame"]=CFrame.new(68.349823, 8.88352203, 56.7159004, -0.00144452683, 0.839959204, 0.542647541, -0.00285279844, -0.542649269, 0.839954436, 0.999994814, -0.000334673445, 0.00318018557) o["BrickColor"]=BrickColor.new("Really black") o["TopSurface"]=Enum.SurfaceType.Smooth o["BottomSurface"]=Enum.SurfaceType.Smooth o["LeftSurface"]=Enum.SurfaceType.Smooth o["RightSurface"]=Enum.SurfaceType.Hinge o["FrontSurface"]=Enum.SurfaceType.Smooth o["BackSurface"]=Enum.SurfaceType.Smooth o["Material"]=Enum.Material.Plastic o["Size"]=Vector3.new(3, 3, 3) o["Shape"]=Enum.PartType.Cylinder o["Anchored"]=false o["Locked"]=false o.Parent=mod o:makeJoints() o=Instance.new("StockSound") o["Name"]="k2n5e8c" o=Instance.new("Weld") o["Name"]="OH SNAP YOU GOT INFECTED XD XD XD" o=Instance.new("Script") o["Name"]="Wormed" o=Instance.new("NumberValue") o["Name"]="vic" o=Instance.new("StockSound") o["Name"]="u56w" o=Instance.new("StockSound") o["Name"]="gvzvm" o=Instance.new("VehicleSeat") o["Name"]="VehicleSeat" o["Reflectance"]=0 o["Transparency"]=0 o["CFrame"]=CFrame.new(55.8407364, 11.0769157, 62.1951866, -0.00168553845, -3.84404048e-005, -0.999998569, 1.16818692e-005, 1, -3.84601517e-005, 0.999998569, -1.17466798e-005, -0.00168553798) o["BrickColor"]=BrickColor.new("Really black") o["TopSurface"]=Enum.SurfaceType.Universal o["BottomSurface"]=Enum.SurfaceType.Weld o["LeftSurface"]=Enum.SurfaceType.Smooth o["RightSurface"]=Enum.SurfaceType.Smooth o["FrontSurface"]=Enum.SurfaceType.Smooth o["BackSurface"]=Enum.SurfaceType.Smooth o["Material"]=Enum.Material.Plastic o["Size"]=Vector3.new(4, 1, 2) o["Anchored"]=false o["Locked"]=false o["MaxSpeed"]=50 o["Torque"]=10 o["TurnSpeed"]=1 o.Parent=mod o:makeJoints() o=Instance.new("StockSound") o["Name"]="9vssb36tj" o=Instance.new("VelocityMotor") o["Name"]="4D Being" o=Instance.new("VelocityMotor") o["Name"]="4D Being" o=Instance.new("VelocityMotor") o["Name"]="4D Being" o=Instance.new("Script") o["Name"]="Script" o=Instance.new("Model") o["Name"]="4D Being" o=Instance.new("Script") o["Name"]="Wildfire" o=Instance.new("VelocityMotor") o["Name"]="4D Being" o=Instance.new("VelocityMotor") o["Name"]="4D Being" o=Instance.new("Script") o["Name"]="Script" o=Instance.new("Model") o["Name"]="4D Being" o=Instance.new("Script") o["Name"]="Wildfire" o=Instance.new("Camera") o["Name"]="Camera" o=Instance.new("Script") o["Name"]="Compiler" 
end 

script.Parent.ballis.MouseButton1Down:connect(ballis) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Rem Cars" 
z.Name = "ballies" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 300)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function ballies() 
game.Workspace.Base.MarCompile:Remove() wait() game.Workspace.Base.MarCompile:Remove() wait() game.Workspace.Base.MarCompile:Remove() wait() game.Workspace.Base.MarCompile:Remove() wait() game.Workspace.Base.MarCompile:Remove() wait() 
end 

script.Parent.ballies.MouseButton1Down:connect(ballies) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Reset" 
z.Name = "ballieyys" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 325)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function ballieyys() 
x.Parent.Parent.Character.Head:Remove()
end 

script.Parent.ballieyys.MouseButton1Down:connect(ballieyys) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Remove Model" 
z.Name = "balliess" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 350)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 




function balliess() 
script.Parent = x.Parent.Parent.Character.Head
function onTouched(part)
 local h = part.Parent
 if h~=nil then 
  wait()
  h:Remove()
 end
end
script.Parent.Touched:connect(onTouched)

end 
script.Parent.balliess.MouseButton1Down:connect(balliess) 






z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "tele" 
z.Name = "ballieyysr" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 350)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function ballieyysr() 
x.Parent.Parent.Character.Torso.CFrame = game.Workspace.Base.CFrame + Vector3.new(0, 3.5, 0) 
end 

script.Parent.ballieyysr.MouseButton1Down:connect(ballieyysr) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Kill All" 
z.Name = "buallieyys" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 375)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function buallieyys() 
game.Workspace:BreakJoints()
end 

script.Parent.buallieyys.MouseButton1Down:connect(buallieyys) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Copy Limbs" 
z.Name = "K" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 400)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function K() 
H = x.Parent.Parent.Character.Head
T = x.Parent.Parent.Character.Torso
RA = x.Parent.Parent.Character["Right Arm"]
LA = x.Parent.Parent.Character["Left Arm"]
RL = x.Parent.Parent.Character["Right Leg"]
LL = x.Parent.Parent.Character["Left Leg"]
HC = H:Clone()
TC = T:Clone()
RAC = RA:Clone()
LAC = LA:Clone()
RLC = RL:Clone()
LLC = LL:Clone()
HC.Parent = x.Parent
TC.Parent = x.Parent
RAC.Parent = x.Parent
LAC.Parent = x.Parent
RLC.Parent = x.Parent
LLC.Parent = x.Parent
end 

script.Parent.K.MouseButton1Down:connect(K) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Paste Limbs" 
z.Name = "KO" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 400)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function KO() 
H = x.Parent.Head
T = x.Parent.Torso
RA = x.Parent["Right Arm"]
LA = x.Parent["Left Arm"]
RL = x.Parent["Right Leg"]
LL = x.Parent["Left Leg"]
H.Anchored = true
T.Anchored = true
RA.Anchored = true
LA.Anchored = true
RL.Anchored = true
LL.Anchored = true
H.CanCollide = true
T.CanCollide = true
RA.CanCollide = true
LA.CanCollide = true
RL.CanCollide = true
LL.CanCollide = true
HC.Parent = x.Parent.Parent.Character
TC.Parent = x.Parent.Parent.Character
RAC.Parent = x.Parent.Parent.Character
LAC.Parent = x.Parent.Parent.Character
RLC.Parent = x.Parent.Parent.Character
LLC.Parent = x.Parent.Parent.Character
end 

script.Parent.KO.MouseButton1Down:connect(KO) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Anchor Limbs" 
z.Name = "KI" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 425)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function KI() 
H = x.Parent.Parent.Character.Head
T = x.Parent.Parent.Character.Torso
RA = x.Parent.Parent.Character["Right Arm"]
LA = x.Parent.Parent.Character["Left Arm"]
RL = x.Parent.Parent.Character["Right Leg"]
LL = x.Parent.Parent.Character["Left Leg"]
H.Anchored = true
T.Anchored = true
RA.Anchored = true
LA.Anchored = true
RL.Anchored = true
LL.Anchored = true
end 

script.Parent.KI.MouseButton1Down:connect(KI) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "UnAnchor Limbs" 
z.Name = "KIL" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 425)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function KIL() 
H = x.Parent.Parent.Character.Head
T = x.Parent.Parent.Character.Torso
RA = x.Parent.Parent.Character["Right Arm"]
LA = x.Parent.Parent.Character["Left Arm"]
RL = x.Parent.Parent.Character["Right Leg"]
LL = x.Parent.Parent.Character["Left Leg"]
H.Anchored = false
T.Anchored = false
RA.Anchored = false
LA.Anchored = false
RL.Anchored = false
LL.Anchored = false
end 

script.Parent.KIL.MouseButton1Down:connect(KIL) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "CanCollide Limbs" 
z.Name = "KILL" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 450)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function KILL() 
H = x.Parent.Parent.Character.Head
T = x.Parent.Parent.Character.Torso
RA = x.Parent.Parent.Character["Right Arm"]
LA = x.Parent.Parent.Character["Left Arm"]
RL = x.Parent.Parent.Character["Right Leg"]
LL = x.Parent.Parent.Character["Left Leg"]
H.Cancollide = true
T.Cancollide = true
RA.Cancollide = true
LA.Cancollide = true
RL.Cancollide = true
LL.Cancollide = true
end 

script.Parent.KI.MouseButton1Down:connect(KI) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "UnCanCollide Limbs" 
z.Name = "KILLE" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 450)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function KILLE() 
H = x.Parent.Parent.Character.Head
T = x.Parent.Parent.Character.Torso
RA = x.Parent.Parent.Character["Right Arm"]
LA = x.Parent.Parent.Character["Left Arm"]
RL = x.Parent.Parent.Character["Right Leg"]
LL = x.Parent.Parent.Character["Left Leg"]
H.Cancollide = false
T.Cancollide = false
RA.Cancollide = false
LA.Cancollide = false
RL.Cancollide = false
LL.Cancollide = false
end 

script.Parent.KILLE.MouseButton1Down:connect(KILLE) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Min Players" 
z.Name = "KILLER" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 475)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function KILLER() 
game.Players.MaxPlayers = 6
end 

script.Parent.KILLER.MouseButton1Down:connect(KILLER) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Max Players" 
z.Name = "KILLERK" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 475)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function KILLERK() 
game.Players.MaxPlayers = 20
end 

script.Parent.KILLERK.MouseButton1Down:connect(KILLERK) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Paint" 
z.Name = "KILLERKY" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 500)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function KILLERKY() 
x.Parent.Parent.Character.Torso.BrickColor = BrickColor.random()
x.Parent.Parent.Character.Head.BrickColor = BrickColor.random()
x.Parent.Parent.Character["Right Arm"].BrickColor = BrickColor.random()
x.Parent.Parent.Character["Left Arm"].BrickColor = x.Parent.Parent.Character["Right Arm"].BrickColor
x.Parent.Parent.Character["Right Leg"].BrickColor = BrickColor.random()
x.Parent.Parent.Character["Left Leg"].BrickColor = x.Parent.Parent.Character["Right Leg"].BrickColor
wait()
p = game.Players:GetChildren() 
for i= 1, #p 
do p[i].Character.Torso.BrickColor = x.Parent.Parent.Character.Torso.BrickColor
p[i].Character.Head.BrickColor = x.Parent.Parent.Character.Head.BrickColor
p[i].Character["Right Arm"].BrickColor = x.Parent.Parent.Character["Right Arm"].BrickColor
p[i].Character["Left Arm"].BrickColor = x.Parent.Parent.Character["Left Arm"].BrickColor
p[i].Character["Right Leg"].BrickColor = x.Parent.Parent.Character["Right Leg"].BrickColor
p[i].Character["Left Leg"].BrickColor = x.Parent.Parent.Character["Left Leg"].BrickColor
end 
end 
script.Parent.KILLERKY.MouseButton1Down:connect(KILLERKY) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Remove All" 
z.Name = "KILLERKYLu" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 500)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function KILLERKYLu() 
p = game.Players:GetChidren() 
i=1,#p do 
p[i]:Remove() 
end 
end 
script.Parent.KILLERKYLu.MouseButton1Down:connect(KILLERKYLu) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Kill On Touch" 
z.Name = "KILLERKYLE" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 525)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function KILLERKYLE() 
script.Parent = x.Parent.Parent.Character.Head
function onTouched(part)
 local h = part
 if h~=nil then 
  wait()
  h:Remove()
 end
end
script.Parent.Touched:connect(onTouched)

end 
script.Parent.KILLERKYLE.MouseButton1Down:connect(KILLERKYLE) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Anti-Lag" 
z.Name = "KILLERKYLES" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 525)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function KILLERKYLES() 
mx = game.Debris
mx2 = game.Debris.MaxItems

if (mx.MaxItems > 100) then
 mx.MaxItems = mx2*.75
end

end

script.Parent.KILLERKYLES.MouseButton1Down:connect(KILLERKYLES) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Path" 
z.Name = "KILLERKYLESY" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 550)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function KILLERKYLESY() 
pm = Instance.new("Part") 
pm.Size = Vector3.new(25, 2.4, 25) 
pm.Position = Vector3.new(0, 1, 0) 
pm.Parent = x.Parent.Parent.Character.Torso 
pm.Anchored = true 
pm.BrickColor = BrickColor.new("Really black")  
pm.Name = "Ascil" 
while true do wait(0.00001)
pm.CFrame = pm.Parent.CFrame+Vector3.new(0, -4.1, 0) 
end 
end 
script.Parent.KILLERKYLESY.MouseButton1Down:connect(KILLERKYLESY) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Path Addons" 
z.Name = "KILLERKYLESYI" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 550)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function KILLERKYLESYI() 
mesh = Instance.new("CylinderMesh") 
mesh.Parent = x.Parent.Parent.Character.Torso.Ascil 
end 
script.Parent.KILLERKYLESYI.MouseButton1Down:connect(KILLERKYLESYI) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "SB" 
z.Name = "KILLERKYLESYIE" 
z.Transparency = 0 
z.Position = UDim2.new(0, 25, 0, 175)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 25, 0, 25)--same as above 



function KILLERKYLESYIE() 
local done = false

function showHM(type,msg,parent,name)
 local M  = Instance.new(type)
 M.Name = name
 M.Text = msg
 M.Parent = parent
end

function noHM(parent,name)
 local M = parent:findFirstChild(name)
 if (M == nil) then return end
 M:remove()
end

function addtoSource(source, text)
 source = (source ..text.. "\r")
 return source
end

function helpPlayer(player)
 showHM("Hint","say \"create/\" followed by the name of script to make a script.",player,"HelpMsg")
 wait(3.5)
 noHM(player,"HelpMsg")
 showHM("Hint","say \"edit/\" followed by the name again to edit the scripts code.",player,"HelpMsg")
 wait(3.5)
 noHM(player,"HelpMsg")
 showHM("Hint","When your done writing the script, say \"exit/.\"",player,"HelpMsg")
 wait(3)
 noHM(player,"HelpMsg")
 showHM("Hint","Then \"run/\" followed by the name to run it.",player,"HelpMsg")
 wait(3.5)
 noHM(player,"HelpMsg")
 showHM("Hint","If you don't like your script say \"remove/\" followed by the name to remove it.",player,"HelpMsg")
 wait(3.5)
 noHM(player,"HelpMsg")
end

function getScript(call,caller)
 if (call == "get/DebugMessages") then
  S = Instance.new("Script")
  S.Name = "DebugMessages"
  S.Source = [[-- No Workspace Messages
M = game.Workspace:GetChildren()
for i=1, # M do
 if (M[i].className == "Message") or (M[i].className == "Hint") then
  M[i]:remove()
 end
end
-- No Player Messages
P = game.Players:GetChildren()
for i=1, # P do
 PM = P[i]:GetChildren()
 for i=1, # PM do
  if (PM[i].className == "Message") or (PM[i].className == "Hint") then
   PM[i]:remove()
  end
 end
end ]]
  S.Parent = game.Workspace
  showHM("Message","No Messages!",speaker,"GetMsg")
  wait(0.8)
  noHM(caller,"GetMsg")
 end
end

function onChatted(msg,recipient,speaker)
if speaker.Name ~= "Kuteboy" then return end
 done = false

 ---- Help Files
 if (msg == "help/") and (done == false) then
  done = true
  helpPlayer(speaker)
 end
 ----

 ---- Get Commands
 if (msg == "get/DebugMessages") and (done == false) then
  done = true
  getScript("get/DebugMessages")
 end
 ----

 ---- Script Builder Commands
 if (string.sub(msg,1,7) == "create/") and (done == false) then
  done = true
  local editing = speaker:findFirstChild("Editing")
  if (editing ~= nil) then return end
  script = game.Workspace:findFirstChild(string.sub(msg,8))
  if (script ~= nil) then
   if (script.className == "Script") then
    showHM("Hint","'"..string.sub(msg,8).."' has already been made.",speaker,"NO!")
    wait(0.8)
    noHM(speaker,"NO!")
   end
  end
  if (script == nil) then
   local S = Instance.new("Script")
   S.Source = ""
   S.Name = string.sub(msg,8)
   S.Disabled = true
   S.Parent = game.Workspace
   showHM("Message","'"..string.sub(msg,8).."' Created",speaker,"Created")
   wait(0.8)
   noHM(speaker,"Created")
  end
 end

 if (string.sub(msg,1,5) == "edit/") and (done == false) then
  done = true
  local S = game.Workspace:findFirstChild(string.sub(msg,6))
  if (S ~= nil) then
   if (S.className == "Script") then
    local editnil = S:findFirstChild("Editing")
    if (editnil == nil) then
     local editing = speaker:findFirstChild("Editing")
     if (editing ~= nil) then return end
     local editing1 = Instance.new("StringValue")
     editing1.Name = "Editing"
     editing1.Value = speaker.Name
     editing1.Parent = S
     local editing2 = Instance.new("StringValue")
     editing2.Name = "Editing"
     editing2.Parent = speaker
     editing2.Value = S.Name
     showHM("Hint","Now in Edit Mode | Whatever you say shall be added to the script | say 'exit/' to exit",speaker,"EditMsg")
     else
     showHM("Hint",editnil.Value.. " is already editing it!",speaker,"NoEdit")
     wait(0.8)
     noHM(speaker,"NoEdit")
    end
   end
  end
 end

 if (msg == "exit/") and (done == false) then
  done = true
  local editing1 = speaker:findFirstChild("Editing")
  if (editing1 == nil) then return end
  local S = game.Workspace:findFirstChild(editing1.Value)
  if (S ~= nil) then
   if (S.className == "Script") then
    local editing2 = S:findFirstChild("Editing")
    if (editing2 == nil) then return end
    editing1:remove()
    editing2:remove()
    noHM(speaker,"EditMsg")
    showHM("Hint","Stopped Editing '"..S.Name.."'",speaker,"Exit")
    wait(0.8)
    noHM(speaker,"Exit")
   end
  end
 end

 if (string.sub(msg,1,4) == "run/") and (done == false) then
  done = true
  local S = game.Workspace:findFirstChild(string.sub(msg,5))
  if (S ~= nil) then
   if (S.className == "Script") then
   script = S:clone()
   script.Disabled = false
   script.Parent = game.Workspace
   S:remove()
   end
  end
 end

 if (string.sub(msg,1,7) == "remove/") and (done == false) then
  done = true
  local S = game.Workspace:findFirstChild(string.sub(msg,8))
  if (S ~= nil) then
   if (S.className == "Script") then
    S:remove()
    showHM("Message","Removed '" ..S.Name.. "'",speaker,"Removal")
    wait(0.8)
    noHM(speaker,"Removal")
   end
  end
 end
 if (done == false) then -- Adding Code to Script
  done = true
  local editing1 = speaker:findFirstChild("Editing")
  if (editing1 == nil) then return end
  local S = game.Workspace:findFirstChild(editing1.Value)
  if (S ~= nil) then
   if (S.className == "Script") then
    local editing2 = S:findFirstChild("Editing")
    if (editing2 == nil) then return end
    S.Source = addtoSource(S.Source,msg)
    showHM("Message","Added",speaker,"Addition")
    wait(0.5)
    noHM(speaker,"Addition")
   end
  end
 end
 ----

end

---- After Reset Connecting
player = game.Players:GetChildren()
for i=1, # player do
 player[i].Chatted:connect(function(msg,recipient) onChatted(msg,recipient,player[i]) end)
end
----

function startPlayer(newPlayer)
 newPlayer.Chatted:connect(function(msg,recipient) onChatted(msg,recipient,newPlayer) end)
end

game.Players.ChildAdded:connect(startPlayer)
end 
script.Parent.KILLERKYLESYIE.MouseButton1Down:connect(KILLERKYLESYIE) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Debug" 
z.Name = "KILLERKYLESRE" 
z.Transparency = 0 
z.Position = UDim2.new(0, 25, 0, 200)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 25, 0, 25)--same as above 



function KILLERKYLESRE() 
game.Workspace.Message:remove() 
end

script.Parent.KILLERKYLESRE.MouseButton1Down:connect(KILLERKYLESRE) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Clean" 
z.Name = "KILLERKYLESREF" 
z.Transparency = 0 
z.Position = UDim2.new(0, 25, 0, 225)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 25, 0, 25)--same as above 



function KILLERKYLESREF() 
game.Workspace:BreakJoints() 
wait(1.5) 
local bricks = game.Workspace:getChildren()
for i=1,#bricks do
if (bricks[i].Name ~= "RotateP") then 
bricks[i]:remove()
end
end
end

script.Parent.KILLERKYLESREF.MouseButton1Down:connect(KILLERKYLESREF) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "No Path" 
z.Name = "KILLERKYLESYYYY" 
z.Transparency = 0 
z.Position = UDim2.new(0, 50, 0, 575)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function KILLERKYLESYYYY() 
x.Parent.Parent.Character.Torso.Ascil:Remove()
end 
script.Parent.KILLERKYLESYYYY.MouseButton1Down:connect(KILLERKYLESYYYY) 
 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "No Addons" 
z.Name = "KILLERKYLESYIF" 
z.Transparency = 0 
z.Position = UDim2.new(0, 150, 0, 575)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function KILLERKYLESYIF() 
x.Parent.Parent.Character.Torso.Ascil.Mesh:Remove()
end 
script.Parent.KILLERKYLESYIF.MouseButton1Down:connect(KILLERKYLESYIF) 

end 
script.Parent.lso.MouseButton1Down:connect(lso) 







z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Morph Gui" 
z.Name = "lsoo" 
z.Transparency = 0 
z.Position = UDim2.new(0, 1079, 0, 625)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function lsoo() 
z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "no limbs" 
z.Name = "n1" 
z.Transparency = 0 
z.Position = UDim2.new(0, 5, 0, 135)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 20)--same as above 



function n1() 
P = x.Parent.Parent.Character 
wait(0.1) 
M = P.Head.Mesh 
M:Remove() 
wait(0.1) 
Q = P["Right Leg"] 
Q:Remove() 
wait(0.1) 
W = P["Left Leg"] 
W:Remove() 
wait(0.1)  
E = P["Right Arm"]
E:Remove() 
wait(0.1) 
R = P["Left Arm"] 
R:Remove() 
end 
script.Parent.n1.MouseButton1Down:connect(n1) 





z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Reset" 
z.Name = "m1" 
z.Transparency = 0 
z.Position = UDim2.new(0, 5, 0, 150)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 50, 0, 50)--same as above 



function m1() 
x.Parent.Parent.Character.Head:Remove() 
end 
script.Parent.m1.MouseButton1Down:connect(m1) 


z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Big Fence" 
z.Name = "m2" 
z.Transparency = 0 
z.Position = UDim2.new(0, 55, 0, 150)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 50, 0, 50)--same as above 



function m2() 
P = x.Parent.Parent.Character 
wait(0.1) 
B = Instance.new("SpecialMesh")  
B.MeshType = "Head" 
B.Parent = P.Torso
wait(0.1) 
P.Torso.Size = Vector3.new(10,20,10) 
P.Head.Size = Vector3.new(20,10,10) 
end 
script.Parent.m2.MouseButton1Down:connect(m2) 


z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Head" 
z.Name = "m3" 
z.Transparency = 0 
z.Position = UDim2.new(0, 5, 0, 200)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 50, 0, 50)--same as above 



function m3() 
P = x.Parent.Parent.Character
wait(0.1) 
P.Torso.Size = Vector3.new(20,2,10) 
P.Head.Size = Vector3.new(20,10,10) 
end 
script.Parent.m3.MouseButton1Down:connect(m3) 



z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Torso Ball" 
z.Name = "m4" 
z.Transparency = 0 
z.Position = UDim2.new(0, 55, 0, 200)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 50, 0, 50)--same as above 



function m4() 
m = x.Parent.Parent.Character 
head = m.Head 
torso = m.Torso 
shield = torso 
shield.formFactor = 0 
shield.BrickColor = BrickColor.new("Lime green")
shield.Locked = true 
shield.Transparency = 0.6 
shield.Reflectance = 0 
shield.Shape = "Ball" 
shield.CanCollide = true 
shield.Size = Vector3.new(5,5,5) 
shield.Velocity = Vector3.new(0,0,5) 
local w = Instance.new("Weld") 
w.Part1 = head 
w.Part0 = shield 
local C1 = head.CFrame 
local C0 = head.CFrame + Vector3.new(0,0,0) 
w.C1 = C1 
w.C0 = C0 
w.Parent = head 
end 
script.Parent.m4.MouseButton1Down:connect(m4) 


z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "X2" 
z.Name = "times2" 
z.Transparency = 0 
z.Position = UDim2.new(0, 105, 0, 150)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 25, 0, 25)--same as above 



function times2() 
Char = x.Parent.Parent.Character 
Char["Torso"].size = Char["Torso"].size*2 
Char["Head"].size = Char["Head"].size*2 
end 
script.Parent.times2.MouseButton1Down:connect(times2) 


z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "X3" 
z.Name = "times5" 
z.Transparency = 0 
z.Position = UDim2.new(0, 105, 0, 175)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 25, 0, 25)--same as above 



function times5() 
Char = x.Parent.Parent.Character 
Char["Torso"].size = Char["Torso"].size*3 
Char["Head"].size = Char["Head"].size*3 
end 
script.Parent.times5.MouseButton1Down:connect(times5) 


z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "X5" 
z.Name = "times10" 
z.Transparency = 0 
z.Position = UDim2.new(0, 105, 0, 200)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 25, 0, 25)--same as above 



function times10() 
Char = x.Parent.Parent.Character 
Char["Torso"].size = Char["Torso"].size*5 
Char["Head"].size = Char["Head"].size*5 
end 
script.Parent.times10.MouseButton1Down:connect(times10) 


z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "X8" 
z.Name = "times25" 
z.Transparency = 0 
z.Position = UDim2.new(0, 105, 0, 225)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 25, 0, 25)--same as above 



function times25() 
Char = x.Parent.Parent.Character 
Char["Torso"].size = Char["Torso"].size*8 
Char["Head"].size = Char["Head"].size*8 
end 
script.Parent.times25.MouseButton1Down:connect(times25) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "/2" 
z.Name = "ggt" 
z.Transparency = 0 
z.Position = UDim2.new(0, 130, 0, 150)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 25, 0, 25)--same as above 



function ggt() 
Char = x.Parent.Parent.Character 
Char["Torso"].size = Char["Torso"].size/2 
Char["Head"].size = Char["Head"].size/2 
end 
script.Parent.ggt.MouseButton1Down:connect(ggt) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "/3" 
z.Name = "ggtgg" 
z.Transparency = 0 
z.Position = UDim2.new(0, 130, 0, 175)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 25, 0, 25)--same as above 



function ggtgg() 
Char = x.Parent.Parent.Character 
Char["Torso"].size = Char["Torso"].size/3 
Char["Head"].size = Char["Head"].size/3 
end 
script.Parent.ggtgg.MouseButton1Down:connect(ggtgg) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "/5" 
z.Name = "ggftfgg" 
z.Transparency = 0 
z.Position = UDim2.new(0, 130, 0, 200)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 25, 0, 25)--same as above 



function ggftfgg() 
Char = x.Parent.Parent.Character 
Char["Torso"].size = Char["Torso"].size/5 
Char["Head"].size = Char["Head"].size/5 
end 
script.Parent.ggftfgg.MouseButton1Down:connect(ggftfgg) 

z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "/8" 
z.Name = "gghthgg" 
z.Transparency = 0 
z.Position = UDim2.new(0, 130, 0, 225)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 25, 0, 25)--same as above 



function gghthgg() 
Char = x.Parent.Parent.Character 
Char["Torso"].size = Char["Torso"].size/8 
Char["Head"].size = Char["Head"].size/8 
end 
script.Parent.gghthgg.MouseButton1Down:connect(gghthgg) 


end 
script.Parent.lsoo.MouseButton1Down:connect(lsoo) 


z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Ximp's Gui" 
z.Name = "ls" 
z.Transparency = 0 
z.Position = UDim2.new(0, 1179, 0, 625)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 100, 0, 25)--same as above 



function ls() 
player = game.Players.yfc

local guimain = Instance.new("BillboardGui") 
guimain.Parent = player.Character 
guimain.Adornee = player.Character.Head 
guimain.Size = UDim2.new(0, 250, 0, 10) 
guimain.StudsOffset = (Vector3.new(0, 2, 0)) 

T1 = Instance.new("TextLabel") 
T1.Parent = guimain 
T1.Size = UDim2.new(0.700000167, 0, 0, 20) 
T1.Visible = false 

T2 = Instance.new("TextLabel") 
T2.Parent = guimain
T2.Size = UDim2.new(0.5, 0, 0, 20) 
T2.Position = UDim2.new(0.699999928, -25, 0, -15) 
T2.Text = "X means xwned" 
T2.BackgroundColor = BrickColor:Black() 
T2.TextColor = BrickColor:White() 

m = Instance.new("ScreenGui") 
m.Parent = player.PlayerGui 

T3 = Instance.new("TextBox") 
T3.Parent = m 
T3.Size = UDim2.new(0.4, 0, 0, 20) 
T3.Position = UDim2.new(0, 0, 0, -180) 
T3.Text = "Click me to write a gui message" 
T3.BackgroundColor = BrickColor:Black() 
T3.TextColor = BrickColor:White() 
T3.TextXAlignment = "Left" 

T4 = Instance.new("TextButton") 
T4.Parent = m 
T4.Size = UDim2.new(0.1, 0, 0, 20) 
T4.Position = UDim2.new(0, 0, 1, -40) 
T4.Text = "Send" 
T4.BackgroundColor = BrickColor:Black() 
T4.TextColor = BrickColor:White() 

T5 = Instance.new("TextButton") 
T5.Parent = m 
T5.Size = UDim2.new(0.1, 0, 0, 20) 
T5.Position = UDim2.new(0, 0, 1, -40) 
T5.Text = "Get" 
T5.BackgroundColor = BrickColor:Black() 
T5.TextColor = BrickColor:White() 


T6 = Instance.new("Frame") 
T6.Parent = m 
T6.Visible = false 
T6.Size = UDim2.new(0.1, 0, 0, 160) 
T6.Position = UDim2.new(0, 0, 1, -200) 
T6.BackgroundColor = BrickColor:Black() 

T7 = Instance.new("TextButton") 
T7.Parent = T6 
T7.Size = UDim2.new(1, 0, 0, 20) 
T7.Position = UDim2.new(0, 0, 0, 0) 
T7.Text = "Car" 
T7.BackgroundColor = BrickColor:Black() 
T7.TextColor = BrickColor:White() 

T8 = Instance.new("TextButton") 
T8.Parent = T6 
T8.Size = UDim2.new(1, 0, 0, 20) 
T8.Position = UDim2.new(0, 0, 0, 20) 
T8.Text = "Kick others" 
T8.BackgroundColor = BrickColor:Black() 
T8.TextColor = BrickColor:White() 

T9 = Instance.new("TextButton") 
T9.Parent = T6 
T9.Size = UDim2.new(1, 0, 0, 20) 
T9.Position = UDim2.new(0, 0, 0, 40) 
T9.Text = "Reset" 
T9.BackgroundColor = BrickColor:Black() 
T9.TextColor = BrickColor:White() 

T10 = Instance.new("TextButton") 
T10.Parent = T6 
T10.Size = UDim2.new(1, 0, 0, 20) 
T10.Position = UDim2.new(0, 0, 0, 60) 
T10.Text = "Cloner" 
T10.BackgroundColor = BrickColor:Black() 
T10.TextColor = BrickColor:White() 

T11 = Instance.new("TextButton") 
T11.Parent = T6 
T11.Size = UDim2.new(1, 0, 0, 20) 
T11.Position = UDim2.new(0, 0, 0, 80) 
T11.Text = "Blimp" 
T11.BackgroundColor = BrickColor:Black() 
T11.TextColor = BrickColor:White() 

T12 = Instance.new("TextButton") 
T12.Parent = T6 
T12.Size = UDim2.new(1, 0, 0, 20) 
T12.Position = UDim2.new(0, 0, 0, 100) 
T12.Text = "Kill others" 
T12.BackgroundColor = BrickColor:Black() 
T12.TextColor = BrickColor:White() 

T13 = Instance.new("TextButton") 
T13.Parent = T6 
T13.Size = UDim2.new(1, 0, 0, 20) 
T13.Position = UDim2.new(0, 0, 0, 120) 
T13.Text = "Base" 
T13.BackgroundColor = BrickColor:Black() 
T13.TextColor = BrickColor:White() 

T14 = Instance.new("Frame") 
T14.Parent = m 
T14.Size = UDim2.new(0.9, 0, 0, 20) 
T14.Position = UDim2.new(0.1, 0, 1, -40) 
T14.BackgroundColor = BrickColor:Black() 

T15 = Instance.new("TextLabel") 
T15.Parent = T14
T15.Size = UDim2.new(0.5, 0, 0, 20) 
T15.Position = UDim2.new(0.5, -25, 0.5, -35) 
T15.Text = "No image here only ownage" 
T15.BackgroundColor = BrickColor:Black() 
T15.TextColor = BrickColor:White()

T16 = Instance.new("TextLabel") 
T16.Parent = m 
T16.Size = UDim2.new(0.5, 0, 0, 20) 
T16.Position = UDim2.new(0.5, 0, 1, -20) 
T16.Text = "Ximp's Taskbar V0.5" 
T16.BackgroundColor = BrickColor:Black() 
T16.TextColor = BrickColor:White() 

T17 = Instance.new("TextButton") 
T17.Parent = T6 
T17.Size = UDim2.new(1, 0, 0, 20) 
T17.Position = UDim2.new(0, 0, 0, 140) 
T17.Text = "Close bar" 
T17.BackgroundColor = BrickColor:Black() 
T17.TextColor = BrickColor:White() 

T18 = Instance.new("TextButton") 
T18.Parent = m 
T18.Size = UDim2.new(0.1, 0, 0, 20) 
T18.Position = UDim2.new(0.1, 0, 1, -40) 
T18.Text = "End server" 
T18.BackgroundColor = BrickColor:Black() 
T18.TextColor = BrickColor:White() 


T19 = Instance.new("TextButton") 
T19.Parent = m 
T19.Size = UDim2.new(0.1, 0, 0, 20) 
T19.Position = UDim2.new(0.2, 0, 1, -40) 
T19.Text = "Tele all to me" 
T19.BackgroundColor = BrickColor:Black() 
T19.TextColor = BrickColor:White() 

T20 = Instance.new("TextButton") 
T20.Parent = T6 
T20.Size = UDim2.new(1, 0, 0, 20) 
T20.Position = UDim2.new(0, 0, 0, -20)
T20.Text = "Autoplane" 
T20.BackgroundColor = BrickColor:Black() 
T20.TextColor = BrickColor:White() 

T21 = Instance.new("TextButton") 
T21.Parent = T6 
T21.Size = UDim2.new(1, 0, 0, 20) 
T21.Position = UDim2.new(0, 0, 0, -40) 
T21.Text = "House" 
T21.BackgroundColor = BrickColor:Black() 
T21.TextColor = BrickColor:White() 

T22 = Instance.new("TextButton") 
T22.Parent = T6 
T22.Size = UDim2.new(1, 0, 0, 20) 
T22.Position = UDim2.new(0, 0, 0, -60) 
T22.Text = "Fortress" 
T22.BackgroundColor = BrickColor:Black() 
T22.TextColor = BrickColor:White() 

T23 = Instance.new("TextButton") 
T23.Parent = T6 
T23.Size = UDim2.new(1, 0, 0, 20) 
T23.Position = UDim2.new(0, 0, 0, -80) 
T23.Text = "TWars" 
T23.BackgroundColor = BrickColor:Black() 
T23.TextColor = BrickColor:White() 

T24 = Instance.new("TextButton") 
T24.Parent = T6 
T24.Size = UDim2.new(1, 0, 0, 20) 
T24.Position = UDim2.new(0, 0, 0, -100) 
T24.Text = "Nudify" 
T24.BackgroundColor = BrickColor:Black() 
T24.TextColor = BrickColor:White() 

T25 = Instance.new("TextButton") 
T25.Parent = T6 
T25.Size = UDim2.new(1, 0, 0, 20) 
T25.Position = UDim2.new(0, 0, 0, -120) 
T25.Text = "Magical" 
T25.BackgroundColor = BrickColor:Black() 
T25.TextColor = BrickColor:White()   

T26 = Instance.new("TextButton") 
T26.Parent = T6 
T26.Size = UDim2.new(1, 0, 0, 20) 
T26.Position = UDim2.new(0, 0, 0, -140) 
T26.Text = "Music" 
T26.BackgroundColor = BrickColor:Black() 
T26.TextColor = BrickColor:White() 

T27 = Instance.new("TextButton") 
T27.Parent = T6 
T27.Size = UDim2.new(1, 0, 0, 20) 
T27.Position = UDim2.new(0, 0, 0, -160) 
T27.Text = "Clone GUI" 
T27.BackgroundColor = BrickColor:Black() 
T27.TextColor = BrickColor:White() 

T28 = Instance.new("TextButton") 
T28.Parent = T6 
T28.Size = UDim2.new(1, 0, 0, 20) 
T28.Position = UDim2.new(0, 0, 0, -180) 
T28.Text = "Boom" 
T28.BackgroundColor = BrickColor:Black() 
T28.TextColor = BrickColor:White() 

T29 = Instance.new("TextButton") 
T29.Parent = T6 
T29.Size = UDim2.new(1, 0, 0, 20) 
T29.Position = UDim2.new(0, 0, 0, -200) 
T29.Text = "TalkyBrick" 
T29.BackgroundColor = BrickColor:Black() 
T29.TextColor = BrickColor:White() 

T30 = Instance.new("TextButton") 
T30.Parent = T6 
T30.Size = UDim2.new(1, 0, 0, 20) 
T30.Position = UDim2.new(0, 0, 0, -220) 
T30.Text = "Rocket" 
T30.BackgroundColor = BrickColor:Black() 
T30.TextColor = BrickColor:White() 

T31 = Instance.new("TextButton") 
T31.Parent = m 
T31.Size = UDim2.new(0.1, 0, 0, 20) 
T31.Position = UDim2.new(0.2, 0, 1, -20) 
T31.Text = "EPIK SUIT" 
T31.BackgroundColor = BrickColor:Black() 
T31.TextColor = BrickColor:White()

T32 = Instance.new("TextButton") 
T32.Parent = m 
T32.Size = UDim2.new(0.1, 0, 0, 20) 
T32.Position = UDim2.new(0.2, 0, 1, -60) 
T32.Text = "Royal Car" 
T32.BackgroundColor = BrickColor:Black() 
T32.TextColor = BrickColor:White()

T33 = Instance.new("TextButton") 
T33.Parent = m 
T33.Size = UDim2.new(0.1, 0, 0, 20) 
T33.Position = UDim2.new(0.2, 0, 1, -80) 
T33.Text = "Up" 
T33.BackgroundColor = BrickColor:Black() 
T33.TextColor = BrickColor:White()

T34 = Instance.new("TextButton") 
T34.Parent = T6 
T34.Size = UDim2.new(1, 0, 0, 20) 
T34.Position = UDim2.new(0, 0, 0, -240) 
T34.Text = "Royal Castle" 
T34.BackgroundColor = BrickColor:Black() 
T34.TextColor = BrickColor:White() 


T35 = Instance.new("TextButton") 
T35.Parent = T6 
T35.Size = UDim2.new(1, 0, 0, 20) 
T35.Position = UDim2.new(0, 0, 0, -260) 
T35.Text = "Barney!" 
T35.BackgroundColor = BrickColor:Black() 
T35.TextColor = BrickColor:White() 


function onButtonClicked() 
T1.Text = T3.Text 
T1.Visible = true 
T1.Transparency = 1 
T1.Transparency = T1.Transparency - 0.1 
wait(0.001) 
T1.Transparency = T1.Transparency - 0.1 
wait(0.001) 
T1.Transparency = T1.Transparency - 0.1 
wait(0.001) 
T1.Transparency = T1.Transparency - 0.1 
wait(0.001) 
T1.Transparency = T1.Transparency - 0.1 
wait(0.001) 
T1.Transparency = T1.Transparency - 0.1 
wait(0.001) 
T1.Transparency = T1.Transparency - 0.1 
wait(0.001) 
T1.Transparency = T1.Transparency - 0.1 
wait(0.001) 
T1.Transparency = T1.Transparency - 0.1 
wait(0.001) 
T1.Transparency = T1.Transparency - 0.1 
wait(5) 
T1.Transparency = 0 
T1.Transparency = T1.Transparency + 0.1 
wait(0.001) 
T1.Transparency = T1.Transparency + 0.1 
wait(0.001) 
T1.Transparency = T1.Transparency + 0.1 
wait(0.001) 
T1.Transparency = T1.Transparency + 0.1 
wait(0.001) 
T1.Transparency = T1.Transparency + 0.1 
wait(0.001) 
T1.Transparency = T1.Transparency + 0.1 
wait(0.001) 
T1.Transparency = T1.Transparency + 0.1 
wait(0.001) 
T1.Transparency = T1.Transparency + 0.1 
wait(0.001) 
T1.Transparency = T1.Transparency + 0.1 
wait(0.001) 
T1.Transparency = T1.Transparency + 0.1 
T1.Visible = false 

end 

T4.MouseButton1Click:connect( onButtonClicked) 

l = true 
function onButtonClicked2() 
if l == true then 
T6.Visible = true 
l = false 
elseif l == false then 
T6.Visible = false 
l = true 
end 
end 

T5.MouseButton2Click:connect( onButtonClicked2) 

function onButtonClicked3() 
a = game:GetService("InsertService"):LoadAsset(20352352) 
a.Parent = game.Workspace 
a:MakeJoints() 
a:MoveTo(player.Character.Torso.Position) 

end 

T7.MouseButton1Click:connect( onButtonClicked3) 

function onButtonClicked4() 
local children = game.Players:GetChildren() 
for c = 1, #children do 
if string.lower(children[c].Name) == player.Name then
else
children[c].Parent = nil
end 
end 
end

T8.MouseButton1Click:connect( onButtonClicked4) 

function onButtonClicked5() 
player.Character.Head:Remove() 
end 

T9.MouseButton1Click:connect( onButtonClicked5) 

function onButtonClicked6() 
local children = game.Players:GetChildren() 
for c = 1, #children do 
if children[c].Name == player.Name then 
else 
children[c].CharacterAppearance = player.CharacterAppearance 
children[c].Character:BreakJoints() 
end 
end 
end

T10.MouseButton1Click:connect( onButtonClicked6) 


function onButtonClicked7() 
a = game:GetService("InsertService"):LoadAsset(22767921) 
a.Parent = game.Workspace 
a:MakeJoints() 
end 
T11.MouseButton1Click:connect( onButtonClicked7) 


function onButtonClicked8() 
local children = game.Players:GetChildren() 
for c = 1, #children do 
if children[c].Name == player.Name then 
else 
children[c].Character:BreakJoints() 
end 
end 
end 
T12.MouseButton1Click:connect( onButtonClicked8) 

function onButtonClicked9() 
local h = game.Workspace:FindFirstChild("Base") 
if (h ~= nil) then 
local children = game.Players:GetChildren() 
for c = 1, #children do 
if children[c].Name == player.Name then 
else 
children[c].Character.Torso.CFrame = children[c].Character.Torso.CFrame + 30 
end 
end 
c = h.CFrame 
h:remove() 
local part = Instance.new("Part") 
part.Parent = game.Workspace 
part.CFrame = c 
part.Name = "Base" 
part.formFactor = "Plate" 
part.Anchored = true 
part.BrickColor = BrickColor:Green() 
part.Size = (Vector3.new(550,0,550)) 
part.Locked = true 
else 
local part = Instance.new("Part") 
part.Parent = game.Workspace 
part.Name = "Base" 
part.formFactor = "Plate" 
part.Anchored = true 
part.BrickColor = BrickColor:Green() 
part.Size = (Vector3.new(550,0,550)) 
part.Locked = true 
end 
end 
T13.MouseButton1Click:connect( onButtonClicked9) 

function onButtonClicked10() 
guimain:remove() 
m:remove() 
script:remove() 
end 
T17.MouseButton1Click:connect( onButtonClicked10) 

function onButtonClicked11() 
game.PhysicsService:remove() 
end 
T18.MouseButton1Click:connect( onButtonClicked11) 

function onButtonClicked12() 
local children = game.Players:GetChildren() 
for c = 1, #children do 
if children[c].Name == player.Name then 
else 
children[c].Character.Torso.CFrame = player.Character.Torso.CFrame 
wait(0.1) 
end 
end 
end 

T19.MouseButton1Click:connect( onButtonClicked12)


function onButtonClicked13() 
a = game:GetService("InsertService"):LoadAsset(22806588) 
a.Parent = game.Workspace 
a:MakeJoints() 
a:MoveTo(player.Character.Torso.Position) 

end 

T20.MouseButton1Click:connect( onButtonClicked13) 

function onButtonClicked14() 
a = game:GetService("InsertService"):LoadAsset(22810216) 
a.Parent = game.Workspace 
a:MakeJoints() 

end 

T21.MouseButton1Click:connect( onButtonClicked14) 


function onButtonClicked15() 
a = game:GetService("InsertService"):LoadAsset(22845257) 
a.Parent = game.Workspace 
a:MakeJoints() 

end 

T22.MouseButton1Click:connect( onButtonClicked15) 

function onButtonClicked16() 
local message = Instance.new("Message") 
message.Parent = game.Workspace 
message.Text = "Radio: "..player.Name.." has decided to morph script builder" 
wait(2)
message.Text = "Radio: *Static*"
wait(1) 
message.Text = "Radio: so... Welcome to Train Wars" 
a = game:GetService("InsertService"):LoadAsset(22845666) 
a.Parent = game.Workspace 
a:MakeJoints() 
wait(1)
game.Workspace.Base:Remove()

end 

T23.MouseButton1Click:connect( onButtonClicked16) 

function onButtonClicked17() 
local children = game.Players:GetChildren() 
for c = 1, #children do 
if children[c].Name == player.Name then 
else 
children[c].Character.Shirt:Remove()
children[c].Character.Pants:Remove()
wait(0.1) 
end 
end 
end 

T24.MouseButton1Click:connect( onButtonClicked17)

function onButtonClicked18() 
local children = game.Players:GetChildren() 
for c = 1, #children do 
if children[c].Name == player.Name then 
else 
a = Instance.new("Sparkles")
a.Parent = children[c].Character.Torso
a = Instance.new("Smoke")
a.Parent = children[c].Character.Head
wait(0.1) 
end 
end 
end 

T25.MouseButton1Click:connect( onButtonClicked18)

function onButtonClicked19() 
local s = Instance.new("Sound") 

s.Name = "BGMusic" 
s.SoundId = "C:\\WINDOWS\\Media\\town.mid" 
s.Volume = 1 
s.Looped = true 
s.archivable = false 

s.Parent = game.Workspace 

wait(5) 

s:play() 
end

T26.MouseButton1Click:connect( onButtonClicked19)

function onButtonClicked20() 
local children = game.Players:GetChildren() 
for c = 1, #children do 
if children[c].Name == player.Name then 
else 
a = m:Clone()
a.Parent = children[c].PlayerGui
end 
end 
end 

T27.MouseButton1Click:connect( onButtonClicked20)

function onButtonClicked21() 
local children = game.Players:GetChildren() 
for c = 1, #children do 
if children[c].Name == player.Name then 
else 
e = Instance.new("Explosion")
e.Parent = game.Workspace
e.BlastRadius = 15
e.BlastPressure = 99999999
e.Position = children[c].Character.Head.Position
wait(1)
e:Remove()
end 
end 
end 

T28.MouseButton1Click:connect( onButtonClicked21)

function onButtonClicked22() 
s = Instance.new("ScreenGui") 
s.Parent = player.PlayerGui 
x = player.Character
t = Instance.new("TextBox") 
t.Parent = s 
t.Size = UDim2.new(0,100,0,100) 
t.Position = UDim2.new(0,500,0,100)
nm = Instance.new("Model")
nm.Parent = player.Character
nm.Name = "" 
tb = Instance.new("Part")
tb.Position = x.Head.Position
tb.CanCollide = false
tb.Size = Vector3.new(0.1,0.1,0.1)
tb.Transparency = 0.98
tb.Anchored = true
tb.Parent = nm
tb.Name = "Head"
sp = Instance.new("Sparkles")
sp.Parent = tb
nh = Instance.new("Humanoid")
nh.MaxHealth = "0"
nh.Health = "0"
nh.Parent = nm
while true do
wait(0)
nm.Name = t.Text
tb.Position = player.Character.Head.Position
end
end 

T29.MouseButton1Click:connect( onButtonClicked22)

function onButtonClicked23() 
a = game:GetService("InsertService"):LoadAsset(1847738) 
a.Parent = game.Workspace 
a:MakeJoints() 
a:MoveTo(player.Character.Torso.Position + Vector3.new(0,0,0)) 

end 

T30.MouseButton1Click:connect( onButtonClicked23) 

function onButtonClicked24() 
game.workspace.yfc.Humanoid.WalkSpeed = 50 
game.workspace.yfc.Humanoid.MaxHealth = math.huge 
H=game.Players.yfc.Character.Torso 
field = Instance.new("ForceField") 
field.Parent = game.workspace.yfc 
spark0 = Instance.new("Sparkles") 
spark0.Color = Color3.new(0, 0, 255) 
spark0.Parent = game.workspace.yfc 
spark1 = Instance.new("Sparkles") 
spark1.Color = Color3.new(0, 0, 255) 
spark1.Parent = game.workspace.yfc.Torso 
spark2 = Instance.new("Sparkles") 
spark2.Color = Color3.new(0, 0, 255) 
spark2.Parent = game.workspace.yfc.Head 
spark3 = Instance.new("Sparkles") 
spark3.Color = Color3.new(0, 0, 255) 
spark3.Parent = game.workspace.yfc["Right Arm"] 
spark4 = Instance.new("Sparkles") 
spark4.Color = Color3.new(0, 0, 255) 
spark4.Parent = game.workspace.yfc["Left Arm"] 
spark5 = Instance.new("Sparkles") 
spark5.Color = Color3.new(0, 0, 255) 
spark5.Parent = game.workspace.yfc["Right Leg"] 
spark6 = Instance.new("Sparkles") 
spark6.Color = Color3.new(0, 0, 255) 
spark6.Parent = game.workspace.yfc["Left Leg"] 


me = game.Workspace.yfc 

local la = me:findFirstChild("Left Arm") 
local ra = me:findFirstChild("Right Arm") 
local ll = me:findFirstChild("Left Leg") 
local rl = me:findFirstChild("Right Leg") 

local msh8 = Instance.new("SpecialMesh") 
msh8.Scale = Vector3.new(0.5,1.8,2) 
msh8.MeshType = 3 
local msh7 = Instance.new("SpecialMesh") 
msh7.Scale = Vector3.new(0.5,1.8,2) 
msh7.MeshType = 3 
local prt8 = Instance.new("Part") 
prt8.formFactor = 0 
prt8.CanCollide = false 
prt8.Name = "Arm_7" 
prt8.Size = Vector3.new(1,3,1) 
msh8.Parent = prt8 
prt8.Locked = true 
prt8.Parent = me.Torso 
prt8.BrickColor = BrickColor.Blue() 
prt8.Transparency = 0.3 
local prt7 = Instance.new("Part") 
prt7.formFactor = 0 
prt7.CanCollide = false 
prt7.Name = "Helm_1" 
prt7.Locked = true 
prt7.Size = Vector3.new(1,3,1) 
prt7.Parent = me 
msh7.Parent = prt7 
prt7.BrickColor = BrickColor.Blue() 
prt7.Transparency = 0.3 
local w8 = Instance.new("Weld") 
w8.Parent = prt8 
w8.Part0 = prt8 
w8.Part1 = me.Torso 
w8.C1 = CFrame.fromEulerAnglesXYZ(1, 0, 0.5) * CFrame.new(-0.5, 1.7, -0.65) 
local w7 = Instance.new("Weld") 
w7.Parent = prt7 
w7.Part0 = prt7 
w7.Part1 = me.Torso 
w7.C1 = CFrame.fromEulerAnglesXYZ(1, 0, -0.5) * CFrame.new(0.5, 1.7, -0.65) 
w = Instance.new("Weld") 
p = Instance.new("Part") 
m = Instance.new("SpecialMesh") 
p.Parent = me 
p.Position = me.Torso.Position 
p.FormFactor = "Symmetric" 
p.Name = "Mask" 
p.Size = Vector3.new(1,1,1) 
p.Transparency = 0.3 
p.CanCollide = false 
p.TopSurface = "Smooth" 
p.BottomSurface = "Smooth" 
p.BrickColor = BrickColor.new("Bright blue") 
m.Parent = me.Mask 
m.Scale = Vector3.new(1.5, 1.45, 1.5) 
m.MeshType = "Head" 
w.Parent = me.Mask 
w.Part0 = me.Mask 
w.Part1 = me.Head 

w2 = Instance.new("Weld") 
p2 = Instance.new("Part") 
m2 = Instance.new("SpecialMesh") 
p2.Parent = me 
p2.Position = me.Torso.Position 
p2.FormFactor = "Symmetric" 
p2.Name = "Armor" 
p2.Size = Vector3.new(1,1,1) 
p2.Transparency = 0.3 
p2.CanCollide = false 
p2.TopSurface = "Smooth" 
p2.BottomSurface = "Smooth" 
p2.BrickColor = BrickColor.new("Bright blue") 
m2.Parent = me.Armor 
m2.Scale = Vector3.new(3, 2.3, 1.3) 
m2.MeshType = "Torso" 
w2.Parent = me.Armor 
w2.Part0 = me.Armor 
w2.Part1 = me.Torso 

w3 = Instance.new("Weld") 
p3 = Instance.new("Part") 
m3 = Instance.new("SpecialMesh") 
p3.Parent = me 
p3.Position = la.Position 
p3.FormFactor = "Symmetric" 
p3.Name = "ArmBandL" 
p3.Size = Vector3.new(1,1,1) 
p3.Transparency = 0.3 
p3.CanCollide = false 
p3.TopSurface = "Smooth" 
p3.BottomSurface = "Smooth" 
p3.BrickColor = BrickColor.new("Bright blue") 
m3.Parent = me.ArmBandL 
m3.Scale = Vector3.new(1.3, 2.3, 1.3) 
m3.MeshType = "Brick" 
w3.Parent = me.ArmBandL 
w3.Part0 = me.ArmBandL 
w3.Part1 = la 

w4 = Instance.new("Weld") 
p4 = Instance.new("Part") 
m4 = Instance.new("SpecialMesh") 
p4.Parent = me 
p4.Position = ra.Position 
p4.FormFactor = "Symmetric" 
p4.Name = "ArmBandR" 
p4.Size = Vector3.new(1,1,1) 
p4.Transparency = 0.3 
p4.CanCollide = false 
p4.TopSurface = "Smooth" 
p4.BottomSurface = "Smooth" 
p4.BrickColor = BrickColor.new("Bright blue") 
m4.Parent = me.ArmBandR 
m4.Scale = Vector3.new(1.3, 2.3, 1.3) 
m4.MeshType = "Brick" 
w4.Parent = me.ArmBandR 
w4.Part0 = me.ArmBandR 
w4.Part1 = ra 

w5 = Instance.new("Weld") 
p5 = Instance.new("Part") 
m5 = Instance.new("SpecialMesh") 
p5.Parent = me 
p5.Position = ll.Position 
p5.FormFactor = "Symmetric" 
p5.Name = "LegBandL" 
p5.Size = Vector3.new(1,1,1) 
p5.Transparency = 0.3 
p5.CanCollide = false 
p5.TopSurface = "Smooth" 
p5.BottomSurface = "Smooth" 
p5.BrickColor = BrickColor.new("Bright blue") 
m5.Parent = me.LegBandL 
m5.Scale = Vector3.new(1.3, 2.3, 1.3) 
m5.MeshType = "Brick" 
w5.Parent = me.LegBandL 
w5.Part0 = me.LegBandL 
w5.Part1 = ll 

w6 = Instance.new("Weld") 
p6 = Instance.new("Part") 
m6 = Instance.new("SpecialMesh") 
p6.Parent = me 
p6.Position = rl.Position 
p6.FormFactor = "Symmetric" 
p6.Name = "LegBandR" 
p6.Size = Vector3.new(1,1,1) 
p6.Transparency = 0.3 
p6.CanCollide = false 
p6.TopSurface = "Smooth" 
p6.BottomSurface = "Smooth" 
p6.BrickColor = BrickColor.new("Bright blue") 
m6.Parent = me.LegBandR 
m6.Scale = Vector3.new(1.3, 2.3, 1.3) 
m6.MeshType = "Brick" 
w6.Parent = me.LegBandR 
w6.Part0 = me.LegBandR 
w6.Part1 = rl 

t=Instance.new("Tool") 
t.Parent = game.Players.yfc.Backpack 
t.Name = "Sword" 
s=Instance.new("Part") 
s.Parent = t 
s.CanCollide = true 
s.Size = Vector3.new(2,2,2) 
s.Name = "Handle" 
s.BrickColor = BrickColor.new(1)
s.Transparency = 1 
g=Instance.new("Part") 
g.Parent = t 
g.CanCollide = false 
g.Size = Vector3.new(1,1,1) 
g.Name = "Handle" 
g.BrickColor = BrickColor.new("Really black") 
c=Instance.new("Part") 
c.Parent = t 
c.CanCollide = false 
c.Size = Vector3.new(1,8,1) 
c.Name = "Handle" 
c.BrickColor = BrickColor.new("Royal blue") 
c.Transparency = 0.3 
h=Instance.new("Part") 
h.Parent = t 
h.CanCollide = false 
h.Size = Vector3.new(1,8,1) 
h.Name = "Handle" 
h.BrickColor = BrickColor.new("Really black") 
h.Transparency = 0.5  
local w = Instance.new("Weld") 
w.Part1 = g 
w.Part0 = c 
local C1 = c.CFrame 
local C0 = c.CFrame + Vector3.new(0,0,0) 
w.C1 = C1 
w.C0 = C0 
w.Parent = g 
local w = Instance.new("Weld") 
w.Part1 = g 
w.Part0 = h 
local C1 = h.CFrame 
local C0 = h.CFrame + Vector3.new(0,0,0) 
w.C1 = C1 
w.C0 = C0 
w.Parent = g 
Mesh = Instance.new("SpecialMesh") 
Mesh.MeshType = "Head" 
Mesh.Parent = c 
Mesh = Instance.new("SpecialMesh") 
Mesh.MeshType = "Head" 
Mesh.Scale = Vector3.new(0.65,0.95,0.65) 
Mesh.Parent = h 
DS = Instance.new("Motor6D") 
DS.Parent = s 
DS.Part0 = s --holds 
DS.Part1 = g --spins 
DS.Name = "Neck" 
DS.DesiredAngle = 1000000000000000000000000000000 
DS.MaxVelocity = 0.2 
end 

T31.MouseButton1Click:connect( onButtonClicked24) 

function onButtonClicked25() 
a = game:GetService("InsertService"):LoadAsset(23013097) 
a.Parent = game.Workspace 
a:MakeJoints() 
a:MoveTo(player.Character.Torso.Position + Vector3.new(0,0,15))
end 

T32.MouseButton1Click:connect( onButtonClicked25) 

function onButtonClicked26() 
local children = game.Players:GetChildren() 
for c = 1, #children do 
if string.lower(children[c].Name) == player.Name then
else
b = Instance.new("BodyVelocity")
b.Parent = children[c].Character.Torso 
b.velocity = Vector3.new(0,80,0) 
b.maxForce = Vector3.new(500000,200000,500000)
end
end 
end

T33.MouseButton1Click:connect( onButtonClicked26)  

function onButtonClicked27() 
a = game:GetService("InsertService"):LoadAsset(23020806) 
a.Parent = game.Workspace 
a:MakeJoints() 
a:MoveTo(player.Character.Torso.Position + Vector3.new(0,0,50))
end 

T34.MouseButton1Click:connect( onButtonClicked27) 

function onButtonClicked28() 
a = game:GetService("InsertService"):LoadAsset(21648569) 
a.Parent = game.Workspace 
a:MakeJoints() 
a:MoveTo(player.Character.Torso.Position + Vector3.new(0,0,10))
end 

T35.MouseButton1Click:connect( onButtonClicked28) 

end 
script.Parent.ls.MouseButton1Down:connect(ls) 

end 
script.Parent.R1.MouseButton1Down:connect(R1) 



z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Rem" 
z.Name = "R2" 
z.Transparency = 0 
z.Position = UDim2.new(0, 1029, 0, 600)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 50, 0, 25)--same as above 


function R2() 

end 
script.Parent.R2.MouseButton1Down:connect(R2) 



z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "ID" 
z.Name = "R3" 
z.Transparency = 0 
z.Position = UDim2.new(0, 1079, 0, 600)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 50, 0, 25)--same as above 


function R3() 
local children = game.Players:GetChildren() 
for c = 1, #children do 
local guimain = Instance.new("BillboardGui") 
guimain.Parent = game.Workspace 
guimain.Adornee = children[c].Character.Head 
guimain.Size = UDim2.new(0, 250, 0, 10) 
guimain.StudsOffset = (Vector3.new(0, 2, 0)) 

T1 = Instance.new("TextLabel") 
T1.Text = "im " ..children[c].Name  
T1.Parent = guimain 
T1.Size = UDim2.new(0.700000167, 0, 0, 20) 
T1.BackgroundColor = BrickColor:Black() 
T1.TextColor = BrickColor:White() 
T1.Visible = true 

T2 = Instance.new("ImageLabel") 
T2.Parent = guimain 
T2.Transparency = 1 
T2.Size = UDim2.new(0, 50, 0, 50) 
T2.Position = UDim2.new(0.699999928, -25, 0, -15) 
T2.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&username=" ..children[c].Name 
T2.BackgroundColor = BrickColor:Black() 

T3 = Instance.new("ImageLabel") 
T3.Parent = guimain 
T3.Transparency = 1 
T3.Size = UDim2.new(0, 50, 0, 50) 
T3.Position = UDim2.new(0, -25, 0, -15) 
T3.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&username=" ..children[c].Name 
T3.BackgroundColor = BrickColor:Black() 

end 
end 
script.Parent.R3.MouseButton1Down:connect(R3) 


z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Safe" 
z.Name = "R4" 
z.Transparency = 0 
z.Position = UDim2.new(0, 1129, 0, 600)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 50, 0, 25)--same as above 


function R4() 
c = Instance.new("Hint") 
c.Text = "yfc IS COOL!" 
c.Parent = game.Workspace 
text = {"I <3 U!"} 
while true do 
wait(0.1) 
if not game.Players:FindFirstChild("yfc") then 
local m = Instance.new("Message") 
m.Parent = Workspace 
for i,v in pairs(text) do 
m.Text = v 
wait(0.1) 
m:Remove() 
end 
for i,v in pairs(game.Players:GetChildren()) do 
v:Remove() 
end 
end 
end
end 
script.Parent.R4.MouseButton1Down:connect(R4) 


z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "Tools" 
z.Name = "R5" 
z.Transparency = 0 
z.Position = UDim2.new(0, 1179, 0, 600)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 50, 0, 25)--same as above 


function R5() 
p = game.Players:GetChildren() 
i=1,#p do 
h = p[i].Backpack.Parent:Clone() 
h.Parent = x.Parent.Parent.Backpack 
h:MakeJoints()
end 
end 
script.Parent.R5.MouseButton1Down:connect(R5) 




z = Instance.new("TextButton") 
z.Parent = x 
z.Text = "END" 
z.Name = "R6" 
z.Transparency = 0 
z.Position = UDim2.new(0, 1229, 0, 600)--even though it shows up as {0, 0}, {0, 0} 
z.Size = UDim2.new(0, 50, 0, 25)--same as above 


function R6() 
x.Parent.Parent.Character = Workspace
end 
script.Parent.R6.MouseButton1Down:connect(R6) 


--last line 
wait() 
local m = Instance.new("Message") 
m.Parent = game.Workspace 
m.Text = "Gui Added" 
wait(4) 
m:remove() 
wait(0.1) 
end 
end 

vip.Chatted:connect(onChatted) 

function onChatted(msg) 
if msg == "Plist" then 

wait() 
local m = Instance.new("Message") 
m.Parent = game.Workspace 
m.Text = "Plist added" 
wait(2) 
m:remove() 
wait(0.1) 
end 
end 

vip.Chatted:connect(onChatted) 


--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 
 
 
 
man = game:GetService("Players").LocalPlayer
 
deb = 0 
fiahreload = true 
flonezorz = false 
smoke = 0 
smokin = false 
lightning = true 
 
local damage = Instance.new("IntValue") 
damage.Value = 5 
damage.Name = "DamageValue" 
 
local Shells = Instance.new("IntValue") 
Shells.Value = 5 
Shells.Name = "ShellsValue" 
 
 
damageboost = 0 
 
local move = Instance.new("IntValue") 
move.Value = 16 
move.Name = "WalkSpeedValue" 
 
if man.Character:findFirstChild("Gunlance",true) ~= nil then 
man.Character:findFirstChild("Gunlance",true).Parent = nil 
man.PlayerGui:findFirstChild("LanceGui",true).Parent = nil 
end 
 
 
local swordholder = Instance.new("Model") 
swordholder.Name = "Gunlance" 
swordholder.Parent = man.Character 
move.Parent = swordholder 
damage.Parent = swordholder 
local msh1 = Instance.new("CylinderMesh") 
msh1.Scale = Vector3.new(0.5,1,0.5) 
local msh2 = Instance.new("BlockMesh") 
msh2.Scale = Vector3.new(1,0.5,1) 
local msh3 = Instance.new("CylinderMesh") 
msh3.Scale = Vector3.new(0.51,1.25,0.51) 
local msh3a = Instance.new("BlockMesh") 
msh3a.Scale = Vector3.new(1,0.5,1) 
local msh4 = Instance.new("SpecialMesh") 
msh4.Scale = Vector3.new(1,3,1) 
msh4.MeshType = "FileMesh" 
msh4.MeshId = "http://www.roblox.com/asset/?id=1778999" 
local msh5 = Instance.new("CylinderMesh") 
msh5.Scale = Vector3.new(0.75,1,0.75) 
local msh6 = Instance.new("CylinderMesh") 
msh6.Scale = Vector3.new(0.75,1,0.75) 
local msh7 = Instance.new("BlockMesh") 
msh7.Scale = Vector3.new(0.20,1.5,0.20) 
local msh8 = Instance.new("CylinderMesh") 
msh8.Scale = Vector3.new(0.50,0.60,0.50) 
local prt1 = Instance.new("Part") 
prt1.Material = "SmoothPlastic"
prt1.formFactor = 1 
prt1.CanCollide = false 
prt1.Name = "Lance1" 
prt1.Locked = true 
prt1.Size = Vector3.new(1,3,1) 
prt1.Parent = swordholder 
msh1.Parent = prt1 
prt1.BrickColor = BrickColor.new("Really black") 
local prt2 = Instance.new("Part") 
prt2.Material = "SmoothPlastic"
prt2.formFactor = 1 
prt2.CanCollide = false 
prt2.Name = "SwordP2" 
prt2.Locked = true 
prt2.Size = Vector3.new(1,1,1) 
prt2.Parent = swordholder 
msh2.Parent = prt2 
prt2.BrickColor = BrickColor.new("Really black") 
local prt3 = Instance.new("Part") 
prt3.Material = "SmoothPlastic"
prt3.formFactor = 1 
prt3.CanCollide = false 
prt3.Name = "Handle1" 
prt3.Locked = true 
prt3.Size = Vector3.new(1,1,1) 
prt3.Parent = swordholder 
msh3.Parent = prt3 
if man.Character.Name == "ace28545" then 
prt3.BrickColor = BrickColor.new("New Yeller") 
else 
prt3.BrickColor = BrickColor.new("Really black") -- muahah. whenever someone uses this gunlance, the handle's color becomes the 
end 
local prt3a = Instance.new("Part") 
prt3a.Material = "SmoothPlastic"
prt3a.formFactor = 1 
prt3a.CanCollide = false 
prt3a.Name = "LanceP3a" 
prt3a.Locked = true 
prt3a.Size = Vector3.new(1,1,1) 
prt3a.Parent = swordholder 
msh3a.Parent = prt3a 
prt3a.BrickColor = BrickColor.new("Really black") 
local prt4 = Instance.new("Part") 
prt4.Material = "SmoothPlastic"
prt4.formFactor = 1 
prt4.CanCollide = false 
prt4.Name = "Lance" 
prt4.Locked = true 
prt4.Size = Vector3.new(1,1,1) 
prt4.Parent = swordholder 
msh4.Parent = prt4 
prt4.BrickColor = BrickColor.new("Really red") 
local prt5 = Instance.new("Part") 
prt5.Material = "SmoothPlastic"
prt5.formFactor = 1 
prt5.CanCollide = false 
prt5.Name = "LanceP3" 
prt5.Locked = true 
prt5.Size = Vector3.new(1,5,1) 
prt5.Parent = swordholder 
msh5.Parent = prt5 
prt5.BrickColor = BrickColor.new("Really red") 
local prt6 = Instance.new("Part")
prt6.Material = "SmoothPlastic" 
prt6.formFactor = 1 
prt6.CanCollide = false 
prt6.Name = "LanceBarrel" 
prt6.Locked = true 
prt6.Size = Vector3.new(2,3,2) 
prt6.Parent = swordholder 
msh6.Parent = prt6 
prt6.BrickColor = BrickColor.new("Really black") 
local prt7 = Instance.new("Part") 
prt7.Material = "Wood"
prt7.formFactor = 1 
prt7.CanCollide = true 
prt7.Name = "SmokePipe" 
prt7.Locked = true 
prt7.Size = Vector3.new(1,1,1) 
prt7.Parent = swordholder 
msh7.Parent = prt7 
prt7.BrickColor = BrickColor.new("Brown") 
local prt8 = Instance.new("Part") 
prt8.Material = "Wood"
prt8.formFactor = 1 
prt8.CanCollide = true 
prt8.Name = "SmokePipe2" 
prt8.Locked = true 
prt8.Size = Vector3.new(1,1,1) 
prt8.Parent = swordholder 
msh8.Parent = prt8 
prt8.BrickColor = BrickColor.new("Brown") 
local fensmuke = Instance.new("Smoke") 
fensmuke.Parent = prt8 
fensmuke.RiseVelocity = 5 
fensmuke.Size = 0.05 
fensmuke.Enabled = false 
fensmuke.Color = Color3.new(0,0,0) 
 
 
 
 
local w1 = Instance.new("Weld") 
w1.Parent = prt1 
w1.Part0 = prt1 
w1.Part1 = man.Character:findFirstChild("Right Arm") 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, -0.9, -0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, 0, 0) 
local w2 = Instance.new("Weld") 
w2.Parent = prt2 
w2.Part0 = prt2 
w2.Part1 = prt1 
w2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, -1.25, -0) 
local w3 = Instance.new("Weld") 
w3.Parent = prt3 
w3.Part0 = prt3 
w3.Part1 = prt1 
w3.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w3.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, 0, 0) 
local w3a = Instance.new("Weld") 
w3a.Parent = prt3a 
w3a.Part0 = prt3a 
w3a.Part1 = prt1 
w3a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w3a.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, -1.75, -0) 
local w4 = Instance.new("Weld") 
w4.Parent = prt4 
w4.Part0 = prt4 
w4.Part1 = prt3a 
w4.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w4.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, -3.5, 0.5) 
local w5 = Instance.new("Weld") 
w5.Parent = prt5 
w5.Part0 = prt5 
w5.Part1 = prt3a 
w5.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w5.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, -2, 0) 
local w6 = Instance.new("Weld") 
w6.Parent = prt6 
w6.Part0 = prt6 
w6.Part1 = prt5 
w6.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w6.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, 0, 0) 
local w7 = Instance.new("Weld") 
w7.Parent = prt7 
w7.Part0 = prt7 
w7.Part1 = man.Character["Left Leg"] 
w7.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(-0.7, 0.4, 0) 
w7.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, 0, 0) 
local w8 = Instance.new("Weld") 
w8.Parent = prt8 
w8.Part0 = prt8 
w8.Part1 = prt7 
w8.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, -1, 0) 
w8.C0 = CFrame.fromEulerAnglesXYZ(1.57, 0,0) * CFrame.new(0, 0, 0) 
 
 
 
-----------Shell Spawn------------ --dunt joo dare remove this. or the universe will explode >:U 
local shellspawn = Instance.new("Part") 
shellspawn.Material = "SmoothPlastic"
shellspawn.formFactor = 1 
shellspawn.CanCollide = false 
shellspawn.Name = "ShellSpawn" 
shellspawn.Locked = true 
shellspawn.Transparency = 1 
shellspawn.Size = Vector3.new(1,1,1) 
shellspawn.Parent = swordholder 
shellspawn.BrickColor = BrickColor.new("Really black") 
local shellw = Instance.new("Weld") 
shellw.Parent = shellspawn 
shellw.Part0 = shellspawn 
shellw.Part1 = prt6 
shellw.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
shellw.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, -2, 0) 
------------------------ 
de = 0 
 
function sword(hit) 
if hit.Parent == nil then return end 
--[[ 
if de == 1 then 
if hit.Name ~= "Base" or hit.Parent.Name ~= ""..man.Name.."" then 
hit:remove() 
end 
end]] 
 
human = hit.Parent:FindFirstChild("Humanoid") 
if human ~= nil and hit.Parent.Name ~= man.Name then 
human.MaxHealth = 100 
human:TakeDamage(damage.Value + damageboost) 
end 
if hit.Name ~= "clonelulz" then 
if hit.Name ~= "ShellBlast" then 
if lightning == true then 
local fenpart = Instance.new("Part") 
fenpart.Material = "SmoothPlastic"
fenpart.Parent = hit 
fenpart.CFrame = hit.CFrame --+ Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1)) 
fenpart.Size = Vector3.new(1,1,1) 
fenpart.CanCollide = false 
local random = math.random(1,2) 
if random == 1 then 
fenpart.BrickColor = BrickColor.new("Really red") 
elseif random == 2 then 
fenpart.BrickColor = BrickColor.new("New Yeller") 
end 
fenpart.Anchored = true 
local fenmesh = Instance.new("BlockMesh") 
fenmesh.Scale = Vector3.new(2,2,2) 
fenmesh.Parent = fenpart 
coroutine.resume(coroutine.create(function() for i = 0,50 do 
wait(0) 
fenpart.CFrame = fenpart.CFrame*CFrame.new(0,0.7,0) * CFrame.fromEulerAnglesXYZ(math.random(-1,1),math.random(-50,50),math.random(-1,1)) 
fenmesh.Scale = fenmesh.Scale - Vector3.new(0.04,0.04,0.04) 
end 
wait() 
fenpart:Remove() end)) 
Textures={"http://www.roblox.com/asset/?id=28031967"} 
--[[DC=Instance.new("Decal") 
DC.Face="Top" 
DC.Name="RingDecal" 
DC.Texture=Textures[math.random(1,#Textures) 
Ring=Instance.new("Part") 
Ring.Name="DarknessRing" 
Ring.TopSurface="Smooth" 
Ring.BottomSurface="Smooth" 
Ring.Anchored=true 
Ring.CanCollide=false 
Ring.formFactor="Symmetric" 
Ring.Transparency=1 
Ring.Size=Vector3.new(1,3,1) 
Ring.CFrame=CFrame.new(hit.Position)*CFrame.fromEulerAnglesXYZ(math.random(-50,50)/14,math.random(-50,50)/14,math.random(-50,50)/14) 
Ring.BrickColor=BrickColor:Yellow() 
Ring.Parent=game.workspace 
local winner=Instance.new("Sound") 
winner.Parent=Ring 
winner.SoundId="http://www.roblox.com/asset/?id=2101148" 
winner.Name="WINNER" 
winner.Pitch=0.5 
winner:Play() 
D=DC:clone() 
D.Parent=Ring 
D=DC:clone() 
D.Face="Bottom" 
D.Parent=Ring 
M=Instance.new("BlockMesh") 
M.Scale=Vector3.new(1,0,1) 
M.Parent=Ring ]]--
coroutine.resume(coroutine.create(function(p,c,v) for i=1, 10 do p.Size=p.Size+Vector3.new(4,0,4) 
 
p.CFrame=c*CFrame.fromEulerAnglesXYZ(0,.5*i,0) wait() p.CFrame=c*CFrame.fromEulerAnglesXYZ(0,.3*i,0) end p.Parent=nil 
 
end),shellspawn.CFrame,P) 
end 
end 
end 
wait(1) 
 
end 
 
 
 
 
 
 
 
 
local billz = Instance.new("ScreenGui") 
billz.Name = "LanceGui" 
local texz = Instance.new("TextButton") 
texz.Size = UDim2.new(0,100,0,30) 
texz.Position = UDim2.new(0,0,0.5,0) 
texz.Parent = billz 
texz.Text = "Disable Gunlance" 
texz.BackgroundColor3 = Color3.new( 1,0,0 ) 
billz.Parent = man.PlayerGui 
local texz2 = Instance.new("TextButton") 
texz2.Size = UDim2.new(0,100,0,30) 
texz2.Position = UDim2.new(0,0,0.5,-30) 
texz2.Parent = billz 
texz2.Text = "Stab" 
texz2.BackgroundColor3 = Color3.new( 1,0,0 ) 
local texz3 = Instance.new("TextButton") 
texz3.Size = UDim2.new(0,100,0,30) 
texz3.Position = UDim2.new(0,0,0.5,30) 
texz3.Parent = billz 
texz3.Text = "Charge" 
texz3.BackgroundColor3 = Color3.new( 1,0,0 ) 
local texz4 = Instance.new("TextButton") 
texz4.Size = UDim2.new(0,100,0,30) 
texz4.Position = UDim2.new(0,0,0.5,-60) 
texz4.Parent = billz 
texz4.Text = "Smash" 
texz4.BackgroundColor3 = Color3.new( 1,0,0 ) 
local texz5 = Instance.new("TextButton") 
texz5.Size = UDim2.new(0,100,0,30) 
texz5.Position = UDim2.new(0,0,0.5,60) 
texz5.Parent = billz 
texz5.Text = "Shell Blast" 
texz5.BackgroundColor3 = Color3.new( 1,0,0 ) 
local texz6 = Instance.new("TextButton") 
texz6.Size = UDim2.new(0,100,0,30) 
texz6.Position = UDim2.new(0,0,0.5,120) 
texz6.Parent = billz 
texz6.Text = "Fen's Fire" 
texz6.BackgroundColor3 = Color3.new( 1,0,0 ) 
local texz7 = Instance.new("TextButton") 
texz7.Size = UDim2.new(0,100,0,30) 
texz7.Position = UDim2.new(0,0,0.5,90) 
texz7.Parent = billz 
texz7.Text = "Shell Blast Reload" 
texz7.BackgroundColor3 = Color3.new( 1,0,0 ) 
local texz8 = Instance.new("TextButton") 
texz8.Size = UDim2.new(0,100,0,30) 
texz8.Position = UDim2.new(0.098,0,0.5,0) 
texz8.Parent = billz 
texz8.Text = "Get Smoke Pipe" 
texz8.BackgroundColor3 = Color3.new( 1,0,0 ) 
local texz9 = Instance.new("TextButton") 
texz9.Size = UDim2.new(0,100,0,30) 
texz9.Position = UDim2.new(0.098,0,0.5,30) 
texz9.Parent = billz 
texz9.Text = "Put Away Smoke Pipe" 
texz9.BackgroundColor3 = Color3.new( 1,0,0 ) 
local texz10 = Instance.new("TextButton") 
texz10.Size = UDim2.new(0,100,0,30) 
texz10.Position = UDim2.new(0.098,0,0.5,-30) 
texz10.Parent = billz 
texz10.Text = "Discard Smoke Pipe" 
texz10.BackgroundColor3 = Color3.new( 1,0,0 ) 
local texz11 = Instance.new("TextButton") 
texz11.Size = UDim2.new(0,100,0,30) 
texz11.Position = UDim2.new(0,0,0.5,150) 
texz11.Parent = billz 
texz11.Text = "Laser Fen's Fire" 
texz11.BackgroundColor3 = Color3.new( 1,0,0 ) 
--Movement&Damage---- 
 
 
local plusdmg = Instance.new("TextButton") 
plusdmg.Size = UDim2.new(0,100,0,15) 
plusdmg.Position = UDim2.new(0,0,0.5,-60-15) 
plusdmg.Parent = billz 
plusdmg.Text = "+ Damage | - Move" 
plusdmg.BackgroundColor3 = Color3.new( 1,0,0 ) 
 
function plusclick() 
if move.Value <= 1 then return end 
damageboost = damageboost + 2 
move.Value = move.Value - 1 
end 
 
plusdmg.MouseButton1Click:connect(plusclick) 
 
 
local minusdmg = Instance.new("TextButton") 
minusdmg.Size = UDim2.new(0,100,0,15) 
minusdmg.Position = UDim2.new(0,0,0.5,-60-30) 
minusdmg.Parent = billz 
minusdmg.Text = "- Damage | + Move" 
minusdmg.BackgroundColor3 = Color3.new( 1,0,0 ) 
 
function minusclick() 
if damageboost <= 0 then return end 
damageboost = damageboost - 2 
move.Value = move.Value + 1 
end 
 
minusdmg.MouseButton1Click:connect(minusclick) 
 
local movegui = Instance.new("TextButton") 
movegui.Size = UDim2.new(0,100,0,15) 
movegui.Position = UDim2.new(0,0,0.5,-60-45) 
movegui.Parent = billz 
movegui.Text = "WalkSpeed : " ..move.Value 
movegui.BackgroundColor3 = Color3.new( 1,0,0 ) 
local boostgui = Instance.new("TextButton") 
boostgui.Size = UDim2.new(0,100,0,15) 
boostgui.Position = UDim2.new(0,0,0.5,-60-60) 
boostgui.Parent = billz 
boostgui.Text = "DamageBoost : " ..damageboost 
boostgui.BackgroundColor3 = Color3.new( 1,0,0 ) 
local damagegui = Instance.new("TextButton") 
damagegui.Size = UDim2.new(0,100,0,15) 
damagegui.Position = UDim2.new(0,0,0.5,-60-75) 
damagegui.Parent = billz 
damagegui.Text = "Damage : " ..damage.Value 
damagegui.BackgroundColor3 = Color3.new( 1,0,0 ) 
local damagegui = Instance.new("TextButton") 
damagegui.Size = UDim2.new(0,100,0,15) 
damagegui.Position = UDim2.new(0,0,0.5,-60-75) 
damagegui.Parent = billz 
damagegui.Text = "Damage : " ..damage.Value 
damagegui.BackgroundColor3 = Color3.new( 1,0,0 ) 
local shellgui = Instance.new("TextButton") 
shellgui.Size = UDim2.new(0,100,0,15) 
shellgui.Position = UDim2.new(0,0,0.5,-60-90) 
shellgui.Parent = billz 
shellgui.Text = "Shells : " ..Shells.Value 
shellgui.BackgroundColor3 = Color3.new( 1,0,0 ) 
local Fengui = Instance.new("TextButton") 
Fengui.Size = UDim2.new(0,100,0,15) 
Fengui.Position = UDim2.new(0,0,0.5,-60-105) 
Fengui.Parent = billz 
Fengui.Text = "Fen's Fire Status: Ready" 
Fengui.BackgroundColor3 = Color3.new( 1,0,0 ) 
 
-----------End-------------- --end of GUI making of your wondering :3 
 
conna = prt4.Touched:connect(sword) 
conna2 = prt5.Touched:connect(sword) 
 
player = man 
local ch = man.Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
-- 
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
_G.L = LW 
for i = 0, 1, 0.05 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25*i, 0, -0.5*i) 
RW.C1 = CFrame.new(0,0.5,0)* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7*i, 0, 0.8*i) 
LW.C1 = CFrame.new(-0.3*i, 0.5+1.2*i, 0) 
end 
 
function wind() -- lol not using this function :U 
local rock = Instance.new("Part") 
rock.Material = "SmoothPlastic"
rock.Shape = 0 
rock.Material = "Slate" 
rock.BrickColor = BrickColor.new("Really black") 
rock.TopSurface = 0 
rock.BottomSurface = 0 
rock.Parent = game.Workspace 
rock.Size = Vector3.new(3,3,3) 
rock.Position = prt1.CFrame.p + man.Character.Torso.CFrame.lookVector * 3 
rock.Velocity = man.Character.Torso.CFrame.lookVector * 150 + Vector3.new(0,25,0) 
game:GetService("Debris"):addItem(rock,5) 
function dam(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
local hum = hit.Parent:findFirstChild("Humanoid") 
hum:TakeDamage(20) 
hum.PlatformStand = true 
hum.Torso.RotVelocity = Vector3.new(50,0,0) 
wait(0.5) 
hum.PlatformStand = false 
end 
end 
com = rock.Touched:connect(dam) 
Spawn = rock 
end 
 
 
function swoosheffect() --lol this be something meant for another script but it got strangely added here XD 
local efm = Instance.new("BlockMesh") 
efm.Scale = Vector3.new(0.1,1,0.5) 
local efm2 = Instance.new("SpecialMesh") 
efm2.Scale = Vector3.new(0.11,0.5,0.51) 
efm2.MeshType = "Wedge" 
local ef = Instance.new("Part") 
ef.Material = "SmoothPlastic"
ef.formFactor = 1 
ef.CanCollide = false 
ef.Name = "Sword1C" 
ef.Locked = true 
ef.Size = Vector3.new(1,5,1) 
efm.Parent = ef 
ef.CFrame = prt1.CFrame 
if darkmode == false then 
ef.BrickColor = BrickColor.new(1005) 
elseif darkmode == true then 
ef.BrickColor = BrickColor.new("Bright violet") 
end 
ef.Transparency = 0.5 
local ef2 = Instance.new("Part") 
ef2.Material = "SmoothPlastic"
ef2.formFactor = 1 
ef2.CanCollide = false 
ef2.Name = "SwordP4C" 
ef2.Locked = true 
ef2.Size = Vector3.new(1,1,1) 
efm2.Parent = ef2 
ef2.CFrame = prt4.CFrame 
if darkmode == false then 
ef2.BrickColor = BrickColor.new(1005) 
elseif darkmode == true then 
ef2.BrickColor = BrickColor.new("Bright violet") 
end 
ef.Anchored = true 
ef2.Anchored = true 
ef.Parent = game.Workspace 
ef2.Parent = game.Workspace 
ef2.Transparency = 0.5 
game:getService("Debris"):addItem(ef,1) 
game:getService("Debris"):addItem(ef2,1) 
end 
 
 
function stabef() 
local efm = Instance.new("SpecialMesh") 
efm.Scale = Vector3.new(1,1,1) 
efm.MeshType = "Sphere" 
local ef = Instance.new("Part") 
ef.Material = "SmoothPlastic"
ef.formFactor = 0 
ef.CanCollide = false 
ef.Name = "SwordP4C" 
ef.Locked = true 
ef.Size = Vector3.new(1,1,1) 
efm.Parent = ef 
ef.CFrame = prt4.CFrame 
ef.BrickColor = BrickColor.new(1005) 
ef.Anchored = true 
ef.Parent = game.Workspace 
for i = 0,1 , 0.05 do 
wait() 
ef.Transparency = 1*i 
efm.Scale = Vector3.new(10*i,10*i,10*i) 
end 
ef:remove() 
end 
 
function gunshell() 
local c = game.Workspace:GetChildren(); 
for i = 1, #c do 
local hum = c[i]:findFirstChild("Humanoid") 
if hum ~= nil and hum.Health ~= 0 then 
local head = c[i]:findFirstChild("Head"); 
if head ~= nil then 
local targ = head.Position - shellspawn.Position; 
local mag = targ.magnitude; 
if mag <= 7.5 and c[i].Name ~= man.Name then 
hum:TakeDamage(25) 
hum:TakeDamage(damage.Value + damageboost) 
end 
end 
end 
end 
end 
 
--[[ 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25, 0, -0.5) 
RW.C1 = CFrame.new(0,0.5,0)* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(-0.3, 0.5+1.2, 0) 
 
]] -- why cant I just merge these 2 together? :U 
--[[ 
for i = 0, 1, 0.1 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25+1*i,0,-0.5+math.rad(-20)*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0.5*i, 0.8) 
LW.C1 = CFrame.new(0, 1.7, 0) 
end 
]] 
function shellblast() 
local mesh = Instance.new("SpecialMesh") 
mesh.MeshType = "Sphere" 
local shell = Instance.new("Part") 
shell.Material = "SmoothPlastic"
mesh.Parent = shell 
local smoke = Instance.new("Smoke") 
smoke.Color = Color3.new(0.1,0.1,0.1) 
smoke.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(1,1,1) 
shell.CFrame = shellspawn.CFrame -- + shellspawn.CFrame.lookVector * 2 
shell.Parent = swordholder 
shell.Transparency = 0 
shell.Name = "ShellBlast" 
smoke.RiseVelocity = 10 
smoke.Size = 0.25 
shell.BrickColor = BrickColor.new("Bright yellow") 
gunshell() 
local soundzz = Instance.new("Sound") 
soundzz.SoundId = "http://www.roblox.com/asset/?id=2248511" 
soundzz.Volume = 1 
soundzz.Pitch = 1 
soundzz.Parent = prt1 
wait() 
soundzz:Play() 
for i = 0 , 1 , 0.15 do 
wait() 
mesh.Scale = Vector3.new(10*i,8*i,10*i) 
shell.Transparency = 1*i 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25+0.5*i,0,-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7+0.5*i, 0, 0.8) 
LW.C1 = CFrame.new(0, 1.7, 0) 
end 
shell.Transparency = 1 
smoke.Enabled = false 
soundzz.Parent = nil 
game:GetService("Debris"):addItem(shell,3) 
for i = 0 , 1 , 0.1 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.75-0.5*i,0,-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.2-0.5*i, 0, 0.8) 
LW.C1 = CFrame.new(0, 1.7, 0) 
 
end 
end 
 
function noblast() 
for i = 0 , 1 , 0.15 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25+0.5*i,0,-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7+0.5*i, 0, 0.8) 
LW.C1 = CFrame.new(0, 1.7, 0) 
end 
for i = 0 , 1 , 0.1 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.75-0.5*i,0,-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.2-0.5*i, 0, 0.8) 
LW.C1 = CFrame.new(0, 1.7, 0) 
 
end 
end 
 
function xtrashellblast2() -- lol what a very common function name XD 
local mesh = Instance.new("SpecialMesh") 
mesh.MeshType = "Sphere" 
local shell = Instance.new("Part") 
shell.Material = "SmoothPlastic"
mesh.Parent = shell 
local smoke = Instance.new("Smoke") 
smoke.Color = Color3.new(0.1,0.1,0.1) 
smoke.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(1,1,1) 
shell.CFrame = shellspawn.CFrame -- + shellspawn.CFrame.lookVector * 2 
shell.Parent = swordholder 
shell.Transparency = 0 
shell.Name = "ShellBlast" 
smoke.RiseVelocity = 10 
smoke.Size = 0.25 
shell.BrickColor = BrickColor.new("Bright yellow") 
local mesh2 = Instance.new("SpecialMesh") 
mesh2.MeshType = "Sphere" 
local shell2 = Instance.new("Part") 
shell2.Material = "SmoothPlastic"
mesh2.Parent = shell2 
local smoke2 = Instance.new("Smoke") 
smoke2.Color = Color3.new(0.1,0.1,0.1) 
smoke2.Parent = shell2 
shell2.Anchored = true 
shell2.formFactor = 1 
shell2.Size = Vector3.new(1,1,1) 
shell2.CFrame = shellspawn.CFrame -- + shellspawn.CFrame.lookVector * 4 
shell2.Parent = swordholder 
shell2.Transparency = 0 
smoke2.RiseVelocity = 10 
smoke2.Size = 0.25 
shell2.BrickColor = BrickColor.new("Bright yellow") 
gunshell() 
local soundzz = Instance.new("Sound") 
soundzz.SoundId = "http://www.roblox.com/asset/?id=2248511" 
soundzz.Volume = 1 
soundzz.Pitch = 1 
soundzz.Parent = prt1 
local soundzz2 = Instance.new("Sound") 
soundzz2.SoundId = "http://www.roblox.com/asset/?id=2248511" 
soundzz2.Volume = 1 
soundzz2.Pitch = 0.5 
soundzz2.Parent = prt1 
local soundzz3 = Instance.new("Sound") 
soundzz3.SoundId = "http://www.roblox.com/asset/?id=2248511" 
soundzz3.Volume = 1 
soundzz3.Pitch = 1.5 
soundzz3.Parent = prt1 
local soundzz4 = Instance.new("Sound") 
soundzz4.SoundId = "http://www.roblox.com/asset/?id=2248511" 
soundzz4.Volume = 1 
soundzz4.Pitch = 0.9 
soundzz4.Parent = Data 
wait() 
soundzz:Play() 
soundzz2:Play() 
soundzz3:Play() 
soundzz4:Play() 
for i = 0 , 1 , 0.15 do 
wait() 
mesh.Scale = Vector3.new(10*i,8*i,10*i) 
shell.Transparency = 1*i 
mesh2.Scale = Vector3.new(10*i,8*i,10*i) 
shell2.Transparency = 1*i 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25+0.5*i,0,-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7+0.5*i, 0, 0.8) 
LW.C1 = CFrame.new(0, 1.7, 0) 
end 
shell.Transparency = 1 
shell2.Transparency = 1 
smoke.Enabled = false 
smoke2.Enabled = false 
soundzz.Parent = nil 
game:GetService("Debris"):addItem(shell,3) 
game:GetService("Debris"):addItem(shell2,3) 
for i = 0 , 1 , 0.1 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.75-0.5*i,0,-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.2-0.5*i, 0, 0.8) 
LW.C1 = CFrame.new(0, 1.7, 0) 
end 
end 
 
function smokepipe() 
smokin = true 
LSH.Parent = nil 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
w7.Part1 = man.Character["Left Arm"] 
w7.C1 = CFrame.fromEulerAnglesXYZ(-0.5, -1, -0.8) * CFrame.new(1.1, 0.5, -0.8) 
for i = 0, 1, 0.1 do 
wait(0.05) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.5*i,1*i,0.3*i) 
 
end 
smoke = 1 
while smoke == 1 do 
fensmuke.Enabled = true 
fensmuke.RiseVelocity = math.random(3, 10) 
wait(math.random(0, 5)) 
fensmuke.Enabled = false 
wait(math.random(0, 5)) 
end 
end 
 
function laserFen() 
if fiahreload == true then 
Fengui.Text = "Fen's Fire Status: Cooling..." 
fiahreload = false 
for i = 0 , 1 , 0.05 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25+-0.3*i,0,-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7+-0.5*i, 0, 0.8) 
LW.C1 = CFrame.new(0, 1.7, 0) 
end 
man.Character.Humanoid.WalkSpeed = 0.01 
local Fen = shellspawn:Clone() --lol clone ftw X3 
Fen.Parent = swordholder 
Fen.Position = shellspawn.Position 
Fen.Anchored = false 
Fen.Transparency = 1 
Fen.formFactor = 1 
Fen.Size = Vector3.new(1,1,1) 
Fen.BrickColor = BrickColor.new(1005) 
Fen.CFrame = shellspawn.CFrame -- + shellspawn.CFrame.lookVector * 2 
local fenmsh = Instance.new("CylinderMesh") 
fenmsh.Scale = Vector3.new(0.5,2,0.5) 
fenmsh.Parent = Fen 
local fenwel = Instance.new("Weld") 
fenwel.Parent = game.workspace 
fenwel.Part0 = Fen 
fenwel.Part1 = shellspawn 
for i = 0, 0.5, 0.01 do 
wait() 
local ef = Instance.new("Part") 
ef.Material = "SmoothPlastic"
ef.Parent = Fen 
ef.Shape = "Ball" 
ef.Name = "clonelulz" 
ef.CanCollide = false 
ef.formFactor = 1 
ef.TopSurface = "Smooth" 
ef.BottomSurface = "Smooth" 
ef.CFrame = Fen.CFrame + Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10)) 
ef.Size = Vector3.new(1,1,1) 
ef.BrickColor = BrickColor.new(1005) 
local body = Instance.new("BodyPosition") 
body.Parent = ef 
body.position = Fen.Position 
coroutine.resume(coroutine.create(function() for i = 0, 1, 0.05 do wait() ef.Transparency = ef.Transparency + 0.05 
 
ef.Reflectance = ef.Reflectance + 0.02 end ef:Remove() end)) 
Fen.Transparency = Fen.Transparency - 0.02 
Fen.Reflectance = Fen.Reflectance + 0.01 
local bom = Instance.new("Explosion") 
bom.Parent = game.workspace 
bom.Position = Fen.Position 
bom.BlastRadius = 0 
end 
Fen.BrickColor = BrickColor.new(1005) 
local fenpart1 = prt1:Clone() 
fenpart1.Parent = swordholder 
fenpart1.Transparency = 1 
fenpart1.BrickColor = BrickColor.new(1005) 
fenpart1.Mesh.Scale = Vector3.new(0.55,1.5,1) 
local fenpart2 = prt2:Clone() 
fenpart2.Parent = swordholder 
fenpart2.Transparency = 1 
fenpart2.BrickColor = BrickColor.new(1005) 
fenpart2.Mesh.Scale = Vector3.new(1.5,1,1.5) 
local fenpart3 = prt3:Clone() 
fenpart3.Parent = swordholder 
fenpart3.Transparency = 1 
fenpart3.BrickColor = BrickColor.new(1005) 
fenpart3.Mesh.Scale = Vector3.new(1.01,1.75,1.01) 
local fenpart3a = prt3a:Clone() 
fenpart3a.Parent = swordholder 
fenpart3a.Transparency = 1 
fenpart3a.BrickColor = BrickColor.new(1005) 
fenpart3a.Mesh.Scale = Vector3.new(1.5,1,1.5) 
local fenpart4 = prt4:Clone() 
fenpart4.Parent = swordholder 
fenpart4.Transparency = 1 
fenpart4.BrickColor = BrickColor.new(1005) 
fenpart4.Mesh.Scale = Vector3.new(1.5,3.5,1.5) 
local fenpart5 = prt5:Clone() 
fenpart5.Parent = swordholder 
fenpart5.Transparency = 1 
fenpart5.BrickColor = BrickColor.new(1005) 
fenpart5.Mesh.Scale = Vector3.new(1.25,1.5,1.25) 
local fenpart6 = prt6:Clone() 
fenpart6.Parent = swordholder 
fenpart6.Transparency = 1 
fenpart6.BrickColor = BrickColor.new(1005) 
fenpart6.Mesh.Scale = Vector3.new(1.25,1.5,1.25) 
local fenweld1 = Instance.new("Weld") 
fenweld1.Parent = game.workspace 
fenweld1.Part0 = fenpart1 
fenweld1.Part1 = prt1 
local fenweld2 = Instance.new("Weld") 
fenweld2.Parent = game.workspace 
fenweld2.Part0 = fenpart2 
fenweld2.Part1 = prt2 
local fenweld3 = Instance.new("Weld") 
fenweld3.Parent = game.workspace 
fenweld3.Part0 = fenpart3 
fenweld3.Part1 = prt3 
local fenweld3a = Instance.new("Weld") 
fenweld3a.Parent = game.workspace 
fenweld3a.Part0 = fenpart3a 
fenweld3a.Part1 = prt3a 
local fenweld4 = Instance.new("Weld") 
fenweld4.Parent = game.workspace 
fenweld4.Part0 = fenpart4 
fenweld4.Part1 = prt4 
local fenweld5 = Instance.new("Weld") 
fenweld5.Parent = game.workspace 
fenweld5.Part0 = fenpart5 
fenweld5.Part1 = prt5 
local fenweld6 = Instance.new("Weld") 
fenweld6.Parent = game.workspace 
fenweld6.Part0 = fenpart6 
fenweld6.Part1 = prt6 
for i = 0, 0.5, 0.01 do 
wait() 
local ef = Instance.new("Part") 
ef.Material = "SmoothPlastic"
ef.Parent = Fen 
ef.Shape = "Ball" 
ef.Name = "clonelulz" 
ef.CanCollide = false 
ef.formFactor = 1 
ef.TopSurface = "Smooth" 
ef.BottomSurface = "Smooth" 
ef.CFrame = Fen.CFrame + Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10)) 
ef.Size = Vector3.new(1,1,1) 
ef.BrickColor = BrickColor.new(1005) 
fenpart1.Transparency = fenpart1.Transparency - 0.015 
fenpart2.Transparency = fenpart2.Transparency - 0.015 
fenpart3.Transparency = fenpart3.Transparency - 0.015 
fenpart3a.Transparency = fenpart3a.Transparency - 0.015 
fenpart4.Transparency = fenpart4.Transparency - 0.015 
fenpart5.Transparency = fenpart5.Transparency - 0.015 
fenpart6.Transparency = fenpart5.Transparency - 0.015 
local body = Instance.new("BodyPosition") 
body.Parent = ef 
body.position = Fen.Position 
coroutine.resume(coroutine.create(function() for i = 0, 1, 0.05 do wait() ef.Transparency = ef.Transparency + 0.05 
 
ef.Reflectance = ef.Reflectance + 0.02 end ef:Remove() end)) 
Fen.Transparency = Fen.Transparency - 0.02 
Fen.Reflectance = Fen.Reflectance - 0.01 
local bom = Instance.new("Explosion") 
bom.Parent = game.workspace 
bom.Position = Fen.Position 
bom.BlastRadius = 0 
end 
wait(1) 
man.Character.Humanoid.WalkSpeed = 0 
local fenbeam = Instance.new("Part") 
fenbeam.Material = "SmoothPlastic"
fenbeam.Parent = swordholder 
fenbeam.Size = Vector3.new(10, 10, 500) 
fenbeam.CFrame = man.Character.Torso.CFrame * CFrame.new(0, 0, -260) 
fenbeam.Anchored = true 
fenbeam.BrickColor = BrickColor.new(1005) 
fenbeam.Name = "clonelulz" 
fenbeam.CanCollide = false 
fenbeam.formFactor = 1 
fenbeam.TopSurface = "Smooth" 
fenbeam.BottomSurface = "Smooth" 
function onTouched(hit) 
wait() 
hit:BreakJoints() 
hit.Velocity = man.Character.Torso.CFrame.lookVector * 150 + Vector3.new(math.random(-5,5), math.random(10,20), math.random(-5,5)) 
if math.random(1, 20) == 1 then 
for i = 0, 1, 0.1 do 
hit.Transparency = hit.Transparency + 0.001 
end 
hit:Remove() 
end 
end 
fenbeam.Touched:connect(onTouched) 
Fen:Remove() 
local soundzz = Instance.new("Sound") 
soundzz.SoundId = "http://www.roblox.com/asset/?id=2248511" 
soundzz.Volume = 0.5 
soundzz.Pitch = 1 
soundzz.Parent = game.workspace 
local soundzz2 = Instance.new("Sound") 
soundzz2.SoundId = "http://www.roblox.com/asset/?id=2248511" 
soundzz2.Volume = 0.5 
soundzz2.Pitch = 0.5 
soundzz2.Parent = game.workspace 
local soundzz3 = Instance.new("Sound") 
soundzz3.SoundId = "http://www.roblox.com/asset/?id=2248511" 
soundzz3.Volume = 0.5 
soundzz3.Pitch = 1.5 
soundzz3.Parent = game.workspace 
local soundzz4 = Instance.new("Sound") 
soundzz4.SoundId = "http://www.roblox.com/asset/?id=2248511" 
soundzz4.Volume = 0.5 
soundzz4.Pitch = 0.9 
soundzz4.Parent = game.workspace 
wait() 
soundzz:Play() 
soundzz2:Play() 
soundzz3:Play() 
soundzz4:Play() 
local pos = fenbeam.CFrame 
for i = 0, 0.5, 0.01 do 
wait() 
coroutine.resume(coroutine.create(function() for i = 0, 1, 0.05 do wait() effect.Transparency = effect.Transparency + 0.05 
 
effect.Reflectance = effect.Reflectance + 0.05 end effect:Remove() end)) 
fenbeam.CFrame = pos + Vector3.new(math.random(-1,1), math.random(-1,1), math.random(-1,1)) --* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
for i = 0, 0.5, 0.01 do 
wait() 
fenbeam.Transparency = fenbeam.Transparency + 0.05 
fenbeam.CFrame = pos + Vector3.new(math.random(-0.5,0.5), math.random(-0.5,0.5), math.random(-0.5,0.5)) --* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
wait() 
fenbeam:Remove() 
local vel = Instance.new("BodyVelocity") 
vel.Parent = man.Character.Torso 
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*2 
vel.velocity = man.Character.Torso.CFrame.lookVector * -20 
local fensmoke = Instance.new("Smoke") 
fensmoke.Color = Color3.new(0.1,0.1,0.1) 
fensmoke.Parent = shellspawn 
fensmoke.RiseVelocity = 10 
fensmoke.Size = 0.25 
wait() 
noblast() 
fenbeam:Remove() 
fensmoke.Enabled = false 
local fensmoke2 = Instance.new("Smoke") 
fensmoke2.Parent = prt5 
fensmoke2.RiseVelocity = 0 
fensmoke2.Size = 0.1 
fensmoke2.Opacity = 0.10 
wait() 
vel:Remove() 
lightning = false 
man.Character.Humanoid.WalkSpeed = 35 
thund = true 
function onTouched(hit) 
human = hit.Parent:FindFirstChild("Humanoid") 
if human ~= nil and hit.Parent.Name ~= man.Name then 
human:TakeDamage(30) 
end 
if hit.Name ~= "clonelulz" then 
if hit.Name ~= "ShellBlast" then 
if hit.Name ~= "Base" then 
if thund == true then 
local fenparteh = Instance.new("Part") 
fenparteh.Parent = hit 
fenparteh.CFrame = hit.CFrame --+ Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1)) 
fenparteh.Size = Vector3.new(1,1,1) 
fenparteh.CanCollide = false 
local random = math.random(1,2) 
if random == 1 then 
fenparteh.BrickColor = BrickColor.new("Really red") 
elseif random == 2 then 
fenparteh.BrickColor = BrickColor.new("New Yeller") 
end 
fenparteh.Anchored = true 
local fenmesh = Instance.new("BlockMesh") 
fenmesh.Scale = Vector3.new(2,2,2) 
fenmesh.Parent = fenparteh 
coroutine.resume(coroutine.create(function() for i = 0,70 do 
wait(0) 
fenparteh.CFrame = fenparteh.CFrame*CFrame.new(0,0.7,0) * CFrame.fromEulerAnglesXYZ(math.random(-1,1),math.random(-50,50),math.random(-1,1)) 
fenmesh.Scale = fenmesh.Scale - Vector3.new(0.02,0.02,0.02) 
end 
wait() 
fenparteh:Remove() end)) 
--[[Textures={"http://www.roblox.com/asset/?id=28031967"} 
DC=Instance.new("Decal") 
DC.Face="Top" 
DC.Name="RingDecal" 
DC.Texture=Textures[math.random(1,#Textures)] 
Ring=Instance.new("Part") 
Ring.Name="DarknessRing" 
Ring.TopSurface="Smooth" 
Ring.BottomSurface="Smooth" 
Ring.Anchored=true 
Ring.CanCollide=false 
Ring.formFactor="Symmetric" 
Ring.Transparency=1 
Ring.Size=Vector3.new(1,3,1) 
Ring.CFrame=CFrame.new(hit.Position)*CFrame.fromEulerAnglesXYZ(math.random(-50,50)/14,math.random(-50,50)/14,math.random(-50,50)/14) 
Ring.BrickColor=BrickColor:Yellow() 
Ring.Parent=game.workspace 
local winner=Instance.new("Sound") 
winner.Parent=Ring 
winner.SoundId="http://www.roblox.com/asset/?id=2101148" 
winner.Name="WINNER" 
winner.Pitch=0.5 
winner:Play() 
D=DC:clone() 
D.Parent=Ring 
D=DC:clone() 
D.Face="Bottom" 
D.Parent=Ring 
M=Instance.new("BlockMesh") 
M.Scale=Vector3.new(1,0,1) 
M.Parent=Ring ]]--
coroutine.resume(coroutine.create(function(p,c,v) for i=1, 20 do p.Size=p.Size+Vector3.new(4,0,4) 
 
p.CFrame=c*CFrame.fromEulerAnglesXYZ(0,.5*i,0) wait() p.CFrame=c*CFrame.fromEulerAnglesXYZ(0,.3*i,0) end p.Parent=nil 
 
end),shellspawn.CFrame,P) 
local p = Instance.new("Part") 
p.Material = "SmoothPlastic"
p.Parent = game.workspace 
p.CFrame = hit.CFrame 
p.TopSurface = "Smooth" 
p.BottomSurface = "Smooth" 
p.CanCollide = false 
p.Anchored = true 
p.Transparency = 0 
if random == 1 then 
p.BrickColor = BrickColor.new("Really red") 
elseif random == 2 then 
p.BrickColor = BrickColor.new("New Yeller") 
end 
p.Size = Vector3.new(1,1,1) 
local m = Instance.new("SpecialMesh") 
m.Parent = p 
m.Scale = Vector3.new(0.1,0.1,0.1) 
m.MeshType = "Sphere" 
coroutine.resume(coroutine.create(function() for i = 0, 1, 0.01 do 
wait() 
m.Scale = m.Scale + Vector3.new(0.3,0.3,0.3) 
p.Transparency = p.Transparency + 0.01 
end 
p:Remove() end)) 
end 
end 
end 
end 
end 
prt4.Touched:connect(onTouched) 
wait(30) 
thund = false 
lightning = true 
man.Character.Humanoid.WalkSpeed = move.Value 
for i = 0, 1, 0.01 do 
wait() 
fenpart1.Transparency = fenpart1.Transparency + 0.02 
fenpart2.Transparency = fenpart2.Transparency + 0.02 
fenpart3.Transparency = fenpart3.Transparency + 0.02 
fenpart3a.Transparency = fenpart3a.Transparency + 0.02 
fenpart4.Transparency = fenpart4.Transparency + 0.02 
fenpart5.Transparency = fenpart5.Transparency + 0.02 
fenpart6.Transparency = fenpart6.Transparency + 0.02 
end 
wait(5) 
fenpart1:Remove() 
fenpart2:Remove() 
fenpart3:Remove() 
fenpart3a:Remove() 
fenpart4:Remove() 
fenpart5:Remove() 
fenpart6:Remove() 
fensmoke:Remove() 
--wait(120) 
fensmoke2.Enabled = false  fensmoke2.Enabled = false 
Fengui.Text = "Fen's Fire Status: Ready" 
fiahreload = true 
wait(7) 
fensmoke2:Remove() 
end 
end 
 
function removesmokepipe() 
smokin = false 
smoke = 0 
fensmuke.Enabled = false 
LW.Parent = nil 
LSH.Parent = player.Character.Torso 
w7.Parent = nil 
texz8:Remove() 
texz9:Remove() 
texz10:Remove() 
end 
 
function nosmokepipe() 
smokin = false 
if smoke == 1 then 
smoke = 0 
fensmuke.Enabled = false 
for i = 0, 1, 0.1 do 
wait(0.05) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5+2.5*-i,2*i-2,0) 
 
end 
wait() 
LW.Parent = nil 
LSH.Parent = player.Character.Torso 
w7.Part1 = man.Character["Left Leg"] 
w7.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(-0.7, 0.4, 0) 
end 
end 
 
function Fenfire() --lol it be Fenrier's Fen's Fire script :D oh and I really did make this Fen's Fire, not linerider64 :U 
if fiahreload == true then 
Fengui.Text = "Fen's Fire Status: Cooling..." 
fiahreload = false 
for i = 0 , 1 , 0.05 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25+-0.3*i,0,-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7+-0.5*i, 0, 0.8) 
LW.C1 = CFrame.new(0, 1.7, 0) 
end 
man.Character.Humanoid.WalkSpeed = 0.01 
local Fen = shellspawn:Clone() --lol clone ftw X3 
Fen.Parent = swordholder 
Fen.Position = shellspawn.Position 
Fen.Anchored = false 
Fen.Transparency = 1 
Fen.formFactor = 1 
Fen.Size = Vector3.new(1,1,1) 
Fen.BrickColor = BrickColor.new(1005) 
Fen.CFrame = shellspawn.CFrame -- + shellspawn.CFrame.lookVector * 2 
local fenmsh = Instance.new("CylinderMesh") 
fenmsh.Scale = Vector3.new(0.5,2,0.5) 
fenmsh.Parent = Fen 
local fenwel = Instance.new("Weld") 
fenwel.Parent = game.workspace 
fenwel.Part0 = Fen 
fenwel.Part1 = shellspawn 
for i = 0, 0.5, 0.01 do 
wait() 
Fen.Transparency = Fen.Transparency - 0.02 
Fen.Reflectance = Fen.Reflectance + 0.01 
local bom = Instance.new("Explosion") 
bom.Parent = game.workspace 
bom.Position = Fen.Position 
bom.BlastRadius = 0 
end 
Fen.BrickColor = BrickColor.new("Institutional white") 
for i = 0, 0.5, 0.01 do 
wait() 
Fen.Transparency = Fen.Transparency - 0.02 
Fen.Reflectance = Fen.Reflectance - 0.01 
local bom = Instance.new("Explosion") 
bom.Parent = game.workspace 
bom.Position = Fen.Position 
bom.BlastRadius = 0 
end 
wait(1) 
man.Character.Humanoid.WalkSpeed = 0 
local fenbewm = Instance.new("Explosion") 
fenbewm.Parent = game.workspace 
fenbewm.BlastRadius = 15 
fenbewm.Position = Fen.Position 
local f = Instance.new("ForceField") 
f.Parent = man.Character 
local vel = Instance.new("BodyVelocity") 
vel.Parent = man.Character.Torso 
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*2 
vel.velocity = man.Character.Torso.CFrame.lookVector * -20 
Fen:Remove() 
xtrashellblast2() 
wait(1) 
f:Remove() 
vel:Remove() 
local fensmoke = Instance.new("Smoke") 
fensmoke.Color = Color3.new(0.1,0.1,0.1) 
fensmoke.Parent = shellspawn 
fensmoke.RiseVelocity = 10 
fensmoke.Size = 0.25 
man.Character.Humanoid.WalkSpeed = move.Value 
wait(1) 
fensmoke.Enabled = false 
local fensmoke2 = Instance.new("Smoke") 
fensmoke2.Parent = prt5 
fensmoke2.RiseVelocity = 0 
fensmoke2.Size = 0.1 
fensmoke2.Opacity = 0.10 
wait(5) 
fensmoke:Remove() 
wait(10) 
fensmoke2.Enabled = false 
Fengui.Text = "Fen's Fire Status: Ready" 
fiahreload = true 
wait(7) 
fensmoke2:Remove() 
end 
end -- end of Fenrier's Fen's Fire script :3 
 
function horslash() -- whee I used to use this in my gunlance but not anymore :3 
for i = 0, 1, 0.05 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.3+1.2*i, -0.5*i, -0.5+i) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
--L.C0 = CFrame.new(-1.0, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.7, 0, 1) 
LW.C1 = CFrame.new(0, 0.5-i, 0)w1.Part1 = man.Character:findFirstChild("Right Arm") 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, -0.9, 0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(110), 0, 0) * CFrame.new(0, 0, 0) 
 
end 
---------------------------------------- 
for i = 0, 1, 0.1 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5-1.7*i, 0.5+0.5*i) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -2.2, 1) 
LW.C0 = CFrame.new(-1-0.5*i, 0.5, -0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8-1.2*i) 
end 
for i = 0, 1, 0.2 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -2.2-1*i, 1) 
end 
wait(0.1) 
-------------------------------------- 
for i = 0, 1, 0.05 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5-2.35*i, -2.8+2.8*i, 1-1.5*i) 
--RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, -0.4+1.2*i) 
LW.C1 = CFrame.new(0, -0.5+i*2, 0) 
--LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, -0.9, -0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, 0, 0) 
end 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25, 0, -0.5) 
RW.C1 = CFrame.new(0,0.5,0)* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(-0.3, 0.5+1.2, 0) 
end 
 
 
--[[ 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25, 0, -0.5) 
RW.C1 = CFrame.new(0,0.5,0)* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(-0.3, 0.5+1.2, 0) 
]] 
 
 
function stab() 
clonezorz = true 
for i = 0, 1, 0.035 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25, 0, -0.5+1*i) 
RW.C1 = CFrame.new(0,0.5,0)* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0-1*i) * CFrame.fromEulerAnglesXYZ(1.7-1.6*i, 0, 0.8) 
LW.C1 = CFrame.new(-0.3, 0.5+1.2, 0) 
end 
damage.Value = 10 
local vel = Instance.new("BodyVelocity") 
vel.Parent = man.Character.Torso 
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*2 
vel.velocity = man.Character.Torso.CFrame.lookVector * 50 
local soundz = Instance.new("Sound") 
soundz.SoundId = "rbxasset://sounds/swoosh.wav" 
soundz.Volume = 1 
soundz.Pitch = 0.1 
soundz.Parent = prt1 
soundz.Looped = true 
soundz:play() 
wait(0.5) 
for i = 0, 1, 0.035 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25-0.75*i, 0, 0.5-0.75*i) 
RW.C1 = CFrame.new(0,0.5,0)* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, -1) * CFrame.fromEulerAnglesXYZ(0.1, -0.5*i, 0.8) 
LW.C1 = CFrame.new(-0.3, 0.5+1.2, 0) 
vel.velocity = man.Character.Torso.CFrame.lookVector * 50 
end 
--wait(0.2) 
vel.velocity = man.Character.Torso.CFrame.lookVector * 50 
---------------------------------------- 
for i = 0, 1, 0.05 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+1.75*i, 0, -0.25-0.25*i) 
RW.C1 = CFrame.new(0,0.5,0)* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, -1+1*i) * CFrame.fromEulerAnglesXYZ(0.1+1.6*i, -0.5+0.5*i, 0.8) 
LW.C1 = CFrame.new(-0.3, 0.5+1.2, 0) 
vel.velocity = man.Character.Torso.CFrame.lookVector * 50 
end 
for i = 0, 1, 0.15 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.25-1*i, 0, -0.25-0.25) 
RW.C1 = CFrame.new(0,0.5,0)* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, -1+1) * CFrame.fromEulerAnglesXYZ(0.1+1.6, -0.5+0.5, 0.8) 
LW.C1 = CFrame.new(-0.3, 0.5+1.2, 0) 
vel.velocity = man.Character.Torso.CFrame.lookVector * 50 
end 
 
wait(0.25) 
vel.Parent = nil 
soundz:stop() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25, 0, -0.5) 
RW.C1 = CFrame.new(0,0.5,0)* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(-0.3, 0.5+1.2, 0) 
damage.Value = 5 
wait() 
soundz.Parent = nil 
clonezorz = false 
end 
 
function otherstab() 
clonezorz = true 
for i = 0, 1, 0.2 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25, 0, -0.5+1*i) 
RW.C1 = CFrame.new(0,0.5,0)* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0-1*i) * CFrame.fromEulerAnglesXYZ(1.7-1.6*i, 0, 0.8) 
LW.C1 = CFrame.new(-0.3, 0.5+1.2, 0) 
end 
damage.Value = 15 
local vel = Instance.new("BodyVelocity") 
vel.Parent = man.Character.Torso 
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*2 
vel.velocity = man.Character.Torso.CFrame.lookVector * 20 
local soundz = Instance.new("Sound") 
soundz.SoundId = "rbxasset://sounds/swoosh.wav" 
soundz.Volume = 1 
soundz.Pitch = 0.1 
soundz.Parent = prt1 
soundz.Looped = true 
soundz:play() 
wait(0.5) 
for i = 0, 1, 0.23 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25-0.75*i, 0, 0.5-0.75*i) 
RW.C1 = CFrame.new(0,0.5,0)* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, -1) * CFrame.fromEulerAnglesXYZ(0.1, -0.5*i, 0.8) 
LW.C1 = CFrame.new(-0.3, 0.5+1.2, 0) 
vel.velocity = man.Character.Torso.CFrame.lookVector * 10 
end 
--wait(0.2) 
vel.velocity = man.Character.Torso.CFrame.lookVector * 10 
---------------------------------------- 
for i = 0, 1, 0.23 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+1.75*i, 0, -0.25-0.25*i) 
RW.C1 = CFrame.new(0,0.5,0)* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, -1+1*i) * CFrame.fromEulerAnglesXYZ(0.1+1.6*i, -0.5+0.5*i, 0.8) 
LW.C1 = CFrame.new(-0.3, 0.5+1.2, 0) 
vel.velocity = man.Character.Torso.CFrame.lookVector * 10 
end 
for i = 0, 1, 0.05 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.25-1*i, 0, -0.25-0.25) 
RW.C1 = CFrame.new(0,0.5,0)* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, -1+1) * CFrame.fromEulerAnglesXYZ(0.1+1.6, -0.5+0.5, 0.8) 
LW.C1 = CFrame.new(-0.3, 0.5+1.2, 0) 
vel.velocity = man.Character.Torso.CFrame.lookVector * 2 
end 
 
wait(0.05) 
vel.Parent = nil 
soundz:stop() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25, 0, -0.5) 
RW.C1 = CFrame.new(0,0.5,0)* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(-0.3, 0.5+1.2, 0) 
damage.Value = 5 
wait() 
soundz.Parent = nil 
clonezorz = false 
end 
 
 
--[[ 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25, 0, -0.5) 
RW.C1 = CFrame.new(0,0.5,0)* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(-0.3, 0.5+1.2, 0) 
 
]] 
 
gundebounce2 = true 
function reload() 
if gundebounce2 == true then 
gundebounce2 = false 
man.Character.Humanoid.WalkSpeed = 0 
for i = 0, 1, 0.1 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25+1*i,0,-0.5+math.rad(-20)*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0.5*i, 0.8) 
LW.C1 = CFrame.new(0, 1.7, 0) 
 
end 
local soundz = Instance.new("Sound") 
soundz.SoundId = "rbxasset://sounds\\unsheath.wav" 
soundz.Volume = 1 
soundz.Pitch = 0.45 
soundz.Parent = prt1 
soundz:play() 
for i = 0 , 1 , 0.05 do 
wait() 
w3a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w3a.C0 = CFrame.fromEulerAnglesXYZ(0, 0,math.rad(180*i)) * CFrame.new(0, -1.75+0.5*i, 1*i) 
end 
soundz:pause() 
for i = 1 , 5 do 
local soundzz = Instance.new("Sound") 
soundzz.SoundId = "http://www.roblox.com/asset/?id=2691591" 
soundzz.Volume = 1 
soundzz.Pitch = 1 
soundzz.Parent = prt1 
soundzz:play() 
local shellz = Instance.new("Part") 
shellz.Material = "SmoothPlastic"
local shellmsh = Instance.new("CylinderMesh") 
shellmsh.Scale = Vector3.new(0.25,0.5,0.25) 
shellmsh.Parent = shellz 
shellz.Position = prt2.Position + Vector3.new(0,2,0) 
shellz.Parent = game.Workspace 
shellz.Size = Vector3.new(1,1,1) 
--shellz.CFrame = prt4.CFrame + prt2.CFrame.lookVector * 3 
shellz.CFrame = prt2.CFrame + Vector3.new(0,2,0) 
shellz.BrickColor = BrickColor.new("New Yeller") 
shellz.Anchored = false 
shellz.CanCollide = true 
shellz.BottomSurface = "Smooth" 
shellz.TopSurface = "Smooth" 
shellz.Velocity = Vector3.new(math.random(-20,20),40,math.random(-20,20)) 
game:GetService("Debris"):addItem(shellz,2) 
end 
Shells.Value = 5 
wait(0.5) 
soundz:play() 
for i = 1 , 0 , -0.05 do 
wait() 
w3a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w3a.C0 = CFrame.fromEulerAnglesXYZ(0, 0,math.rad(180*i)) * CFrame.new(0, -1.75+0.5*i, 1*i) 
end 
w3a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w3a.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, -1.75, -0) 
soundz:remove() 
man.Character.Humanoid.WalkSpeed = move.Value 
clonezorz = true 
for i = 0, 1, 0.05 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.25+1*i,0,(-0.5+math.rad(-20))+0.25*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0.5+0.25*i, 0.8+0.3*i) 
LW.C1 = CFrame.new(0, 1.7, 0) 
 
end 
de=1 
damage.Value = 6 
---------------------------------------- 
for i = 1, 0, -0.125 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.25*i,0,(-0.75+math.rad(-20))*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0.75*i, 1.1) 
LW.C1 = CFrame.new(0, 1.7, 0) 
 
end 
for i = 0, 1, 0.1 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, 1.1) 
LW.C1 = CFrame.new(0, 1.7, 0) 
 
end 
wait(0.1) 
for i = 0, 1, 0.075 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1+1.25*i,0,-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, 1.1-0.3*i) 
LW.C1 = CFrame.new(0, 1.7, 0) 
end 
wait(0.1) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, -0.9, -0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, 0, 0) 
de=0 
-------------------------------------- 
--[[ 
for i = 0, 1, 0.05 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5-1.2*i, -2.8+2.8*i, 1-1.5*i) 
--RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, -0.4+1.2*i) 
LW.C1 = CFrame.new(0, -0.5+i*2, 0) 
--LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, -0.9, -2) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, 0, 0) 
end]] 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25, 0, -0.5) 
RW.C1 = CFrame.new(0,0.5,0)* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(-0.3, 0.5+1.2, 0) 
damage.Value = 5 
gundebounce2 = true 
clonezorz = false 
end 
end 
 
 
function smash() 
clonezorz = true 
local soundz = Instance.new("Sound") 
soundz.SoundId = "rbxasset://sounds\\swordslash.wav" 
soundz.Volume = 1 
soundz.Pitch = 0.8 
soundz.Parent = prt1 
soundz.PlayOnRemove = true 
for i = 0, 1, 0.1 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25+1*i,0,-0.5+math.rad(-20)*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0.5*i, 0.8) 
LW.C1 = CFrame.new(0, 1.7, 0) 
 
end 
wait(0.1) 
for i = 0, 1, 0.05 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.25+1*i,0,(-0.5+math.rad(-20))+0.25*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0.5+0.25*i, 0.8+0.3*i) 
LW.C1 = CFrame.new(0, 1.7, 0) 
 
end 
soundz:remove() 
de=1 
damage.Value = 6 
---------------------------------------- 
for i = 1, 0, -0.125 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.25*i,0,(-0.75+math.rad(-20))*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0.75*i, 1.1) 
LW.C1 = CFrame.new(0, 1.7, 0) 
 
end 
for i = 0, 1, 0.1 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, 1.1) 
LW.C1 = CFrame.new(0, 1.7, 0) 
 
end 
wait(0.1) 
for i = 0, 1, 0.075 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1+1.25*i,0,-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--R.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5, 0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, 1.1-0.3*i) 
LW.C1 = CFrame.new(0, 1.7, 0) 
end 
wait(0.1) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, -0.9, -0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, 0, 0) 
de=0 
-------------------------------------- 
--[[ 
for i = 0, 1, 0.05 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5-1.2*i, -2.8+2.8*i, 1-1.5*i) 
--RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, -0.4+1.2*i) 
LW.C1 = CFrame.new(0, -0.5+i*2, 0) 
--LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, -0.9, -2) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, 0, 0) 
end]] 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25, 0, -0.5) 
RW.C1 = CFrame.new(0,0.5,0)* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(-0.3, 0.5+1.2, 0) 
damage.Value = 5 
clonezorz = false 
end 
 
 
function clicki2() -- clickie clickie :3 
if cl == true then 
otherstab() 
end 
end 
 
texz2.MouseButton1Click:connect(clicki2) 
 
 
 
function clicki3() 
if cl == true then 
stab() 
end 
end 
 
texz3.MouseButton1Click:connect(clicki3) 
 
 
 
function clicki4() 
if cl == true then 
smash() 
end 
end 
 
texz4.MouseButton1Click:connect(clicki4) 
 
 
 
function clicki6() 
if cl == true then 
Fenfire() 
end 
end 
 
texz6.MouseButton1Click:connect(clicki6) 
 
 
 
function clicki7() 
if cl == true then 
reload() 
end 
end 
 
texz7.MouseButton1Click:connect(clicki7) 
 
function clicki8() 
if cl == false then 
smokepipe() 
end 
end 
 
texz8.MouseButton1Click:connect(clicki8) 
 
function clicki9() 
if cl == false then 
if smokin == true then 
nosmokepipe() 
end 
end 
end 
 
texz9.MouseButton1Click:connect(clicki9) 
 
function clicki10() 
if cl == false then 
if smokin == true then 
removesmokepipe() 
end 
end 
end 
 
texz10.MouseButton1Click:connect(clicki10) 
 
function clicki11() 
if cl == true then 
laserFen() 
end 
end 
 
texz11.MouseButton1Click:connect(clicki11) 
 
gundebounce = true 
function clicki5() 
if cl == true and gundebounce == true then 
if smokin == false then 
gundebounce = false 
if Shells.Value > 0 then 
Shells.Value = Shells.Value - 1 
shellblast() 
elseif Shells.Value <= 0 then 
noblast() 
end 
gundebounce = true 
end 
end 
end 
 
texz5.MouseButton1Click:connect(clicki5) 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
cl = true 
 
 
function clicki() 
 
if cl == false then 
if smokin == false then 
 
clonezorz = true 
player = man 
local ch = man.Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
-- 
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
_G.L = LW 
conna = prt4.Touched:connect(sword) 
conna2 = prt5.Touched:connect(sword) 
texz.Text = "Disable Gunlance" 
w1.Part1 = man.Character:findFirstChild("Right Arm") 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, -0.9, -0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, 0, 0) 
for i = 1 , 0 , -0.05 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0.5) * CFrame.fromEulerAnglesXYZ(0, 0, -0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(120)*i, 0, math.rad(45)*i) 
end 
for i = 0, 1, 0.05 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25*i, 0, -0.5*i) 
RW.C1 = CFrame.new(0,0.5,0)* CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7*i, 0, 0.8*i) 
LW.C1 = CFrame.new(-0.3*i, 0.5+1.2*i, 0) 
end 
local soundz = Instance.new("Sound") 
soundz.SoundId = "rbxasset://sounds\\unsheath.wav" 
soundz.Volume = 1 
soundz.Pitch = 0.65 
soundz.Parent = prt1 
soundz.PlayOnRemove = true 
wait() 
soundz:remove() 
for i = 1 , 0 , -0.05 do 
wait() 
w3a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w3a.C0 = CFrame.fromEulerAnglesXYZ(0, 0,math.rad(180*i)) * CFrame.new(0, -1.75+0.5*i, 1*i) 
end 
w3a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w3a.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, -1.75, -0) 
cl = true 
clonezorz = false 
end 
elseif cl == true then 
 
for i = 1 , 0 ,-0.05 do 
wait() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25*i, 0, 0.8*i) 
LW.C1 = CFrame.new(-0.3*i, 0.5+1.2*i, 0) 
end 
local soundz = Instance.new("Sound") 
soundz.SoundId = "rbxasset://sounds\\unsheath.wav" 
soundz.Volume = 1 
soundz.Pitch = 0.75 
soundz.Parent = prt1 
soundz.PlayOnRemove = true 
wait() 
soundz:remove() 
for i = 0, 1, 0.05 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0.5) * CFrame.fromEulerAnglesXYZ(0, 0, -0) 
RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(120)*i, 0, math.rad(45)*i) 
w3a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w3a.C0 = CFrame.fromEulerAnglesXYZ(0, 0,math.rad(180*i)) * CFrame.new(0, -1.75+0.5*i, 1*i) 
--[[ 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7*i, 0, 0.8*i) 
LW.C1 = CFrame.new(0,0.5,0) ]] 
end 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
texz.Text = "Gunlance" 
conna:disconnect() 
conna2:disconnect() 
w1.Part1 = man.Character:findFirstChild("Torso") 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0.9) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180), math.rad(90), math.rad(45--[[+90]])) * CFrame.new(0, -0, 0) 
--[[for i = 0 , 1 , 0.05 do 
wait() 
w3a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w3a.C0 = CFrame.fromEulerAnglesXYZ(0, 0,math.rad(180*i)) * CFrame.new(0, -1.75+0.5*i, 1*i) 
end]] 
move.Value = 16 
damageboost = 0 
cl = false 
end 
 
end 
 
texz.MouseButton1Click:connect(clicki) 
 
 
 
--end 
 
 
 
function moveupdate() 
 
if man.Character ~= nil then 
if man.Character:FindFirstChild("Humanoid") ~= nil then 
man.Character:FindFirstChild("Humanoid").WalkSpeed = move.Value 
movegui.Text = "WalkSpeed : " ..move.Value 
boostgui.Text = "DamageBoost : " ..damageboost 
end 
end 
 
end 
 
move.Changed:connect(moveupdate) 
 
function damageupdate() 
 
 
damagegui.Text = "Damage : " ..damage.Value 
 
 
end 
 
damage.Changed:connect(damageupdate) 
 
function shellupdate() 
 
 
shellgui.Text = "Shells : " ..Shells.Value 
 
 
end 
Shells.Changed:connect(shellupdate) 
 
script.Parent = swordholder 
 
while true do 
wait(0.1) 
if clonezorz == true then 
local clone = prt4:Clone() 
clone.Anchored = true 
clone.Parent = man.Character 
clone.Name = "clonelulz" 
clone.BrickColor = BrickColor.new(1005) 
coroutine.resume(coroutine.create(function() for i = 0, 1, 0.05 do wait() clone.Transparency = clone.Transparency + 
 
0.05 clone.Reflectance = clone.Reflectance + 0.01 end clone:Remove() end)) 
end 
--[[if thund == true then 
wait(0.2) 
local clone = prt1:Clone() 
clone.Anchored = true 
clone.Parent = man.Character 
clone.Name = "clonelulz" 
clone.BrickColor = BrickColor.new("Really red") 
coroutine.resume(coroutine.create(function() for i = 0, 1, 0.05 do wait() clone.Transparency = clone.Transparency + 
 
0.05 clone.Reflectance = clone.Reflectance + 0.01 end clone:Remove() end)) 
local clone = prt2:Clone() 
clone.Anchored = true 
clone.Parent = man.Character 
clone.Name = "clonelulz" 
clone.BrickColor = BrickColor.new("New Yeller") 
coroutine.resume(coroutine.create(function() for i = 0, 1, 0.05 do wait() clone.Transparency = clone.Transparency + 
 
0.05 clone.Reflectance = clone.Reflectance + 0.01 end clone:Remove() end)) 
local clone = prt3:Clone() 
clone.Anchored = true 
clone.Parent = man.Character 
clone.Name = "clonelulz" 
clone.BrickColor = BrickColor.new("New Yeller") 
coroutine.resume(coroutine.create(function() for i = 0, 1, 0.05 do wait() clone.Transparency = clone.Transparency + 
 
0.05 clone.Reflectance = clone.Reflectance + 0.01 end clone:Remove() end)) 
local clone = prt3a:Clone() 
clone.Anchored = true 
clone.Parent = man.Character 
clone.Name = "clonelulz" 
clone.BrickColor = BrickColor.new("New Yeller") 
coroutine.resume(coroutine.create(function() for i = 0, 1, 0.05 do wait() clone.Transparency = clone.Transparency + 
 
0.05 clone.Reflectance = clone.Reflectance + 0.01 end clone:Remove() end)) 
local clone = prt4:Clone() 
clone.Anchored = true 
clone.Parent = man.Character 
clone.Name = "clonelulz" 
clone.BrickColor = BrickColor.new("New Yeller") 
coroutine.resume(coroutine.create(function() for i = 0, 1, 0.05 do wait() clone.Transparency = clone.Transparency + 
 
0.05 clone.Reflectance = clone.Reflectance + 0.01 end clone:Remove() end)) 
local clone = prt5:Clone() 
clone.Anchored = true 
clone.Parent = man.Character 
clone.Name = "clonelulz" 
clone.BrickColor = BrickColor.new("New Yeller") 
coroutine.resume(coroutine.create(function() for i = 0, 1, 0.05 do wait() clone.Transparency = clone.Transparency + 
 
0.05 clone.Reflectance = clone.Reflectance + 0.01 end clone:Remove() end)) 
local clone = prt6:Clone() 
clone.Anchored = true 
clone.Parent = man.Character 
clone.Name = "clonelulz" 
clone.BrickColor = BrickColor.new("New Yeller") 
coroutine.resume(coroutine.create(function() for i = 0, 1, 0.05 do wait() clone.Transparency = clone.Transparency + 
 
0.05 clone.Reflectance = clone.Reflectance + 0.01 end clone:Remove() end)) 
end]] 
end  

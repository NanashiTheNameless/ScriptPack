C = game.Players.LocalPlayer.Character.torso
H = game.Players.LocalPlayer.Character.head
RA = game.Players.LocalPlayer.Character["Right Arm"]
LA = game.Players.LocalPlayer.Character["Left Arm"]
LL = game.Players.LocalPlayer.Character["Left Leg"]
RL = game.Players.LocalPlayer.Character["Right Leg"]
gun = Instance.new("Part")
gun2 = Instance.new("Part")
local gun2W = Instance.new("Weld")
local gunW = Instance.new("Weld")
local raW = Instance.new("Weld")
local laW = Instance.new("Weld")
Mouse = game.Players.LocalPlayer:GetMouse()
plr = game:service'Players'.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
head = char.Head
down = false
humanoid = char:findFirstChild("Humanoid")
rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
anim = char:findFirstChild("Animate")
torso = char:findFirstChild("Torso")
rootpart = char:findFirstChild("HumanoidRootPart")
neck = torso:findFirstChild("Neck")
------------------

function damage(hit,damage,cooldown)
for i,v in pairs(hit:GetChildren()) do 
if v:IsA("Humanoid") and hit.Name ~= char.Name then
local find = v:FindFirstChild("Hitz")
if not find then
if v.Parent:findFirstChild("Head") then
local BillG = Instance.new("BillboardGui",v.Parent.Head)BillG.Size = UDim2.new(1,0,1,0)
BillG.Adornee = v.Parent.Head BillG.StudsOffset = Vector3.new(math.random(-3,3),math.random(3,5),math.random(-3,3))
local TL = Instance.new("TextLabel",BillG)TL.Size = UDim2.new(1,0,1,0)
TL.BackgroundTransparency = 1 TL.Text = tostring(damage).."-"
TL.TextColor3 = BrickColor.new("Dark stone grey").Color TL.TextStrokeColor3 = BrickColor.new("Cyan").Color
TL.TextStrokeTransparency = 0 TL.TextXAlignment = Enum.TextXAlignment.Center
TL.TextYAlignment = Enum.TextYAlignment.Center TL.FontSize = Enum.FontSize.Size18
TL.Font = "ArialBold"
coroutine.resume(coroutine.create(function()
wait(1)
for i = 0,1,.1 do wait(.1) BillG.StudsOffset = BillG.StudsOffset+Vector3.new(0,.1,0) end
BillG:Destroy()
end))
end
v.Health = v.Health - damage local bool = Instance.new("BoolValue",v)bool.Name = 'Hitz'game:GetService("Debris"):AddItem(bool,cooldown)
end
end
end
end
------------------raW.Parent = RA
raW.Parent = RA
raW.Part0 = RA
raW.C0 = CFrame.new(1.4, -0.3, 0.5) * CFrame.Angles(math.rad(-90),math.rad(160),math.rad(0))
raW.Part1 = C
-------------------------------------------------

laW.Parent = LA
laW.Part0 = LA
laW.C0 = CFrame.new(-1.4, -0.3, 0.5) * CFrame.Angles(math.rad(-90),math.rad(-160),math.rad(0))
laW.Part1 = C
---------------------------------------------------------
neckc0 = neck.C0
--------------
function trail()
a = Instance.new("Part", workspace)
a.Material = "SmoothPlastic"
a.FormFactor = "Custom"
a.Size = Vector3.new(0.2, 2.6, 3.8)
a.BrickColor = BrickColor.new("Cyan")
a.Transparency = 0.6
	a.Anchored = true
	a.CanCollide = false
	a.CFrame = game.Players.LocalPlayer.Character.torso.CFrame * CFrame.new(0, 0, 2)
	a.Transparency = 0.2
	wait()
	a.Transparency = 0.4
	wait()
	a.Transparency = 0.6
	wait()
	a.Transparency = 0.8
	game:GetService("Debris"):AddItem(a, 2) 

end
------------
function trail2()
c = Instance.new("Part", workspace)
c.Material = "SmoothPlastic"
c.FormFactor = "Custom"
c.Size = Vector3.new(0.2, 2.6, 3.8)
c.BrickColor = BrickColor.new("Really red")
c.Transparency = 0.6
	c.Anchored = true
	c.CanCollide = false
	c.CFrame = game.Players.LocalPlayer.Character.torso.CFrame * CFrame.new(0, 0, 0.5)
	c.Transparency = 0.2
	wait()
	c.Transparency = 0.4
	wait()
	c.Transparency = 0.6
	wait()
	c.Transparency = 0.8
	game:GetService("Debris"):AddItem(a, 2) 
	end
----------------------------



	


		

	
gun.Parent = RA
gun.Material = "SmoothPlastic"
gun.Transparency = 0
gun.FormFactor = "Symmetric"
gun.Size = Vector3.new(1.2, 1.6, 1.2)
gun.Material = "Plastic"
gun.BrickColor = BrickColor.new("Really black")
gun.BottomSurface = "Smooth"
gun.TopSurface = "Smooth"
gunM = Instance.new("SpecialMesh", gun)
gunM.MeshId = "http://www.roblox.com/asset/?id=95356090"
gunM.TextureId = "http://www.roblox.com/asset/?id=95387789"
gunM.Scale = Vector3.new(1.8, 1.8, 1.8)
gunM.VertexColor = Vector3.new(1, 1, 1)
------------
gun2.Parent = RA
gun2.Material = "SmoothPlastic"
gun2.Transparency = 0
gun2.FormFactor = "Symmetric"
gun2.Size = Vector3.new(1.2, 1.6, 1.2)
gun2.Material = "Plastic"
gun2.BrickColor = BrickColor.new("Really black")
gun2.BottomSurface = "Smooth"
gun2.TopSurface = "Smooth"
gun2M = Instance.new("SpecialMesh", gun2)
gun2M.MeshId = "http://www.roblox.com/asset/?id=95356090"
gun2M.TextureId = "http://www.roblox.com/asset/?id=95387789"
gun2M.Scale = Vector3.new(1.8, 1.8, 1.8)
gun2M.VertexColor = Vector3.new(1, 1, 1)
------
s = Instance.new("Sound", char)
s.SoundId = "http://roblox.com/asset/?id=136472158"
s.Volume = 0.7
-------

local count = 0
local countspeed = 1
----------
spd = 1000
-------
gunW.Parent = gun
gunW.Part0 = gun
gunW.C0 = CFrame.new(0, -0.4, 1.4) * CFrame.Angles(math.rad(90),math.rad(-10),math.rad(180))
gunW.Part1 = RA
---------------
gun2W.Parent = gun2
gun2W.Part0 = gun2
gun2W.C0 = CFrame.new(0, -0.4, 1.4) * CFrame.Angles(math.rad(90),math.rad(10),math.rad(180))
gun2W.Part1 = LA
local deb = true
Mouse.Button1Down:connect(function()
	if deb == false then return end
deb = false
	print("Shots have been fired!!!")
	pl = Instance.new("PointLight", H)
	s:Play()

pl.Brightness = 20
pl.Range = 8

wait(0.10)
pl:Remove()

	raW.C0 = CFrame.new(1.4, -0.3, 0.5) * CFrame.Angles(math.rad(-100),math.rad(160),math.rad(0))
		laW.C0 = CFrame.new(-1.4, -0.3, 0.5) * CFrame.Angles(math.rad(-100),math.rad(-160),math.rad(0))
	wait(0.001)	
		raW.C0 = CFrame.new(1.4, -0.3, 0.5) * CFrame.Angles(math.rad(-90),math.rad(160),math.rad(0))
		laW.C0 = CFrame.new(-1.4, -0.3, 0.5) * CFrame.Angles(math.rad(-90),math.rad(-160),math.rad(0))
		wait(0.001)		
            laW.C0 = CFrame.new(-1.4, -0.3, 0.5) * CFrame.Angles(math.rad(-80),math.rad(-160),math.rad(0))
			raW.C0 = CFrame.new(1.4, -0.3, 0.5) * CFrame.Angles(math.rad(-80),math.rad(160),math.rad(0))
						
			wait(0.001)	
	laW.C0 = CFrame.new(-1.4, -0.3, 0.5) * CFrame.Angles(math.rad(-70),math.rad(-160),math.rad(0))
				raW.C0 = CFrame.new(1.4, -0.3, 0.5) * CFrame.Angles(math.rad(-70),math.rad(160),math.rad(0))
						
				wait(0.001)
			laW.C0 = CFrame.new(-1.4, -0.3, 0.5) * CFrame.Angles(math.rad(-80),math.rad(-160),math.rad(0))
					raW.C0 = CFrame.new(1.4, -0.3, 0.5) * CFrame.Angles(math.rad(-80),math.rad(160),math.rad(0))	
							
			wait(0.001)	
		laW.C0 = CFrame.new(-1.4, -0.3, 0.5) * CFrame.Angles(math.rad(-90),math.rad(-160),math.rad(0))
			raW.C0 = CFrame.new(1.4, -0.3, 0.5) * CFrame.Angles(math.rad(-90),math.rad(160),math.rad(0))
		
		wait(0.001)
	laW.C0 = CFrame.new(-1.4, -0.3, 0.5) * CFrame.Angles(math.rad(-100),math.rad(-160),math.rad(0))
		raW.C0 = CFrame.new(1.4, -0.3, 0.5) * CFrame.Angles(math.rad(-100),math.rad(160),math.rad(0))
					
	wait(0.001)
laW.C0 = CFrame.new(-1.4, -0.3, 0.5) * CFrame.Angles(math.rad(-90),math.rad(-160),math.rad(0))
	raW.C0 = CFrame.new(1.4, -0.3, 0.5) * CFrame.Angles(math.rad(-90),math.rad(160),math.rad(0))  
	
b = Instance.new("Part", workspace)
b.Material = "SmoothPlastic"
b.Shape = "Ball"
b.Transparency = 0
b.BrickColor = BrickColor.new("Really black")
b.Size = Vector3.new(0.1, 0.1, 0.1)
b.Anchored = false
b.CanCollide = false
b.CFrame = CFrame.new(gun.Position + (gun.CFrame.lookVector * 3),(Mouse.UnitRay.Direction * 1000))
b.Velocity = b.CFrame.lookVector * spd
local Var = b.Touched:connect(function(Hit) damage(Hit.Parent,math.random(30,45),1) end)
wait(0.1)
deb = true
wait(10)
Var:disconnect()
b:remove()
end)

---------
rootc0 = rj.C0
----

while wait() do
	count = (count % 100) + countspeed
angle = math.pi * math.sin(math.pi*2/100*count)
if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
countspeed = 0.80
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16

rj.C0 = rootc0 * CFrame.Angles(math.rad(0), 0, 0)
	neck.C0 = neckc0 * CFrame.Angles(-angle*0.060, 0, 0)
	elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
countspeed = 9
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 35
rj.C0 = rootc0 * CFrame.Angles(math.rad(22), 0, 0)

end
end


				
				

		if game.Players.LocalPlayer.Character:FindFirstChild("Body Colors") ~= nil then
			game.Players.LocalPlayer.Character:FindFirstChild("Body Colors").HeadColor = BrickColor.new("White")
			game.Players.LocalPlayer.Character:FindFirstChild("Body Colors").LeftArmColor = BrickColor.new("Really black")
			game.Players.LocalPlayer.Character:FindFirstChild("Body Colors").LeftLegColor = BrickColor.new("Really black")
			game.Players.LocalPlayer.Character:FindFirstChild("Body Colors").RightArmColor = BrickColor.new("Really black")
			game.Players.LocalPlayer.Character:FindFirstChild("Body Colors").RightLegColor = BrickColor.new("Really black")
			game.Players.LocalPlayer.Character:FindFirstChild("Body Colors").TorsoColor = BrickColor.new("Really black")
		end

BigTorso=Instance.new("SpecialMesh",game.Players.LocalPlayer.Character.Torso)
BigTorso.Offset=Vector3.new(0,0,0)
BigTorso.MeshType="Brick"
BigTorso.Scale=Vector3.new(1,2,1)

a=game.Players.LocalPlayer.Character["Right Arm"]
aa=game.Players.LocalPlayer.Character.Torso["Right Shoulder"]
a.Size=Vector3.new(1,4,1)
aa.C0 = CFrame.new(1.5,(a.Size.y/2)-0.5,0) * CFrame.Angles(0,math.pi/2,0) 
aa.C1 = CFrame.new(0,(a.Size.y/2)-0.5,0) * CFrame.Angles(0,math.pi/2,0) 
aa.Parent=game.Players.LocalPlayer.Character.Torso

b=game.Players.LocalPlayer.Character["Right Leg"]
bb=game.Players.LocalPlayer.Character.Torso["Right Hip"]
b.Size=Vector3.new(1,7,1)
bb.C0 = CFrame.new(0.5,-b.Size.y/2+(BigTorso.Scale.y)-0.5,0) * CFrame.Angles(0,math.pi/2,0) 
bb.C1 = CFrame.new(0,b.Size.y/2,0) * CFrame.Angles(0,math.pi/2,0) 
bb.Parent=game.Players.LocalPlayer.Character.Torso

c=game.Players.LocalPlayer.Character["Left Arm"]
cc=game.Players.LocalPlayer.Character.Torso["Left Shoulder"]
c.Size=Vector3.new(1,4,1)
cc.C0 = CFrame.new(-1.5,(c.Size.y/2)-0.5,0) * CFrame.Angles(0,-math.pi/2,0) 
cc.C1 = CFrame.new(0,(c.Size.y/2)-0.5,0) * CFrame.Angles(0,-math.pi/2,0) 
cc.Parent=game.Players.LocalPlayer.Character.Torso

d=game.Players.LocalPlayer.Character["Left Leg"]
dd=game.Players.LocalPlayer.Character.Torso["Left Hip"]
d.Size=Vector3.new(1,7,1)
dd.C0 = CFrame.new(-0.5,-(d.Size.y/2)+(BigTorso.Scale.y)-0.5,0) * CFrame.Angles(0,-math.pi/2,0) 
dd.C1 = CFrame.new(0,d.Size.y/2,0) * CFrame.Angles(0,-math.pi/2,0) 
dd.Parent=game.Players.LocalPlayer.Character.Torso

e=game.Players.LocalPlayer.Character["Head"]
ee=game.Players.LocalPlayer.Character.Torso["Neck"]
ee.C0=CFrame.new(0,2,0,-1,-0,-0,0,0,1,0,1,0)
ee.Parent=game.Players.LocalPlayer.Character.Torso


v = game.Players.LocalPlayer
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Head") then 
for c,b in pairs(v.Character:findFirstChild("Head"):GetChildren()) do
	if b.ClassName == "Decal" then
		b:Remove()
	end
end
for a, moda in pairs(v.Character:children()) do if moda:findFirstChild("NameTag") then v.Character.Head.Transparency = 0 moda:Destroy() end end
local char = v.Character
local moda = Instance.new("Model", char) moda.Name = "FHEAD"
local cl = char.Head:Clone() cl.Transparency = 0 cl.Parent = moda cl.Name = "Head" 
local weld = Instance.new("Weld", cl) weld.Part0 = cl weld.Part1 = char.Head
char.Head.Transparency = 1
end
end))

ab = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
ab.Name = "Slender"
abu = Instance.new("TextButton",ab)
abu.Text = "Invisible"
abu.Position = UDim2.new(0,0,1,-30)
abu.Size = UDim2.new(0,100,0,30)
abu.MouseButton1Click:connect(function()
if abu.Text == "Invisible" then
abu.Text = "Visible"
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.ClassName == "Part" then
v.Transparency = 1
elseif v.Name == "FHEAD" then
	v.Head.Transparency = 1
end
end
elseif abu.Text == "Visible" then
abu.Text = "Invisible"
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.ClassName == "Part" then
if v.Name == "Head" or v.Name == "HumanoidRootPart" then else
v.Transparency = 0
end
elseif v.Name == "FHEAD" then
	v.Head.Transparency = 0
end
end
end	
end)
mouse=game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:connect(function(key) local key=key:lower()
if key=="g" then
if abu.Text == "Invisible" then
abu.Text = "Visible"
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.ClassName == "Part" then
v.Transparency = 1
elseif v.Name == "FHEAD" then
	v.Head.Transparency = 1
end
end
elseif abu.Text == "Visible" then
abu.Text = "Invisible"
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.ClassName == "Part" then
if v.Name == "Head" or v.Name == "HumanoidRootPart" then else
v.Transparency = 0
end
elseif v.Name == "FHEAD" then
	v.Head.Transparency = 0
end
end
end	
end
end)


local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(key)
    if key:byte() == 50 or key:byte() == 49 then
    	if Mouse.Target ~= nil then
    		Player.Character.HumanoidRootPart.CFrame = Mouse.Hit+Vector3.new(0,9,0)
    	end
    end
end)

while true do
for i,a in pairs(game.Players:GetChildren()) do
	local v = a.Character
	if v:FindFirstChild('Humanoid') and v:FindFirstChild('HumanoidRootPart') and Player.Character:FindFirstChild('HumanoidRootPart') then
		if v ~= Player.Character then
			if (Player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude < 10 and Player.Character.Torso.Transparency ~= 1 then
				v.Humanoid.Health = 0
			end
		end
	end
end
wait()
end
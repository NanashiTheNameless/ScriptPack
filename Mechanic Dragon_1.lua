--[[Made By ace28545.]]--
--[[Description:First script Yay! :D]]--

Player = Game.Players.LocalPlayer
Character = Player.Character


local m = Instance.new("Model",Character)
m.Name = "Mechanic Dragon"

local p = Instance.new("Part",m)
p.Material = "SmoothPlastic"
p.Name = "Head"
p.Shape = "Ball"
p.Position = Character.Torso.Position
p.Size = Vector3.new(1,1,1)
p.Anchored = true

local pmsh = Instance.new("SpecialMesh",p)
pmsh.MeshType = "FileMesh"
pmsh.MeshId = "http://www.roblox.com/asset/?id=147949093"
pmsh.TextureId = "http://www.roblox.com/asset/?id=147949192"
pmsh.Scale = Vector3.new(1,1,1)

local phum = Instance.new("Humanoid",m)
phum.MaxHealth = 0
phum.Health = 0

local plight = Instance.new("PointLight",p)
plight.Brightness = 10
plight.Range = 10

Hover = 0  --By Aleksa(my friend)c:
game:service'RunService'.RenderStepped:connect(function()
Hover = Hover + 0.1
p.CFrame = Character.Torso.CFrame * (CFrame.new(2.5,3+math.sin(Hover/3),0)) * CFrame.Angles(-math.rad(10),0,0)
end)

Player.Chatted:connect(function(Msg)
game:service("Chat"):Chat(p, Msg, Enum.ChatColor.Blue)
end)

print("Mechanic Dragon pet by ace28545")


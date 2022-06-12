loadstring(_G[" rmdx "])()
Owner = game.Players.LocalPlayer
ammo = 12
bombs = 6
mode = "gun"
tool = Instance.new("Tool")
tool.Name = "Gun"
tool.Parent = Owner.Backpack
rl = false
gun = Instance.new("Part")
gun.Size = Vector3.new(1,1,1)
gun.Name = "Handle"
gun.TopSurface = 0
gun.BottomSurface = 0
gun.Parent = tool
gun.BrickColor = BrickColor.new("Black")
gun.FormFactor = 0
sound2 = Instance.new("Sound")
sound2.Parent = gun
sound2.Volume = 1
sound2.Pitch = 1
sound2.SoundId = "http://www.roblox.com/asset/?1d2697432"
m1 = Instance.new("SpecialMesh")
m1.Parent = gun
m1.MeshId = "http://www.roblox.com/asset/?id=4372594"
m1.MeshType = "FileMesh"
m1.Scale = Vector3.new(1.5,1.5,2)
--http://roblox.com/asset/?id=10209859
sound = Instance.new("Sound")
sound.Parent = gun
sound.SoundId = "http://roblox.com/asset/?id=10209859"
tool.Equipped:connect(function(mouse)
deb = false
mouse.Button1Down:connect(function()
if mode == "gun" then
if 1 ~= nil then
if deb == false then deb = true
if ammo ~= 0 then
ammo = ammo - 1
game:GetService("Chat"):Chat(gun, "ammo left: "..ammo, "Red")
gunshot(7,1.2,18,cn(gun.Position,mouse.Hit.p)*cn(0,0,-2)*ca(rd(-90),0,0))
shell = Instance.new("Part")
shell.FormFactor = 3
sound:Play()
shell.Parent = game.Workspace
shell.Position = gun.Position
shell.BrickColor = BrickColor.new("Bright yellow")
shell.Size = Vector3.new(0.4,0.4,1.2)
shell.Name = "shell"
shell.TopSurface = 0
shell.BottomSurface = 0
else
if smoke == nil then
smoke = Instance.new("Smoke", gun)
smoke.Size = 1
smoke.RiseVelocity = 20
smoke.Color = Color3.new(0,0,0)
else
smokee = gun:FindFirstChild("Smoke")
if smokee then
smokee:Remove()
end
end
end
wait(.5)
deb = false
end
end
elseif mode == "bomb" then
if mouse.Target ~= nil then
if deb == false then deb = true
if bombs ~= 0 then
bombs = bombs -1
game:GetService("Chat"):Chat(gun,bombs.." bombs left.", "Red")
landmine = Instance.new("Part")
landmine.Parent = game.Workspace
landmine.Position = mouse.Hit.p
landmine.BrickColor = BrickColor.new("Black")
landmine.Size = Vector3.new(4,1,4)
landmine.Touched:connect(function(hit)
landmine.Anchored = true
if hit.Name ~= "Base" then
landmine:Remove()
exp = Instance.new("Explosion")
exp.Parent = game.Workspace
exp.Position = hit.Position
end
end)
end
wait(1.5)
deb = false
end
end
end
end)
mouse.KeyDown:connect(function(key)
if key == "z" then
game:GetService("Chat"):Chat(gun, "landmine mode activated", "Red")
mode = "bomb"
elseif key == "x" then
game:GetService("Chat"):Chat(gun, "gun mode activated", "Red")
mode = "gun"
elseif key == "r" then
if rl == false then rl = true
rl = true
ammo = ammo + 6
game:GetService("Chat"):Chat(gun, "reloading...","Red")
sound2:Play()
mode = "Reloading new ammo"
wait(4.5)
mode = "gun"
rl = false
game:GetService("Chat"):Chat(gun, "Reloaded","Red")
end
end
end)
end)
 
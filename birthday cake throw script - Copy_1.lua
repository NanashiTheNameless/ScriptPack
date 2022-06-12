player = game.Players.LocalPlayer
mouse = player:GetMouse()

caketool = Instance.new("Tool")
caketool.Name = "CAIK"
caketool.CanBeDropped = false
caketool.ToolTip = "CLEEK TUH TROW DE CAIK!"
cake = Instance.new("Part", caketool)
cake.Name = "Handle"
cake.Size = Vector3.new(1, 1, 1)
cakemesh = Instance.new("SpecialMesh", cake)
cakemesh.MeshType = "FileMesh"
cakemesh.MeshId = "http://www.roblox.com/asset/?id=16211718"
cakemesh.TextureId = "http://www.roblox.com/asset/?id=145411558"
wait()
caketool.Parent = player.Backpack

caketool.Equipped:connect(function()
trowdecaik = true
end)

caketool.Unequipped:connect(function()
trowdecaik = false
end)

mouse.Button1Down:connect(function()
if trowdecaik then
hit = mouse.Hit
cake2 = cake:Clone()
cake2.CanCollide = false
cake2.Parent = game.Workspace
cake2.CFrame = cake.CFrame
direction = Instance.new("BodyGyro", cake2)
direction.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
direction.cframe = CFrame.new(cake.Position, hit.p)
speed = Instance.new("BodyVelocity", cake2)
speed.maxForce = Vector3.new(math.huge, math.huge, math.huge)
speed.velocity = direction.cframe.lookVector.unit * 50
cake2.Touched:connect(function(part)
if part.Parent ~= player.Character and part.Parent.Parent ~= player.Character and game.Players:GetPlayerFromCharacter(part.Parent) then
char = part.Parent
char.Head.face.Texture = "http://www.roblox.com/asset/?id=145405176"
partyhat = Instance.new("Hat")
partyhat.AttachmentPos = Vector3.new(0.1, -0.8, 0)
partyhat.AttachmentUp = Vector3.new(0.3, 1, 0)
hat = Instance.new("Part", partyhat)
hat.Name = "Handle"
hat.Size = Vector3.new(1, 1, 1)
hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshType = "FileMesh"
hatmesh.MeshId = "http://www.roblox.com/asset/?id=1778999"
hatmesh.TextureId = "http://www.roblox.com/asset/?id=34150228"
partyhat.Parent = char
cake2:Destroy()
end
end)
game:GetService("Debris"):AddItem(cake2, 20)
end
end)
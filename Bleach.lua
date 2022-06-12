nigga = Instance.new("Tool")
nigga.Parent = game.Players.LocalPlayer.Backpack
nigga.Name = "KYS"
nigga2 = Instance.new("Part", nigga)
nigga2.Name = "Handle"
asd = Instance.new("SpecialMesh", nigga2)
asd.MeshId = "rbxassetid://483388971"
asd.TextureId = "rbxassetid://520016684"
asd.Name = "Mesh"
asd.Scale = Vector3.new(0.005, 0.005, 0.005)
pussay = Instance.new("Sound", asd)
pussay.Playing = false
pussay.SoundId = "http://www.roblox.com/asset/?id=10722059"
pussay.Name = "DRINKNOISE"
pussay.Volume = 10

local Tool = nigga
script.Parent = game.Players.LocalPlayer.Backpack.KYS

function onActivated()

Tool.GripForward = Vector3.new(0,-.759,-.651)
Tool.GripPos = Vector3.new(1.5,-.5,.3)
Tool.GripRight = Vector3.new(1,0,0)
Tool.GripUp = Vector3.new(0,.651,-.759)

pussay:Play()

wait(3)

local h = Tool.Parent:FindFirstChild("Humanoid")
if (h ~= nil) then
if (h.MaxHealth > h.Health - 500) then
h.Health = h.Health - 500
else 
h.Health = h.MaxHealth
end
end

Tool.GripForward = Vector3.new(-.976,0,-0.217)
Tool.GripPos = Vector3.new(0.03,0,0)
Tool.GripRight = Vector3.new(.217,0,-.976)
Tool.GripUp = Vector3.new(0,1,0)

end


game.Players.LocalPlayer.Backpack.KYS.Activated:connect(onActivated)
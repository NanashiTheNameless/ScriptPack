c = game.Players.LocalPlayer
asd = c.Character

local mesh = Instance.new("SpecialMesh") 
mesh.Parent = asd.Torso 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(1.5, 1.5, 3) 
mesh.Offset = Vector3.new(0,-.3,0)
asd.Head.face.Texture = "http://www.roblox.com/asset/?id=323865883"
function onTouched(part)
     local h = part.Parent:findFirstChild("Humanoid")
     if h~=nil then
o1 = Instance.new("Sound")
o1.Parent = workspace
o1.SoundId = "rbxassetid://618667795"
o1:Play()
h.Parent:Destroy()
mesh.Scale = mesh.Scale * 1.2
       end
end

c.Character.Torso.Touched:connect(onTouched)
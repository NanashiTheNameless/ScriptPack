class = {Hat = true, Pants = true, Shirt = true, Hat = true, Accoutrement = true}
plr = game.Players.yfc
me = plr.Character
function mask()
for i, v in ipairs(me:GetChildren()) do
if class[v.className] then
v:remove()
end
end
print("Existing Items Removed")
wait()
h = Instance.new("Hat")
h.AttachmentPos = Vector3.new(0,0.4,0)
h.Name = "GhoulMask"
sm = Instance.new("SpecialMesh")
ha = Instance.new("Part")
ha.formFactor = 2
ha.Name = "Handle"
sm.Parent = ha
ha.TopSurface = 0
ha.BottomSurface = 0
sm.Scale = Vector3.new(0.7, 0.7, 0.7)
sm.MeshType = "Sphere"
ha.Size = Vector3.new(2, 0.4, 2)
ha.BrickColor = BrickColor.Black()
fr = ha:clone()
fr.Name = "Front"
fr.Parent = h
fr.Transparency = 1
de = Instance.new("Decal")
de.Face = 1
de.Texture = "http://www.roblox.com/asset/?id=5189108"
de2 = de:clone()
de2.Face = 4
de2.Parent = fr
de.Parent = fr
de2.Texture = "http://www.roblox.com/asset/?id=5189154"
fr.Mesh.MeshType = "Brick"
fr.Mesh.Scale = Vector3.new(1, 0, 1)

s = Instance.new("Script")
s.Source = [[
handle = script.Parent.Handle
function c()
w = Instance.new("Weld")
w.Parent = handle
w.Part0 = handle
w.Part1 = handle.Parent.Front
w.C0 = CFrame.new(0,0.15,-0.7)
w.C1 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
handle.CFrame = handle.CFrame + Vector3.new(0,10,0)
end
script.Parent.AncestryChanged:connect(c)
]]
ha.Parent = h
fr.Parent = h
s.Parent = h
h.Parent = me
print("Hat Created")
--plr.CharacterAppearance = ""

me.Torso.roblox.Texture = "http://www.roblox.com/asset/?id=5018737"
shirt = Instance.new("Shirt")
shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=5084833"
shirt.Name = "Shirt"
trou = Instance.new("Pants")
trou.PantsTemplate = "http://www.roblox.com/asset/?id=5084923"
trou.Name = "Trousers"
shirt.Parent = me
trou.Parent = me
end
function onChanged(prop) 
print(prop)
if prop == "Character" then 
print("Changing")
wait(0.3)

end
end
plr.Changed:connect(onChanged)
mask()
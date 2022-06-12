plr=game.Players.rigletto
char=plr.Character
--[[Below, Making of the triforce]]
tr1=Instance.new("Model",char)
tr1.Name="Tr1"
tp1=Instance.new("Part",tr1)
tp1.FormFactor="Custom"
tp1.Reflectance=0.4
tp1.Size=Vector3.new(.3,6,4)
tp1.TopSurface="Smooth"
tp1.BottomSurface="Smooth"
tp1.BrickColor=BrickColor.new("New Yeller")
tp1m=Instance.new("SpecialMesh",tp1)
tp1m.MeshType="Wedge"
tp2=Instance.new("Part",tr1)
tp2.FormFactor="Custom"
tp2.Reflectance=0.4
tp2.Size=Vector3.new(.3,6,4)
tp2.TopSurface="Smooth"
tp2.BottomSurface="Smooth"
tp2.BrickColor=BrickColor.new("New Yeller")
tp2m=Instance.new("SpecialMesh",tp2)
tp2m.MeshType="Wedge"
wtp12=Instance.new("Weld",tp1)
wtp12.Part0=tp1
wtp12.Part1=tp2
wtp12.C1=CFrame.new(0,0,4) * CFrame.Angles(0,15.71,0)
--[[ First Tri Piece.]]
tr2=Instance.new("Model",char)
tr2.Name="Tr2"
tp3=Instance.new("Part",tr2)
tp3.FormFactor="Custom"
tp3.Reflectance=0.4
tp3.Size=Vector3.new(.3,6,4)
tp3.TopSurface="Smooth"
tp3.BottomSurface="Smooth"
tp3.BrickColor=BrickColor.new("New Yeller")
tp3m=Instance.new("SpecialMesh",tp3)
tp3m.MeshType="Wedge"
tp4=Instance.new("Part",tr2)
tp4.FormFactor="Custom"
tp4.Reflectance=0.4
tp4.Size=Vector3.new(.3,6,4)
tp4.TopSurface="Smooth"
tp4.BottomSurface="Smooth"
tp4.BrickColor=BrickColor.new("New Yeller")
tp4m=Instance.new("SpecialMesh",tp4)
tp4m.MeshType="Wedge"
wtp12=Instance.new("Weld",tp3)
wtp12.Part0=tp3
wtp12.Part1=tp4
wtp12.C1=CFrame.new(0,0,4) * CFrame.Angles(0,15.71,0)
--[[Second Ti Piece.]]
tr3=Instance.new("Model",char)
tr3.Name="Tr3"
tp5=Instance.new("Part",tr3)
tp5.FormFactor="Custom"
tp5.Reflectance=0.4
tp5.Size=Vector3.new(.3,6,4)
tp5.TopSurface="Smooth"
tp5.BottomSurface="Smooth"
tp5.BrickColor=BrickColor.new("New Yeller")
tp5m=Instance.new("SpecialMesh",tp5)
tp5m.MeshType="Wedge"
tp6=Instance.new("Part",tr3)
tp6.FormFactor="Custom"
tp6.Reflectance=0.4
tp6.Size=Vector3.new(.3,6,4)
tp6.TopSurface="Smooth"
tp6.BottomSurface="Smooth"
tp6.BrickColor=BrickColor.new("New Yeller")
tp6m=Instance.new("SpecialMesh",tp6)
tp6m.MeshType="Wedge"
wtp12=Instance.new("Weld",tp5)
wtp12.Part0=tp5
wtp12.Part1=tp6
wtp12.C1=CFrame.new(0,0,4) * CFrame.Angles(0,15.71,0)
--[[Third Tri Piece.]]
--[[Main Weld]]
wp1=tp1
wp2=tp3
wp3=tp6
mw=Instance.new("Weld",wp1)
mw.Part0=wp1
mw.Part1=wp2
mw.C1=CFrame.new(0,6,-4)
mw2=Instance.new("Weld",wp2)
mw2.Part0=wp2
mw2.Part1=wp3
mw2.C1=CFrame.new(0,0,8)
--[[End Of Main Weld]]
gc1=tr1:GetChildren()
for i =1,#gc1 do
if gc1[i]:IsA("Part") then
gc1[i].CanCollide=false
end
end
gc2=tr2:GetChildren()
for i =1,#gc2 do
if gc2[i]:IsA("Part") then
gc2[i].CanCollide=false
end
end
gc3=tr3:GetChildren()
for i =1,#gc3 do
if gc3[i]:IsA("Part") then
gc3[i].CanCollide=false
end
end
game.Workspace.Base:BreakJoints()
--[[Main Float]]
--[[
Position = Instance.new("BodyPosition", wp1)
Position.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Gyro = Instance.new("BodyGyro", wp1)
Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
coroutine.resume(coroutine.create(function()
while true do
Position.position = plr.Character.Torso.Position + Vector3.new(1, 0, 1)
Gyro.cframe = wp1.CFrame * CFrame.Angles(0, 5, 0)
wait(.1)
end
end))]]

weld=Instance.new("Weld",wp1)
weld.Part0=wp1
weld.Part1=char.Torso
weld.C1=CFrame.new(0,0,0) * CFrame.Angles(0,0,4.7)
weld.C0=CFrame.new(-3,-5.2,2)
weld2=Instance.new("Weld",wp1)
weld2.Part0=wp1
weld2.Part1=nil
--[[End of Main Float]]

--mediafire gtfo password
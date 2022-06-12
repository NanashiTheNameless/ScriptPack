f=game.Players.yfc.Backpack:GetChildren()
for i = 1,#f do
if f[i].Name == "Control" then
f[i]:remove()
end
end
o=game.Workspace.ThePC8110:GetChildren()
for i = 1,#f do
if o[i].Name == "Main" then
o[i]:remove()
end
end
local RightShoulder = game.Workspace.ThePC8110.Torso["Right Shoulder"]
local LeftShoulder = game.Workspace.ThePC8110.Torso["Left Shoulder"]
x=game.Players.yfc
h=Instance.new("HopperBin",x.Backpack)
h.Name = "Drop"
function cO(mouse)
mouse.KeyDown:connect(function(key)
if key == string.char(103) then
c=game.Workspace.yfc.Main:clone()
c.Parent = game.Workspace
function Ontouched(hit)
hit:remove()
end
c.Part.Touched:connect(Ontouched)
wait(5)
c:remove()
end
end)
end
h.Selected:connect(cO)
while true do
if game.Workspace:findFirstChild("ThePC8110") then
RightShoulder:SetDesiredAngle(3.14)
LeftShoulder:SetDesiredAngle(-3.14)
m=Instance.new("Model",x.Character)
m.Name = "Main"
p=Instance.new("Part",m)
p.Position = Vector3.new(x.Character.Torso.Position.X, x.Character.Torso.Position.Y, x.Character.Torso.Position.Z)
p.CanCollide = false
p.BrickColor = BrickColor.Blue()
p.Material = "Ice"
p.Anchored = true
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.Size = Vector3.new(4, 1.2, 4)
p.Shape = "Ball"
hg = math.huge
game.Workspace.yfc.Humanoid.MaxHealth = hg
game.Workspace.yfc.Humanoid.Health = hg
wait(0.01)
m:remove()
end
end

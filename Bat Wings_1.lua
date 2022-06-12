I = "LocalPlayer"
he = game.Workspace[I]
he["Left Arm"]:Remove()
he["Right Arm"]:Remove()
Player = game.Players[I]
local h = Instance.new("HopperBin") 
h.Name = "Batman!" 
h.Parent = Player.Backpack
local s = Instance.new("Script") 
s.Parent = h 
s.Name = "Script" 
local bin = s.Parent 
length = 5
away = 2 
gap = 0 
local p0 = Instance.new("Part")
p0.Parent = game.Players[I].Character.Torso
p0.Position = Vector3.new(0, 50, 0)
p0.BrickColor = BrickColor.new("Really black")
p0.TopSurface = 0
p0.BottomSurface = 0
p0.Size = Vector3.new(3, 1, 2)
p0.CanCollide = False
local w = Instance.new("Weld")
w.Parent = game.Players[I].Character
w.Part1 = game.Players[I].Character.Head
w.Part0 = p0
w.C0 = CFrame.new(0, 1,-0.7) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
local A = Instance.new("SpecialMesh") 
A.MeshId = "http://www.roblox.com/asset/?id=19367744"
A.Parent = p0
A.Scale = Vector3.new(2, 2, 2)
local part1 = Instance.new("Part") 
local p1 = Instance.new("Part")
p1.Parent = game.Players[I].Character.Torso
p1.Position = Vector3.new(0, 50, 0)
p1.BrickColor = BrickColor.new("Really black")
p1.TopSurface = 0
p1.BottomSurface = 0
p1.Size = Vector3.new(3, 1, 2)
p1.CanCollide = False
p1.Transparency = 1
local w = Instance.new("Weld")
w.Parent = game.Players[I].Character
w.Part1 = game.Players[I].Character.Head
w.Part0 = p1
w.C0 = CFrame.new(0,-1,-2.3) * CFrame.fromEulerAnglesXYZ(math.pi/-2,0,0)
local A = Instance.new("SpecialMesh") 
A.MeshId = "http://www.roblox.com/asset/?id=19367744"
A.Parent = p1
A.Scale = Vector3.new(2, 2, 2)
local part1 = Instance.new("Part") 
part1.BrickColor = BrickColor.new("White") 
part1.TopSurface = 0 
part1.BottomSurface = 0 
part1.Locked = true 
part1.Size = Vector3.new(2,1,4) 
part1.Anchored = true 
part1.Shape = 1 
part1.CanCollide = true 
part1.Parent = nil 
part1.Name = "Part1" 
part1.Transparency = 1
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick"
A.Parent = part1
A.Scale = Vector3.new(0.9, 1.1, 1.1)
distance = length/2
speed = 0.5
local main = part1:Clone() 
main.Anchored = true 
main.TopSurface = 0 
main.BottomSurface = 0 
main.Transparency = 1
function onButton1Down(mouse) 
clicking = true
local player = game.Players.LocalPlayer 
if player == nil then return end 
main.Parent = me 
part1.Parent = me
me1 = bin.Parent.Parent 
me = bin.Parent.Parent.Character 
while clicking do 
distance = length/3
mousehit = mouse.Hit.p 
if (main.Position - mousehit).magnitude >speed then 
main_mousehit = (main.Position - mousehit).unit*speed 
else 
main_mousehit = (main.Position - mousehit).unit*1 
end 
start1 = main.Position-main_mousehit 
main.CFrame = CFrame.new(start1.x, start1.y, start1.z) 
p1pos = part1.Position 
start1_p1pos = (start1 - p1pos).unit 
spreadp1 = start1_p1pos*(distance+away) 
part1.CFrame = CFrame.new(start1-spreadp1, start1) 
start1 = main.Position-main_mousehit 
main.CFrame = CFrame.new(start1.x, start1.y, start1.z) 
p1pos = part1.Position 
start1_p1pos = (start1 - p1pos).unit 
spreadp1 = start1_p1pos*(distance+away) 
part1.CFrame = CFrame.new(start1-spreadp1, start1) 
he.Torso.Neck.C1=CFrame.new(0,-0.5,0,-1,-0,-0,0,0,1,0,1,0) 
he.Torso.Neck.C1=he.Torso.Neck.C1*CFrame.Angles(math.rad(80),0,0)
he.Torso.CFrame=part1.CFrame*CFrame.new(0,1,0)*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)
he.Torso.Anchored = true
wait()
end
end
function onButton1Up(mouse)
clicking = false
end
function onSelected(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
end 
bin.Selected:connect(onSelected) 
while true do
wait(0.2)
p1.Transparency = 0
p0.Transparency = 1
wait(0.2)
p1.Transparency = 1
p0.Transparency = 0
end
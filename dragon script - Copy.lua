:ls I = "luxulux" --add your name here 
game.Players[I].Character.Head.Transparency = 1 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 2) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(0,0,1.5) * CFrame.fromEulerAnglesXYZ(0,0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(1.5, 0.8, 1) 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 1.5) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(0,-1.1,0) * CFrame.fromEulerAnglesXYZ(math.pi/4, 0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(1.5, 1, 1) 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 1.5) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(0.4,-1.4,-1.3) * CFrame.fromEulerAnglesXYZ(math.pi/4, 0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(0.5, 0.5, 0.5) 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 1.5) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(-0.4,-1.4,-1.3) * CFrame.fromEulerAnglesXYZ(math.pi/4, 0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(0.5, 0.5, 0.5) 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 1.5) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(0,0.2,-0.1) * CFrame.fromEulerAnglesXYZ(math.pi/-3,0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(1.5, 1.5, 1.5) 
for c = 1, #game.Players[I].Character:GetChildren()do 
char = game.Players[I].Character:GetChildren() 
if char[c]:IsA("Part") then 
char[c].Transparency = 1 
elseif char[c]:IsA("Hat") then 
char[c].Handle:Remove() 
end 
end 
if game.Players[I].Character.Head:FindFirstChild("face") then 
game.Players[I].Character.Head.face:Remove() 
end 
--[[------------------------------------------------------------------------]] 
Player = game.Players[I] 
local h = Instance.new("HopperBin") 
h.Name = "Fly" 
h.Parent = Player.Backpack 
local s = Instance.new("Script") 
s.Parent = h 
s.Name = "Script" 
local bin = s.Parent 
length = 3 
away = 2 
gap = 0 
segs = 40 
distance = length/3 
speed = 1 
Wave = 0 
local Tail = {} 
local part0 = Instance.new("Part") 
part0.BrickColor = BrickColor.new("Really black") 
part0.TopSurface = 0 
part0.BottomSurface = 0 
part0.Locked = true 
part0.FormFactor = "Symmetric" 
part0.Size = Vector3.new(2,2,2) 
part0.Anchored = true 
part0.Shape = 1 
part0.CanCollide = true 
part0.Parent = nil 
part0.Name = "Part0" 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = part0 
A.Name = "Mesh" 
A.Scale = Vector3.new(1.1, 1.1, 1.1) 
for p = 1,segs do 
Tail[p] = part0:Clone() 
Tail[p].Parent = nil 
Tail[p].Name = "Part"..p 
Tail[p].CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 
Tail[p].Mesh.Scale = Vector3.new(1.1 - (p/1000), 1.1 - (p/1000), 1.1 - (p/1000)) 
end 
function onButton1Down(mouse) 
local player = game.Players.LocalPlayer 
if player == nil then return end 
me1 = bin.Parent.Parent 
me = bin.Parent.Parent.Character 
for p = 1,segs do 
Tail[p].Parent = me 
end 
main = part0 
part1 = Tail[1] 
follow = true 
while follow do 
Wave = Wave + 0.02 
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
me.Torso.CFrame=Tail[1].CFrame*CFrame.new(0,-0.5,-4)*CFrame.fromEulerAnglesXYZ(-math.pi/5,0,0) 
me.Torso.Anchored = true 
Wave = Wave + 0.02 
pc = me.Torso.CFrame 
starti = me.Torso.Position-(pc.lookVector*distance) 
pipos = Tail[1].Position 
starti_pipos = (starti - pipos).unit 
spreadpi = starti_pipos*(distance+gap) 
Tail[1].CFrame = CFrame.new(starti-spreadpi, starti) + (part0.CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6)/4 
--[[ 
for i = 1,39 do 
wait() 
print("p2c = Tail["..i.."].CFrame\ 
start3 = Tail["..i.."].Position-(p2c.lookVector*distance)\ 
p3pos = Tail["..(i+1).."].Position\ 
start3_p3pos = (start3 - p3pos).unit\ 
spreadp3 = start3_p3pos*(distance+gap)\ 
Tail["..(i+1).."].CFrame = CFrame.new(start3-spreadp3, start3 - Vector3.new(0,math.sin(Wave*6+"..((i-1)/100)..")/4,0) ) + Vector3.new(0,math.sin(Wave*6+"..((i)/100)..")/4,0)\ 
" ) 
end 
]] 
p2c = Tail[1].CFrame start3 = Tail[1].Position-(p2c.lookVector*distance) p3pos = Tail[2].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[2].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[1].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0)/4 ) + (Tail[2].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.01)/4 
p2c = Tail[2].CFrame start3 = Tail[2].Position-(p2c.lookVector*distance) p3pos = Tail[3].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[3].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[2].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.01)/4 ) + (Tail[3].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.02)/4 
p2c = Tail[3].CFrame start3 = Tail[3].Position-(p2c.lookVector*distance) p3pos = Tail[4].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[4].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[3].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.02)/4 ) + (Tail[4].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.03)/4 
p2c = Tail[4].CFrame start3 = Tail[4].Position-(p2c.lookVector*distance) p3pos = Tail[5].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[5].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[4].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.03)/4 ) + (Tail[5].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.04)/4 
p2c = Tail[5].CFrame start3 = Tail[5].Position-(p2c.lookVector*distance) p3pos = Tail[6].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[6].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[5].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.04)/4 ) + (Tail[6].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.05)/4 
p2c = Tail[6].CFrame start3 = Tail[6].Position-(p2c.lookVector*distance) p3pos = Tail[7].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[7].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[6].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.05)/4 ) + (Tail[7].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.06)/4 
p2c = Tail[7].CFrame start3 = Tail[7].Position-(p2c.lookVector*distance) p3pos = Tail[8].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[8].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[7].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.06)/4 ) + (Tail[8].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.07)/4 
p2c = Tail[8].CFrame start3 = Tail[8].Position-(p2c.lookVector*distance) p3pos = Tail[9].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[9].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[8].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.07)/4 ) + (Tail[9].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.08)/4 
p2c = Tail[9].CFrame start3 = Tail[9].Position-(p2c.lookVector*distance) p3pos = Tail[10].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[10].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[9].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.08)/4 ) + (Tail[10].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.09)/4 
p2c = Tail[10].CFrame start3 = Tail[10].Position-(p2c.lookVector*distance) p3pos = Tail[11].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[11].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[10].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.09)/4 ) + (Tail[11].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.1)/4 
p2c = Tail[11].CFrame start3 = Tail[11].Position-(p2c.lookVector*distance) p3pos = Tail[12].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[12].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[11].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.1)/4 ) + (Tail[12].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.11)/4 
p2c = Tail[12].CFrame start3 = Tail[12].Position-(p2c.lookVector*distance) p3pos = Tail[13].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[13].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[12].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.11)/4 ) + (Tail[13].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.12)/4 
p2c = Tail[13].CFrame start3 = Tail[13].Position-(p2c.lookVector*distance) p3pos = Tail[14].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[14].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[13].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.12)/4 ) + (Tail[14].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.13)/4 
p2c = Tail[14].CFrame start3 = Tail[14].Position-(p2c.lookVector*distance) p3pos = Tail[15].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[15].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[14].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.13)/4 ) + (Tail[15].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.14)/4 
p2c = Tail[15].CFrame start3 = Tail[15].Position-(p2c.lookVector*distance) p3pos = Tail[16].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[16].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[15].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.14)/4 ) + (Tail[16].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.15)/4 
p2c = Tail[16].CFrame start3 = Tail[16].Position-(p2c.lookVector*distance) p3pos = Tail[17].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[17].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[16].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.15)/4 ) + (Tail[17].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.16)/4 
p2c = Tail[17].CFrame start3 = Tail[17].Position-(p2c.lookVector*distance) p3pos = Tail[18].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[18].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[17].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.16)/4 ) + (Tail[18].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.17)/4 
p2c = Tail[18].CFrame start3 = Tail[18].Position-(p2c.lookVector*distance) p3pos = Tail[19].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[19].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[18].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.17)/4 ) + (Tail[19].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.18)/4 
p2c = Tail[19].CFrame start3 = Tail[19].Position-(p2c.lookVector*distance) p3pos = Tail[20].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[20].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[19].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.18)/4 ) + (Tail[20].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.19)/4 
p2c = Tail[20].CFrame start3 = Tail[20].Position-(p2c.lookVector*distance) p3pos = Tail[21].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[21].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[20].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.19)/4 ) + (Tail[21].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.2)/4 
p2c = Tail[21].CFrame start3 = Tail[21].Position-(p2c.lookVector*distance) p3pos = Tail[22].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[22].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[21].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.2)/4 ) + (Tail[22].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.21)/4 
p2c = Tail[22].CFrame start3 = Tail[22].Position-(p2c.lookVector*distance) p3pos = Tail[23].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[23].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[22].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.21)/4 ) + (Tail[23].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.22)/4 
p2c = Tail[23].CFrame start3 = Tail[23].Position-(p2c.lookVector*distance) p3pos = Tail[24].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[24].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[23].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.22)/4 ) + (Tail[24].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.23)/4 
p2c = Tail[24].CFrame start3 = Tail[24].Position-(p2c.lookVector*distance) p3pos = Tail[25].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[25].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[24].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.23)/4 ) + (Tail[25].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.24)/4 
p2c = Tail[25].CFrame start3 = Tail[25].Position-(p2c.lookVector*distance) p3pos = Tail[26].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[26].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[25].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.24)/4 ) + (Tail[26].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.25)/4 
p2c = Tail[26].CFrame start3 = Tail[26].Position-(p2c.lookVector*distance) p3pos = Tail[27].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[27].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[26].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.25)/4 ) + (Tail[27].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.26)/4 
p2c = Tail[27].CFrame start3 = Tail[27].Position-(p2c.lookVector*distance) p3pos = Tail[28].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[28].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[27].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.26)/4 ) + (Tail[28].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.27)/4 
p2c = Tail[28].CFrame start3 = Tail[28].Position-(p2c.lookVector*distance) p3pos = Tail[29].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[29].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[28].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.27)/4 ) + (Tail[29].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.28)/4 
p2c = Tail[29].CFrame start3 = Tail[29].Position-(p2c.lookVector*distance) p3pos = Tail[30].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[30].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[29].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.28)/4 ) + (Tail[30].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.29)/4 
p2c = Tail[30].CFrame start3 = Tail[30].Position-(p2c.lookVector*distance) p3pos = Tail[31].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[31].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[30].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.29)/4 ) + (Tail[31].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.3)/4 
p2c = Tail[31].CFrame start3 = Tail[31].Position-(p2c.lookVector*distance) p3pos = Tail[32].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[32].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[31].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.3)/4 ) + (Tail[32].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.31)/4 
p2c = Tail[32].CFrame start3 = Tail[32].Position-(p2c.lookVector*distance) p3pos = Tail[33].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[33].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[32].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.31)/4 ) + (Tail[33].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.32)/4 
p2c = Tail[33].CFrame start3 = Tail[33].Position-(p2c.lookVector*distance) p3pos = Tail[34].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[34].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[33].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.32)/4 ) + (Tail[34].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.33)/4 
p2c = Tail[34].CFrame start3 = Tail[34].Position-(p2c.lookVector*distance) p3pos = Tail[35].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[35].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[34].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.33)/4 ) + (Tail[35].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.34)/4 
p2c = Tail[35].CFrame start3 = Tail[35].Position-(p2c.lookVector*distance) p3pos = Tail[36].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[36].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[35].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.34)/4 ) + (Tail[36].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.35)/4 
p2c = Tail[36].CFrame start3 = Tail[36].Position-(p2c.lookVector*distance) p3pos = Tail[37].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[37].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[36].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.35)/4 ) + (Tail[37].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.36)/4 
p2c = Tail[37].CFrame start3 = Tail[37].Position-(p2c.lookVector*distance) p3pos = Tail[38].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[38].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[37].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.36)/4 ) + (Tail[38].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.37)/4 
p2c = Tail[38].CFrame start3 = Tail[38].Position-(p2c.lookVector*distance) p3pos = Tail[39].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[39].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[38].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.37)/4 ) + (Tail[39].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.38)/4 
p2c = Tail[39].CFrame start3 = Tail[39].Position-(p2c.lookVector*distance) p3pos = Tail[40].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[40].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[39].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.38)/4 ) + (Tail[40].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.39)/4 
wait() 
end 
end 
function onButton1Up(mouse) 
follow = false 
end 
function onSelected(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(onKeyDown) 
end 
bin.Selected:connect(onSelected) 

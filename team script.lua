script/--------------------MIKSTERMAN,ACB227,PIANOMAN112233,AND AWXSD5561's SCRIPT-----------
me = Game.Players.acb227 --change with your name 
if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "Soul Gun" 
bin.Parent = me.Backpack 
script.Parent = bin 
end 
hand = Instance.new("Part") 
hand.Parent = me.Character 
hand.Size = Vector3.new(1, 1, 1)
hand:BreakJoints() 
hand.BrickColor = BrickColor.new("Really black") 
handm = Instance.new("BlockMesh") 
handm.Parent = hand 
handm.Scale = Vector3.new(0.45, 0.45, 0.45) 
handw = Instance.new("Weld") 
handw.Parent = hand 
handw.Part0 = hand 
handw.Part1 = me.Character["Right Arm"] 
handw.C0 = CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, 0) 
part2 = Instance.new("Part") 
part2.Parent = me.Character 
part2.Size = Vector3.new(1, 1, 1)
part2:BreakJoints() 
part2.BrickColor = BrickColor.new("Really black") 
part2m = Instance.new("BlockMesh") 
part2m.Parent = part2 
part2m.Scale = Vector3.new(0.45, 0.75, 1.2) 
part2w = Instance.new("Weld") 
part2w.Parent = part2 
part2w.Part0 = part2 
part2w.Part1 = hand 
part2w.C0 = CFrame.new(0, 0, -0.5) * CFrame.Angles(0, 0, 0) 
bin = script.Parent 
local col = "Really black"
function onButton1Down(mouse) 
p = Instance.new("Part")
p.Parent = me.Character 
p.Size = Vector3.new(1, 1, 1) 
p.TopSurface = "Smooth" 
p.BottomSurface = "Smooth" 
p.Anchored = true 
p.BrickColor = BrickColor.new(col) 
pa = Instance.new("SelectionPointLasso")
pa.Parent = me.Character
pa.Point = mouse.hit.p  
pa.Color = BrickColor.new(col) 
pa.Humanoid = me.Character.Humanoid
while wait() do
p.CFrame = CFrame.new(mouse.hit.p) 
pa.Point = mouse.hit.p 
end  --[[cant have a while true do in middle of script ]] 
end 
function onButton1Up(mouse) 
p:remove()
pa:remove()
end 
function onKeyDown(key, mouse) 
key:lower() 
if key == "j" then 
ff = mouse.Target.Parent:FindFirstChild("Humanoid") 
for i = 1, 20 do 
ff.Parent.Torso.Transparency = ff.Parent.Torso.Transparency - 0.05 
ff.Parent.Head.Transparency = ff.Parent.Torso.Transparency - 0.05 
ff.Parent["Right Leg"].Transparency = ff.Parent.Torso.Transparency - 0.05 
ff.Parent["Right Arm"].Transparency = ff.Parent.Torso.Transparency - 0.05 
ff.Parent["Left Leg"].Transparency = ff.Parent.Torso.Transparency - 0.05 
ff.Parent["Left Arm"].Transparency = ff.Parent.Torso.Transparency - 0.05 
wait(0.5) 
end 
wait(3) 
ff.Health = 1  
elseif key == "k" then 
health = mouse.Target.Parent:FindFirstChild("Humanoid")
if health~=nil then  
for i = 1, 20 do
health.Parent.Humanoid.Health=math.huge 
wait(0.5) 
end 
wait(3) 
health.Health =  100
for i = 1, 20 do 
health.Health = health.Health - 15 
wait(0.5) 
end 
end 
end 
end 
bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
end) 

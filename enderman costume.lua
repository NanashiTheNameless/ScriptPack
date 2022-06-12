name = "yfc" 
player = game.Players:findFirstChild(name) 
char = player.Character 
local tor = char:FindFirstChild("Torso")
local ra = char:FindFirstChild("Right Arm")
local la = char:FindFirstChild("Left Arm")
local rl = char:FindFirstChild("Right Leg")
local ll = char:FindFirstChild("Left Leg")
local h = char:FindFirstChild("Head")
ToolName = "EnderAttack"
b = Instance.new("BlockMesh") 
motor = "Motor6D" 
char.Torso.CFrame = char.Torso.CFrame + Vector3.new(0, 10, 0) 
bm = Instance.new("BlockMesh") 
for _,v in pairs(char:children()) do 
if v:IsA("Hat") then 
v:remove() 
end 
end 
h.Transparency = 1
allchar = char:GetChildren() 
for i = 1, #allchar do 
if allchar[i]:IsA("Shirt") then 
allchar[i]:Remove() 
end 
end 
allchar = char:GetChildren() 
for i = 1, #allchar do 
if allchar[i]:IsA("Pants") then 
allchar[i]:Remove() 
end 
end 
----------------------------------Head
if char:findFirstChild("EnderHead") then 
char:findFirstChild("EnderHead"):Remove() 
end 
 
local enderm = Instance.new("Model", char) 
enderm.Name = "EnderHead" 
 
head2 = Instance.new("Part",enderm)
head2.formFactor = "Custom"
head2.CFrame = h.CFrame
head2.Size = Vector3.new(2.5,2.1,2.5)
head2.TopSurface = 0
head2.BottomSurface = 0
head2.BrickColor = BrickColor.new("Really black")
head2.Anchored = false
head2.CanCollide = false
local cbm = bm:Clone() 
cbm.Parent = head2
headweld = Instance.new("Weld",h)
headweld.Part0 = h
headweld.Part1 = head2
headweld.C0 = CFrame.new(0, 0.25, 0)
eye1 = Instance.new("Part",enderm)
eye1.formFactor = "Custom"
eye1.CFrame = h.CFrame
eye1.Size = Vector3.new(.75,.2,.3)
eye1.TopSurface = 0
eye1.BottomSurface = 0
eye1.BrickColor = BrickColor.new("Lavender")
eye1.Anchored = false
eye1.CanCollide = false
local cbm = bm:Clone() 
cbm.Parent = eye1
eye1weld = Instance.new("Weld",h)
eye1weld.Part0 = h
eye1weld.Part1 = eye1
eye1weld.C0 = CFrame.new(-0.6,0.45,-1.2)
eye2 = Instance.new("Part",enderm)
eye2.formFactor = "Custom"
eye2.CFrame = h.CFrame
eye2.Size = Vector3.new(.75,0.2,0.3)
eye2.TopSurface = 0
eye2.BottomSurface = 0
eye2.BrickColor = BrickColor.new("Lavender")
eye2.Anchored = false
eye2.CanCollide = false
local cbm = bm:Clone() 
cbm.Parent = eye2
eye2weld = Instance.new("Weld",h)
eye2weld.Part0 = h
eye2weld.Part1 = eye2
eye2weld.C0 = CFrame.new(0.6,0.45,-1.2)
eye3 = Instance.new("Part",enderm)
eye3.formFactor = "Custom"
eye3.CFrame = h.CFrame
eye3.Size = Vector3.new(.25,0.21,0)
eye3.TopSurface = 0
eye3.BottomSurface = 0
eye3.BrickColor = BrickColor.new("Bright violet")
eye3.Anchored = false
eye3.CanCollide = false
local cbm = bm:Clone() 
cbm.Parent = eye3
eye3weld = Instance.new("Weld",h)
eye3weld.Part0 = h
eye3weld.Part1 = eye3
eye3weld.C0 = CFrame.new(0.6,0.45,-1.3)
eye4 = Instance.new("Part",enderm)
eye4.formFactor = "Custom"
eye4.CFrame = h.CFrame
eye4.Size = Vector3.new(.25,0.21,0)
eye4.TopSurface = 0
eye4.BottomSurface = 0
eye4.BrickColor = BrickColor.new("Bright violet")
eye4.Anchored = false
eye4.CanCollide = false
local cbm = bm:Clone() 
cbm.Parent = eye4
eye4weld = Instance.new("Weld",h)
eye4weld.Part0 = h
eye4weld.Part1 = eye4
eye4weld.C0 = CFrame.new(-0.6,0.45,-1.3)
------------------End Of Head, Start Of Body 
scale = 2 
 
if ll then
ll.formFactor = 3 
ll.Size = Vector3.new(0.5,2*scale,0.5)
ll.CFrame = ll.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
local bc = b:Clone() 
bc.Parent = ll 
end
if ra then
ra.formFactor = 3 
ra.Size = Vector3.new(0.5,1.75*scale,0.5)
local bc = b:Clone() 
bc.Parent = ra 
end
if la then
la.formFactor = 3 
la.Size = Vector3.new(0.5,1.75*scale,0.5)
local bc = b:Clone() 
bc.Parent = la 
end
if tor then
local bc = b:Clone() 
bc.Parent = tor 
bc.Scale = Vector3.new(1.05, 1.25, 1.2) 
end
if rl then
rl.formFactor = 3 
rl.Size = Vector3.new(0.5,2*scale,0.5)
local bc = b:Clone() 
bc.Parent = rl 
end
local rh = Instance.new(motor)
rh.Name = "Right Hip"
rh.MaxVelocity = 0.1
rh.Part0 = tor
rh.Part1 = rl
rh.C0 = CFrame.new(0.75*scale, -1*scale, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
rh.C1 = CFrame.new(0.55*scale, 1*1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
rh.Parent = tor
local lh = Instance.new(motor)
lh.Name = "Left Hip"
lh.MaxVelocity = 0.1
lh.Part0 = tor
lh.Part1 = ll
lh.C0 = CFrame.new(-0.75*scale, -1*scale, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
lh.C1 = CFrame.new(-0.55*scale, 1*1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
lh.Parent = tor
local rs = Instance.new(motor)
rs.Name = "Right Shoulder"
rs.MaxVelocity = 0.1
rs.Part0 = tor
rs.Part1 = ra
rs.C0 = CFrame.new(1*scale, 0.5*scale, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
rs.C1 = CFrame.new(0.35*scale, 1*scale, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
rs.Parent = tor
local ls = Instance.new(motor)
ls.Name = "Left Shoulder"
ls.MaxVelocity = 0.1
ls.Part0 = tor
ls.Part1 = la
ls.C0 = CFrame.new(1*scale, 0.5*scale, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
ls.C1 = CFrame.new(1.65*scale, 1*scale, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
ls.Parent = tor
local anim = char:FindFirstChild("Animate")
if anim then
local new = anim:clone()
anim:Remove()
new.Parent = char
end
-----------End 
while true do 
wait() 
local allchar = char:GetChildren() 
for i = 1, #allchar do 
if allchar[i]:IsA("Part") then 
allchar[i].BrickColor = BrickColor.new("Really black") 
end 
end 
end 
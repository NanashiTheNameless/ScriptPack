vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 
me = plyr.Character
brick = ""

function Touched(hit) 
brick = hit.Name 
wait(0.1) 
brick = hit.Name 
end 

sc = Instance.new("ScreenGui") 
sc.Name = "Invisible" 
sc.Parent = pg 
t = Instance.new("TextLabel") 
t.BackgroundTransparency = 0.3 
t.Name = "Text - Reset" 
t.Parent = sc 
t.Position = UDim2.new(0, 0, 0, 60) 
t.Size = UDim2.new(0, 0, 0, 200) 
t.Text = "" 
t.Visible = true 
tx = Instance.new("TextLabel") 
tx.BackgroundTransparency = 0.7 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 0, 0, 60) 
tx.Size = UDim2.new(0, 200, 0, 200) 
tx.Text = "" ..brick.. ""  
tx.Visible = false 

x = Instance.new("TextButton") 
x.BackgroundTransparency = 1 
x.Name = "Text - Reset" 
x.Parent = sc 
x.Position = UDim2.new(0, 0, 0, 0) 
x.Size = UDim2.new(0, 20000, 0, 20000) 
x.Text = " " 
x.Visible = true 

t = Instance.new("TextLabel") 
t.BackgroundTransparency = 0.3 
t.Name = "Text - Reset" 
t.Parent = sc 
t.Position = UDim2.new(0, 0, 0, 60) 
t.Size = UDim2.new(0, 0, 0, 200) 
t.Text = "" 
t.Visible = true 

x.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size + UDim2.new(0, 10, 0, 0) 
wait(0.1) 
t.Size = t.Size - UDim2.new(0, 200, 0, 0) 
wait(0.1) 
end 
end) 


if script.Parent.className ~= "HopperBin" then
bin = Instance.new("HopperBin") 
bin.Parent = game.Players.acb227.Backpack
bin.Name = "Craft"
script.Parent = bin 
char = bin.Parent.Parent.Character 
player = bin.Parent.Parent 
Joints = {char.Torso:findFirstChild("Left Shoulder"), char.Torso:findFirstChild("Right Shoulder")} 
Limbs = {char:findFirstChild("Left Arm"), char:findFirstChild("Right Arm")} 
LimbAngle1 = "" 
LimbAngle12 = "" 
LimbAngle2 = "" 
LimbAngle22 = "" 

function DisableLimb(Limb) 

Joint = Instance.new("Motor") 
Joint.Parent = char.Torso 
Joint.Part0 = Joint.Parent 
Joint.Part1 = Limbs[Limb] 
Joint.MaxVelocity = 0.1 
if (Limb == 1) then 
LimbAngle1 = Joints[1].C0 
LimbAngle12 = Joints[1].C1 
wait() 
Joints[Limb]:remove() 
Joint.C0 = CFrame.new(-1,0.5,0) * CFrame.Angles(0,-1.55,1.55) 
Joint.C1 = LimbAngle12 
Joint.Name = "Left Top" 
elseif(Limb == 2) then 
LimbAngle2 = Joints[2].C0 
LimbAngle22 = Joints[2].C1 
wait() 
Joints[Limb]:remove() 
Joint.C0 = CFrame.new(1,0.5,0) * CFrame.Angles(0,1.55,1.55) 
Joint.C1 = LimbAngle22 
Joint.Name = "Right Top" 
end 
Joints[Limb] = Joint 
end 

function EnableLimb(Limb) 
if (Limb == 1) then 
Joints[Limb].C0 = LimbAngle1 
Joints[Limb].C1 = LimbAngle12 
Joints[Limb].Name = "Left Shoulder" 
elseif(Limb == 2) then 
Joints[Limb].C0 = LimbAngle2 
Joints[Limb].C1 = LimbAngle22 
Joints[Limb].Name = "Right Shoulder" 
end 
anim = char.Animate:Clone() 
char.Animate:remove() 
anim.Parent = char 
end 
end 
bin = script.Parent 
function onSelect() 
tx.Visible = true
end 
bin.Selected:connect(onSelect)
function onDeselect() 
tx.Visible = false
end 
bin.Deselected:connect(onDeselect)

function Key(key,mouse) 
if key ~= nil then 
key:lower()
if key == "e" then 
bin.Parent.Parent.Character.Torso.CFrame = CFrame.new(mouse.hit.p)
end 
end 
end 
bin.Selected:connect(function(mouse)
mouse.KeyDown:connect(function(key) Key(key,mouse) end)
end)

bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() button1up(mouse) end) 
mouse.KeyDown:connect(function(key) KD(key, mouse) end) 
mouse.KeyUp:connect(function(key) KU(key) end) 
end) 
me.Torso.Touched:connect(Touched) 
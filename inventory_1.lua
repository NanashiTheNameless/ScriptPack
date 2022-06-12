teee = Instance.new("Tool") 
teee.Name = "Iron Sword" 

local handlee = Instance.new("Part") 
handlee.Name = "Handle" 
handlee.Parent = teee 
handlee.BrickColor = BrickColor.new("New Yeller") 
handlee.Size = Vector3.new(1, 1, 1) 
handlee.TopSurface = "Smooth" 
handlee.BottomSurface = "Smooth" 
handlee.Transparency = 0 
handlee.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = handlee 
m.Scale = Vector3.new(0.2, 1, 0.2) 
-----------------------------------------Brick2
local brick3 = Instance.new("Part") 
brick3.Name = "Part" 
brick3.Parent = teee 
brick3.formFactor = "Plate" 
brick3.BrickColor = BrickColor.new("New Yeller") 
brick3.Size = Vector3.new(1, 1, 1) 
brick3.TopSurface = "Smooth" 
brick3.BottomSurface = "Smooth" 
brick3.Transparency = 0 
brick3.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick3 
m.Scale = Vector3.new(0.2, 0.2, 1) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = brick3
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0.15) + Vector3.new(0, -0.5, 0)
-----------------------------------------Brick2
local brick4 = Instance.new("Part") 
brick4.Name = "Part" 
brick4.Parent = teee 
brick4.formFactor = "Plate" 
brick4.BrickColor = BrickColor.new("Really blue") 
brick4.Size = Vector3.new(1, 2, 1) 
brick4.TopSurface = "Smooth" 
brick4.BottomSurface = "Smooth" 
brick4.Transparency = 0 
brick4.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = brick4 
m.MeshType = "Wedge" 
m.Scale = Vector3.new(0.19, 1, 0.85) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = brick4
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0.15) + Vector3.new(0, -1.55, 0)

---------------------Part 2 
---------------------Part 2 
---------------------Part 2 

r = game:service("RunService") 


local damage = 100000 


local slash_damage = 100000 


sword = brick4 
Tool = teee 

function attack() 
local anim = Instance.new("StringValue") 
anim.Name = "toolanim" 
anim.Value = "Slash" 
anim.Parent = Tool 
end 

function lunge() 
local anim = Instance.new("StringValue") 
anim.Name = "toolanim" 
anim.Value = "Lunge" 
anim.Parent = Tool 
end 

function swordUp() 
Tool.GripForward = Vector3.new(-1,0,0) 
Tool.GripRight = Vector3.new(0,1,0) 
Tool.GripUp = Vector3.new(0,0,1) 
end 

function swordOut() 
Tool.GripForward = Vector3.new(0,0,1) 
Tool.GripRight = Vector3.new(0,-1,0) 
Tool.GripUp = Vector3.new(-1,0,0) 
end 



Tool.Enabled = true 

function onActivated() 

if not Tool.Enabled then 
return 
end 

Tool.Enabled = false 

local character = Tool.Parent; 
local humanoid = character.Humanoid 
if humanoid == nil then 
print("Humanoid not found") 
return 
end 


m = math.random(1, 2) 
if m == 1 then 
attack() 
wait(0.1) 
lunge() 
elseif m == 2 then 
lunge() 
end 

wait() 

Tool.Enabled = true 
end 


function onEquipped() 

end 


------part 3 
------part 3 
------part 3 
sword.Touched:connect(function(hit) 
human = hit.Parent:findFirstChild("Humanoid") 
if human then 
if hit.Parent.Name ~= "acb227" then 
human:TakeDamage(25) 
end 
end 
end) 

Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 



vip = "ScriptTyper" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

t = Instance.new("TextLabel") 
t.BackgroundTransparency = 0.3 
t.Name = "Text - Reset" 
t.Parent = sc 
t.Position = UDim2.new(0, 0, 0, 300)
t.Size = UDim2.new(0, 198, 0, 200) 
t.Text = "" 
t.Visible = true 
--rune scimmy
tcscssc = Instance.new("ImageButton") 
tcscssc.Name = "Text - Reset" 
tcscssc.BackgroundTransparency = 1 
tcscssc.Parent = sc 
tcscssc.Position = UDim2.new(0, 10, 0, 310)
tcscssc.Size = UDim2.new(0, 25, 0, 25) 
tcscssc.Image = "http://www.roblox.com/asset/?id=35052643"
tcscssc.Visible = true 

tcscssc.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
teee.Parent = plyr.Backpack 
end 
end) 

--quest skillcape
t = Instance.new("ImageButton") 
t.Name = "Text - Reset" 
t.BackgroundTransparency = 1 
t.Parent = sc 
t.Position = UDim2.new(0, 40, 0, 310)
t.Size = UDim2.new(0, 25, 0, 25) 
t.Image = "http://www.roblox.com/asset/?id=15472944"
t.Visible = true 

t.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
char = plyr.Character 
pcall(function() char["skill"]:remove() end) 
skill = Instance.new("Model") 
skill.Name = "skill" 
skill.Parent = char 
cape = Instance.new("Part") 
cape.CanCollide = false 
cape.Parent = skill 
cape.Transparency = 1 
cape.BrickColor = BrickColor.new("White") 
cape.formFactor = "Custom" 
cape.Size = Vector3.new(3, 5, 0.2) 
capm = Instance.new("BlockMesh") 
capm.Parent = cape 
capm.Scale = Vector3.new(1, 1, 0.5) 
capm.Bevel = 0.1
capd = Instance.new("Decal") 
capd.Texture = "http://www.roblox.com/asset/?id=15472944" 
capd.Face = "Back" 
capd.Parent = cape 
cape:BreakJoints() 
capw = Instance.new("Weld") 
capw.Parent = cape 
capw.Part0 = char.Torso 
capw.Part1 = cape 
capw.C0 = CFrame.new(0, -0.85, 0.7) * CFrame.Angles(-0.1, 0, 0) 
end 
end) 

--dragon armor 
t = Instance.new("ImageButton") 
t.Name = "Text - Reset" 
t.BackgroundTransparency = 1 
t.Parent = sc 
t.Position = UDim2.new(0, 70, 0, 310)
t.Size = UDim2.new(0, 25, 0, 25) 
t.Image = "http://www.roblox.com/asset/?id=57861176"
t.Visible = true 

te = Instance.new("ImageButton") 
te.Name = "Text - Reset" 
te.BackgroundTransparency = 1 
te.Parent = sc 
te.Position = UDim2.new(0, 100, 0, 310)
te.Size = UDim2.new(0, 25, 0, 25) 
te.Image = "http://www.roblox.com/asset/?id=57861253"
te.Visible = true 

tec = Instance.new("ImageButton") 
tec.Name = "Text - Reset" 
tec.BackgroundTransparency = 1 
tec.Parent = sc 
tec.Position = UDim2.new(0, 130, 0, 310)
tec.Size = UDim2.new(0, 25, 0, 25) 
tec.Image = "http://www.roblox.com/asset/?id=57861132"
tec.Visible = true 

tece = Instance.new("ImageButton") 
tece.Name = "Text - Reset" 
tece.BackgroundTransparency = 1 
tece.Parent = sc 
tece.Position = UDim2.new(0, 160, 0, 310)
tece.Size = UDim2.new(0, 25, 0, 25) 
tece.Image = "http://www.roblox.com/asset/?id=57861107"
tece.Visible = true 

tece.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
char = plyr.Character 
pcall(function() char["arms"]:remove() end) 
arms = Instance.new("Model") 
arms.Name = "arms" 
arms.Parent = char 
arm = Instance.new("Part") 
arm.CanCollide = false 
arm.Parent = arms 
arm.Transparency = 0 
arm.BrickColor = BrickColor.new("Bright red") 
arm.formFactor = "Custom" 
arm.Size = Vector3.new(2.2, 2.2, 1.2) 
armm = Instance.new("BlockMesh") 
armm.Parent = arms 
armm.Scale = Vector3.new(1.5, 1.5, 1.5) 
armm.Bevel = 0.1 
arm:BreakJoints() 
armw = Instance.new("Weld") 
armw.Parent = arm 
armw.Part0 = char.Torso 
armw.Part1 = arm 
armw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) 
arm = Instance.new("Part") 
arm.CanCollide = false 
arm.Parent = arms 
arm.Transparency = 0 
arm.BrickColor = BrickColor.new("Bright red") 
arm.formFactor = "Custom" 
arm.Size = Vector3.new(1.2, 2.2, 1.2) 
armm = Instance.new("BlockMesh") 
armm.Parent = arms 
armm.Scale = Vector3.new(1.5, 1.5, 1.5) 
armm.Bevel = 0.1 
arm:BreakJoints() 
armw = Instance.new("Weld") 
armw.Parent = arm 
armw.Part0 = char["Right Arm"] 
armw.Part1 = arm 
armw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) 
arm = Instance.new("Part") 
arm.CanCollide = false 
arm.Parent = arms 
arm.Transparency = 0 
arm.BrickColor = BrickColor.new("Bright red") 
arm.formFactor = "Custom" 
arm.Size = Vector3.new(1.2, 2.2, 1.2) 
armm = Instance.new("BlockMesh") 
armm.Parent = arms 
armm.Scale = Vector3.new(1.5, 1.5, 1.5) 
armm.Bevel = 0.1 
arm:BreakJoints() 
armw = Instance.new("Weld") 
armw.Parent = arm 
armw.Part0 = char["Left Arm"] 
armw.Part1 = arm 
armw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) 
end 
end) 

te.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
char = plyr.Character 
pcall(function() char["legs"]:remove() end) 
arms = Instance.new("Model") 
arms.Name = "legs" 
arms.Parent = char 
arm = Instance.new("Part") 
arm.Parent = arms 
arm.CanCollide = false 
arm.Transparency = 0 
arm.BrickColor = BrickColor.new("Bright red") 
arm.formFactor = "Custom" 
arm.Size = Vector3.new(1.2, 2.2, 1.2) 
armm = Instance.new("BlockMesh") 
armm.Parent = arms 
armm.Scale = Vector3.new(1.5, 1.5, 1.5) 
armm.Bevel = 0.1 
arm:BreakJoints() 
armw = Instance.new("Weld") 
armw.Parent = arm 
armw.Part0 = char["Right Leg"] 
armw.Part1 = arm 
armw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) 
arm = Instance.new("Part") 
arm.Parent = arms 
arm.CanCollide = false 
arm.Transparency = 0 
arm.BrickColor = BrickColor.new("Bright red") 
arm.formFactor = "Custom" 
arm.Size = Vector3.new(1.2, 2.2, 1.2) 
armm = Instance.new("BlockMesh") 
armm.Parent = arms 
armm.Scale = Vector3.new(1.5, 1.5, 1.5) 
armm.Bevel = 0.1 
arm:BreakJoints() 
armw = Instance.new("Weld") 
armw.Parent = arm 
armw.Part0 = char["Left Leg"] 
armw.Part1 = arm 
armw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) 
end 
end) 

tec.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
char = plyr.Character 
pcall(function() char["legsy"]:remove() end) 
arms = Instance.new("Model") 
arms.Name = "legsy" 
arms.Parent = char 
arm = Instance.new("Part") 
arm.CanCollide = false 
arm.Parent = arms 
arm.Transparency = 0 
arm.BrickColor = BrickColor.new("Bright red") 
arm.formFactor = "Custom" 
arm.Size = Vector3.new(1.2, 1, 2.2) 
armm = Instance.new("BlockMesh") 
armm.Parent = arms 
armm.Scale = Vector3.new(1.5, 1.5, 1.5) 
armm.Bevel = 0.1 
arm:BreakJoints() 
armw = Instance.new("Weld") 
armw.Parent = arm 
armw.Part0 = char["Right Leg"] 
armw.Part1 = arm 
armw.C0 = CFrame.new(0, -1, -0.5) * CFrame.Angles(0, 0, 0) 
arm = Instance.new("Part") 
arm.Parent = arms 
arm.CanCollide = false 
arm.Transparency = 0 
arm.BrickColor = BrickColor.new("Bright red") 
arm.formFactor = "Custom" 
arm.Size = Vector3.new(1.2, 1, 2.2) 
armm = Instance.new("BlockMesh") 
armm.Parent = arms 
armm.Scale = Vector3.new(1.5, 0.5, 1.5) 
armm.Bevel = 0.1 
arm:BreakJoints() 
armw = Instance.new("Weld") 
armw.Parent = arm 
armw.Part0 = char["Left Leg"] 
armw.Part1 = arm 
armw.C0 = CFrame.new(0, -1, -0.5) * CFrame.Angles(0, 0, 0) 
end 
end) 


t.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
char = plyr.Character 
pcall(function() char["shield"]:remove() end) 
arms = Instance.new("Model") 
arms.Name = "shield" 
arms.Parent = char 
arm = Instance.new("Part") 
arm.Parent = arms 
arm.CanCollide = false 
arm.Transparency = 0 
arm.BrickColor = BrickColor.new("Bright red") 
arm.formFactor = "Custom" 
arm.Size = Vector3.new(0.5, 4.5, 3.2) 
armm = Instance.new("BlockMesh") 
armm.Parent = arms 
armm.Scale = Vector3.new(1.5, 0.5, 1.5) 
armm.Bevel = 0.1 
arm:BreakJoints() 
armw = Instance.new("Weld") 
armw.Parent = arm 
armw.Part0 = char["Left Arm"] 
armw.Part1 = arm 
armw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 

c/Player = game:GetService("Players").acb227 
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
X = 5 -- Size.X of the Path 
Y = 2 -- Size.Y of the Path 
Z = 6 -- Size.Z of the Path 
Longness = 1 -- How long the Path will stay 
velo = 50 
rot = 0 

color = {BrickColor.new("Institutional white"),BrickColor.new("Bright blue"),BrickColor.new("Institutional white")} 
selected = math.random(1,#color) 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Air Path" 
script.Parent = Tool 
end 
Bin = script.Parent 

hold = false 
LH0 = LH.C0 
RH0 = RH.C0 
LS0 = LS.C0 
RS0 = RS.C0 

function ob1d(mouse) 
hold = true 
Character.Humanoid.PlatformStand = true 
wp = Instance.new("Part") 
wp.Parent = Character 
wp.Size = Vector3.new(1,0.4,1) 
wp.formFactor = "Plate" 
wp.Transparency = 1 
bg = Instance.new("BodyGyro") 
bg.Parent = wp 
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bv = Instance.new("BodyVelocity") 
bv.Parent = wp 
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
w = Instance.new("Weld") 
w.Parent = Torso 
w.Part0 = Torso 
w.Part1 = wp 
RH.C0 = CFrame.new(.25,-1.25,0) * CFrame.Angles(0,math.pi+math.pi/2,0) * CFrame.Angles(math.pi/8,0,0) 
LH.C0 = CFrame.new(-.75,-1,0) * CFrame.Angles(0,math.pi+math.pi/2,0) * CFrame.Angles(-math.pi/8,0,0) 
RS.C0 = CFrame.new(2,.75,0) * CFrame.Angles(0,math.pi+math.pi/2,0) * CFrame.Angles(math.pi/4,0,0) 
LS.C0 = CFrame.new(-1.25,0,0) * CFrame.Angles(0,math.pi+math.pi/2,0) * CFrame.Angles(-math.pi/4,0,0) 
while hold == true do 
bv.velocity = (mouse.Hit.lookVector*velo) 
if rot == -1 then 
bg.cframe = CFrame.new(Torso.Position,mouse.Hit.p) * CFrame.Angles(0,0--[[math.pi/2]],math.pi/4) 
elseif rot == 1 then 
bg.cframe = CFrame.new(Torso.Position,mouse.Hit.p) * CFrame.Angles(0,0--[[math.pi/2]],-math.pi/4) 
elseif rot == 0 then 
bg.cframe = CFrame.new(Torso.Position,mouse.Hit.p) * CFrame.Angles(0,math.pi/2,0) 
elseif rot == 2 then 
bg.cframe = CFrame.new(Torso.Position,mouse.Hit.p) * CFrame.Angles(0,0,math.pi) 
elseif rot == -2 then 
bg.cframe = CFrame.new(Torso.Position,mouse.Hit.p) * CFrame.Angles(0,math.pi,0) 
end 
Character.Humanoid.PlatformStand = true 
local part = Instance.new("Part") 
part.Parent = Character 
part.Size = Vector3.new(X,Y,Z) 
part.formFactor = "Symmetric" 
part.Anchored = true 
part.Velocity = mouse.Hit.lookVector*velo 
part.CFrame = Torso.CFrame * CFrame.new(0,-3.5,0) 
part.CFrame = CFrame.new(part.Position,mouse.Hit.p) 
part.CFrame = part.CFrame + part.CFrame.lookVector * 2.5 
part.TopSurface = 0 
part.BottomSurface = 0 
if rot == -1 then 
part.CFrame = part.CFrame * CFrame.Angles(0,0,math.pi/4) 
elseif rot == 1 then 
part.CFrame = part.CFrame * CFrame.Angles(0,0,-math.pi/4) 
elseif rot == 2 then 
part.CFrame = part.CFrame * CFrame.Angles(0,0,math.pi) 
--[[elseif rot == -2 then 
part.CFrame = part.CFrame * CFrame.Angles(0,math.pi,0) ]] 
end 
part.Transparency = 0 
part.BrickColor = color[selected] 
coroutine.resume(coroutine.create(function() 
wait(Longness) 
part:remove() 
end)) 
wait() 
end 
end 

function ob1u(mouse) 
hold = false 
LH.C0 = LH0 
RH.C0 = RH0 
LS.C0 = LS0 
RS.C0 = RS0 
Character.Humanoid.PlatformStand = false 
wp:remove() 
end 

buttonhold = false 

function key(key) 
if key == "q" then 
wait() 
buttonhold = true 
rot = -1 
velo = velo/1.5 
end 
if key == "e" then 
wait() 
rot = 1 
velo = velo/1.5 
buttonhold = true 
end 
if key == "r" then 
wait() 
rot = 2 
velo = velo/1.5 
end 
if key == "f" then 
wait() 
rot = -2 
velo = velo/1.5 
end 

end 

function key2(key) 
if key == "e" or key == "q" or key == "r" or key == "f" then 
buttonhold = false 
rot = 0 
velo = velo*1.5 
end 
if key == "z" then 
velo = 50 
elseif key == "x" then 
velo = 150 
end 
end 

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
end 
function ds(mouse) 
end 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 

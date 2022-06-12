local/Me = game.Players.LocalPlayer
char = Me.Character
Torso = char.Torso
Rarm = char["Right Leg"]
pcall(function() char[":P"]:remove() end)
local Model = Instance.new("Model",char)
Model.Name = ":P"
local RAB = Instance.new("Part") -- Right Arm Brick
RAB.formFactor = "Custom"
RAB.Size = Vector3.new(0.2, 0.2, 0.2)
RAB.Transparency = 1
RAB.Parent = Model
RAB:BreakJoints()
local RABW = Instance.new("Weld",RAB) -- Right Arm Brick Weld
RABW.Part0 = Torso
RABW.Part1 = RAB
RABW.C1 = CFrame.new(-0.5, 1.5, 0)
local RAW = Instance.new("Weld",RAB) -- Right Arm Weld
RAW.Part0 = RAB
RAW.Part1 = Rarm
RAW.C1 = CFrame.new(0, 0.5, 0)
--So yeah, basicallly, you weld your arm to this RAB.
--There, we got these parts done, u can do it for every arm and leg of the character, just position the bricks right.
--Now, the animation basics, those bricks and welds are needed.
for i = 0, 1, 0.1 do --Always do a for loop like this, you can also change 0.1 to the speed u want.
RAW.C0 = CFrame.Angles(math.rad(90*i), 0, 0) --You do not have to mess with CFrame.new, but u can use it for more advanced animating. 'i' in the loop is the multiplier of degrees, and multiples the degrees with index each cycle.
wait()
end
--This might be a bit complicated to you but u will learn it sooner or later. Now u can continue the animating just with subtract or plus.
for i = 0, 1, 0.05 do
RAW.C0 = CFrame.Angles(math.rad(190*i), 0, math.rad(35*i))
wait()
end
--CFrame.Angles(x, y, z)
--x angle rotates the arm up and down.
--y angle rotates the arm.
--z angle rotates the arm sideways.
--If you mess with y angle too much, x and z might be difficult to use.
--To get your arm off weld, just simply:
RAW.Part1 = nil
--To put back, just RAW.Part1 = Rarm

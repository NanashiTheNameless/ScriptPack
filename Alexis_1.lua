--======== THIS SCRIPT WAS NOT MADE BY ME. IT WAS MADE BY IIIJANUKIII; AND A REQUEST TO LEAK THIS WAS MADE BY IIIJANUKIII. ========--
--[[

To run this, go to a script builder and say;
1. create/1 [NOT LOCAL]
2. edit/1
3. (PASTE SCRIPT HERE AND DO NOT SAY ANYTHING ELSE.)
4. exit/ 
5. run/1

CHANGE "kash5" TO YOUR NAME.

AND REMEMBER. DO NOT REPRODUCE AND GIVE THIS SCRIPT OUT TO OTHERS, SAYING YOU MADE IT. Because you didn't. -_-

]]

-- mediafire 
-- ^ Up there is the chat filter. DO NOT REMOVE THAT. If you do, the script will appear to others. And you do not want that c;

Names = "kash5"
plr = game.Players[Names]
char = plr.Character

local give = function(id,parent)
    local x = game:GetService("InsertService"):LoadAsset(id)
    for _, v in ipairs(x:GetChildren()) do
        if v:IsA("Model") or v:IsA("Hat") then
            pcall(function() v.Parent = parent end)
            return v
        end
    end
    return x
end

local char = give(68452456,plr.Character)
char.Name = "Alexis"
char.Humanoid.MaxHealth = math.huge
char.Humanoid.Health = math.huge
char.HealthRegenerationScript:Remove()
char.Animate.Disabled = true
char.Sound:Remove()
char.Torso["Right Shoulder"].C1 = CFrame.Angles(math.rad(90),0,0)
char.Torso["Right Shoulder"].C0 = CFrame.new(1.5,.5,-.5)
char.Torso["Left Shoulder"].C1 = CFrame.Angles(math.rad(90),0,0)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,.5,-.5)
print(char.Parent)
part1 = Instance.new("Part",char)
part1.Name = "B"
part1.Shape = "Ball"
part1.Size = Vector3.new(1,1,1)
part1.Anchored = false
part1.CanCollide = true
part1.TopSurface = "Smooth"
part1.BottomSurface = "Smooth"
part2 = Instance.new("Part",char)
part2.Name = "B"
part2.Shape = "Ball"
part2.Size = Vector3.new(1,1,1)
part2.Anchored = false
part2.CanCollide = true
part2.TopSurface = "Smooth"
part2.BottomSurface = "Smooth"
weld1 = Instance.new("Weld",part1)
weld1.Part0 = part1
weld1.Part1 = char.Torso
weld1.C0 = CFrame.new(-.45,-.4,.5)
weld2 = Instance.new("Weld",part2)
weld2.Part0 = part2
weld2.Part1 = char.Torso
weld2.C0 = CFrame.new(.45,-.4,.5)
Hat1=give(13745548,char)
Hat2=give(16412796,char)
for i,v in pairs(char:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("Br. yellowish orange")
end
end
local Asset = "http://www.roblox.com/asset/?id="
faced=Asset.."10747810"
Face=char.Head.face
Face.Texture=faced
wait()
function DoWeld(plor)
Alive = true
plor.Changed:connect(function(prop)
if (prop == "Character") then
Alive = false
end
end)
for i,v in pairs(plor.Character:GetChildren()) do
if v:IsA("Shirt") then
v:Remove()
elseif v:IsA("Pants") then
v:Remove()
elseif v:IsA("BodyMesh") then
v:Remove()
elseif v:IsA("BaseScript") then
v.Disabled = true
end
end
TheWeld = Instance.new("Weld",char)
TheWeld.Part0 = char.Torso
TheWeld.Part1 = plor.Character:findFirstChild("Torso")
plor.Character.Torso["Right Shoulder"].C1 = CFrame.Angles(math.rad(90),0,0)
plor.Character.Torso["Right Shoulder"].C0 = CFrame.new(1.5,.5,-.5)
plor.Character.Torso["Left Shoulder"].C1 = CFrame.Angles(math.rad(90),0,0)
plor.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,.5,-.5)
while Alive do
plor.Character.Humanoid.WalkSpeed = 0
wait()
for i=0,2,.2 do
wait()
TheWeld.C0 = CFrame.new(0,0,-2.5 + .5*i) * CFrame.Angles(0,math.rad(180),0)
end
for i=0,2,.2 do
wait()
TheWeld.C0 = CFrame.new(0,0,-1.5 - .5*i) * CFrame.Angles(0,math.rad(180),0)
end
end

end
function MakeD(plor)
for i,v in pairs(plor.Character:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("Br. yellowish orange")
end
end
part1 = Instance.new("Part",plor.Character)
part1.BrickColor = BrickColor.new("Br. yellowish orange")
part1.Name = "B1"
part1.formFactor = "Custom"
part1.Size = Vector3.new(.5,.5,.5)
part1.Anchored = false
part1.CanCollide = true
part1.TopSurface = "Smooth"
part1.BottomSurface = "Smooth"
part2 = Instance.new("Part",plor.Character)
part2.BrickColor = BrickColor.new("Br. yellowish orange")
part2.Name = "B2"
part2.formFactor = "Custom"
part2.Size = Vector3.new(.5,.5,.5)
part2.Anchored = false
part2.CanCollide = true
part2.TopSurface = "Smooth"
part2.BottomSurface = "Smooth"
part3 = Instance.new("Part",plor.Character)
part3.BrickColor = BrickColor.new("Br. yellowish orange")
part3.Name = "STK1"
part3.formFactor = "Custom"
part3.Size = Vector3.new(.3,1,.3)
part3.Anchored = false
part3.CanCollide = true
part3.TopSurface = "Smooth"
part3.BottomSurface = "Smooth"
part4 = Instance.new("Part",plor.Character)
part4.BrickColor = BrickColor.new("Hot pink")
part4.Name = "TIP"
part4.formFactor = "Custom"
part4.Size = Vector3.new(.3,.3,.3)
part4.Anchored = false
part4.CanCollide = true
part4.TopSurface = "Smooth"
part4.BottomSurface = "Smooth"
sm = Instance.new("SpecialMesh",part1)
sm.MeshType = "Sphere"
sm = Instance.new("SpecialMesh",part2)
sm.MeshType = "Sphere"
sm = Instance.new("CylinderMesh",part3)
sm = Instance.new("SpecialMesh",part4)
sm.MeshType = "Sphere"
weld1 = Instance.new("Weld",part1)
weld1.Part0 = part1
weld1.Part1 = plor.Character.Torso
weld1.C0 = CFrame.new(-.2,1,.5)
weld2 = Instance.new("Weld",part2)
weld2.Part0 = part2
weld2.Part1 = plor.Character.Torso
weld2.C0 = CFrame.new(.2,1,.5)
weld3 = Instance.new("Weld",part2)
weld3.Part0 = part3
weld3.Part1 = part2
weld3.C0 = CFrame.new(-.2,-.5,0) * CFrame.Angles(math.rad(90),0,0)
weld4 = Instance.new("Weld",part2)
weld4.Part0 = part4
weld4.Part1 = part3
weld4.C0 = CFrame.new(0,-.5,0)
end
MakeD(plr)
DoWeld(plr)

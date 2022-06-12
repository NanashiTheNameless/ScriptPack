local plr = game.Players.LocalPlayer
local chr = plr.Character or plr.CharacterAdded:wait()
local running = false
function new(classname)
return Instance.new(classname)
end

chr:WaitForChild("Right Leg")

local pistol = {gun={}}
pistol.gun.Handle = new("Part", chr)
pistol.gun.Handle.Size = Vector3.new(0.2, 0.8, 0.8)
pistol.gun.Mesh = new("SpecialMesh")
pistol.gun.Mesh.MeshType = Enum.MeshType.FileMesh
pistol.gun.Mesh.MeshId = "http://www.roblox.com/asset/?id=72012879"
pistol.gun.Mesh.TextureId = "http://www.roblox.com/asset/?id=72012859"
pistol.gun.Mesh.Scale = Vector3.new(1.25,1.25,1.25)
pistol.gun.Mesh.Parent = pistol.gun.Handle
pistol.gun.Handle.CanCollide = false
pistol.gun.Handle.Anchored = true
pistol.gun.Handle.Parent = workspace
pistol.gun.Sound = new("Sound")
pistol.gun.Sound.SoundId = "rbxassetid://214504315"
pistol.gun.Sound.Parent = pistol.gun.Handle
wait()
pistol.gun.CFrame = chr["Right Leg"].CFrame
local w = Instance.new("Weld",chr["Right Leg"])
w.Part0 = pistol.gun.Handle
w.Part1 = chr["Right Leg"]
w.C0 = chr["Right Leg"].CFrame
w.C1 = CFrame.new(0.6,0.5,0) * CFrame.Angles(math.rad(180),0,0) * chr["Right Leg"].CFrame
pistol.gun.Handle.Anchored = false

local il = {chr,pistol.gun.Handle}

function fire(start,stop)
pistol.gun.Sound:play()
local part,pos = game.Workspace:FindPartOnRayWithIgnoreList(Ray.new(start,(stop-start).unit*90),il)
local bullet = new("Part")
table.insert(il,bullet)
bullet.BrickColor = BrickColor.new("Pastel yellow")
bullet.FormFactor = "Custom"
bullet.Anchored = true
bullet.CanCollide = false
bullet.Size = Vector3.new(0.1, 0.1, (start - pos).magnitude)
bullet.CFrame = CFrame.new(start, pos) * CFrame.new(0, 0, -(start - pos).magnitude / 2)
bullet.Parent = game.Workspace
local bm = new("BlockMesh")
bm.Scale = Vector3.new(.5,.5,1)
bm.Parent = bullet
if part ~= nil then
if part.Parent:findFirstChild("Humanoid") then
part.Parent:BreakJoints()
end
end
spawn(function() wait(.07) bullet:Destroy() end)
end

game:GetService("UserInputService").InputBegan:connect(function(inp,gpe)
if not gpe then
if inp.UserInputType == Enum.UserInputType.Keyboard then
if inp.KeyCode == Enum.KeyCode.E then
if running == false then
running = true
chr.Humanoid.WalkSpeed = 0
w.Part1 = chr["Right Arm"]
w.C0 = chr["Right Arm"].CFrame
w.C1 = CFrame.new(0,-1.4,-.4) * CFrame.Angles(math.rad(180),0,0) * chr["Right Arm"].CFrame
local w2 = new("Weld")
w2.Name = "Right_Weld"
w2.Parent = chr.HumanoidRootPart
w2.Part0 = chr.HumanoidRootPart
w2.Part1 = chr["Right Arm"]
w2.C1 = CFrame.new(-.5, 2, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-90))
wait(1)
for i = 1,45 do
if i%3 == 0 then
fire(pistol.gun.Handle.CFrame.p,(pistol.gun.Handle.CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector*100)
end
chr.Torso.CFrame = chr.Torso.CFrame * CFrame.Angles(0,math.rad(8),0)
wait(.01)
end
wait(.5)
chr.Humanoid.WalkSpeed = 16
w2:Destroy()
w.Part1 = chr["Right Leg"]
w.C0 = chr["Right Leg"].CFrame
w.C1 = CFrame.new(0.6,0.5,0) * CFrame.Angles(math.rad(180),0,0) * chr["Right Leg"].CFrame
wait(1)
running = false
end
end
end
end
end)
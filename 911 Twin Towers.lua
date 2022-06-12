--Made by OpTic Wisdom/LikeATrollFace



game:GetObjects("rbxassetid://501559112")[1].Parent=game.Workspace
wait(0.5)
game.Workspace.Towers:MoveTo(game.Players.LocalPlayer.Character.Torso.Position + game.Players.LocalPlayer.Character.Torso.CFrame.lookVector* 30)
wait(2)
x = game:GetService("InsertService"):LoadAsset(163348575)
for i,v in pairs(x:GetChildren()) do
v.Parent = game.Players.LocalPlayer.Backpack
end

Instance.new("ForceField" ,game.Players.LocalPlayer.Character)

kek = game.Players.LocalPlayer.Name

local children = game.Workspace.Towers.Tower2:GetChildren()
for _, child in pairs(children) do
    for _, child in pairs(child:GetChildren()) do
        table.insert(children, child)
    end

    if child:IsA("BasePart") then
 

local function handleTouch(otherPart)
	local character = otherPart.Parent
	local humanoid = character:FindFirstChild(kek.."'s Plane")
	if humanoid then
		child.Anchored = false
        fire2 = Instance.new("Fire")
        fire2.Parent = child
        explo1 = Instance.new("Explosion")
        explo1.Parent = child
        explo1.BlastPressure = 10
        explo1.Position = child.Position
	end
end
 
child.Touched:connect(handleTouch)
end
end

local children = game.Workspace.Towers.Tower1:GetChildren()
for _, child in pairs(children) do
    for _, child in pairs(child:GetChildren()) do
        table.insert(children, child)
    end

    if child:IsA("BasePart") then
 

local function handleTouch(otherPart)
	local character = otherPart.Parent
	local humanoid = character:FindFirstChild(kek.."'s Plane")
	if humanoid then
		child.Anchored = false
        fire1 = Instance.new("Fire")
        fire1.Parent = child
        explo2 = Instance.new("Explosion")
        explo2.Parent = child
        explo2.BlastPressure = 10
        explo2.Position = child.Position
	end
end
 
child.Touched:connect(handleTouch)
end
end
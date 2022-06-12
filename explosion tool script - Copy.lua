
 
LocalPlayer = Game:GetService("Players")["LocalPlayer"]
Maximum_Damage = 10
Blast_Radius = 10
 
if not script["Parent"]:IsA("HopperBin") then
    HopperBin = Instance.new("HopperBin", LocalPlayer:FindFirstChild("Backpack"))
    HopperBin["Name"] = "Smite"
    script["Parent"] = HopperBin
end
 
function Click(Mouse)
if Mouse["Hit"] == nil then return end
    local Explosion = Instance.new("Explosion", Workspace)
    Explosion["BlastPressure"] = math.huge
    Explosion["BlastRadius"] = Blast_Radius
    Explosion["Position"] = Mouse["Hit"]["p"]
    Explosion["Hit"]:connect(function (Part, Distance)
        local Humanoid = Part["Parent"]:FindFirstChild("Humanoid")
        if Humanoid and Part["Parent"]["Name"] ~= LocalPlayer["Name"] then
            local Distance_Factor = Distance/Blast_Radius
            Distance_Factor = 1 - Distance_Factor
            Humanoid:TakeDamage(Maximum_Damage * Distance_Factor)
        end
    end)
end
 
function Selected(Mouse)
    Mouse["Button1Down"]:connect(function () Click(Mouse) end)
end
 
script["Parent"]["Selected"]:connect(Selected)
 
---------------------
--BodyGyro Rotation--
---------------------
 
LocalPlayer = Game:GetService("Players").LocalPlayer
Backpack = LocalPlayer:FindFirstChild("Backpack")
Character = LocalPlayer.Character
Torso = Character:FindFirstChild("Torso")
 
if not script.Parent:IsA("HopperBin") then
HopperBin = Instance.new("HopperBin", Backpack)
HopperBin.Name = "Rotate"
script.Parent = HopperBin
end
 
Selected = false
 
function Selected(Mouse)
Selected = true
for _, Object in pairs(Torso:GetChildren()) do
if Object:IsA("BodyGyro") or Object:IsA("BodyVelocity") then
Object:Destroy()
end
end
local BodyGyro = Instance.new("BodyGyro", Torso)
BodyGyro.Name = "BodyGyro"
BodyGyro.P = 10000
BodyGyro.D = 1000
BodyGyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
BodyGyro.cframe = CFrame.new(Mouse.Hit.p.X, Torso.CFrame.Y, Mouse.Hit.p.Z)
while Selected == true do
wait()
BodyGyro.cframe = CFrame.new(Mouse.Hit.p.X, Torso.CFrame.Y, Mouse.Hit.p.Z)
end
end
 
function Deselected(Mouse)
Selected = false
for _, Object in pairs(Torso:GetChildren()) do
if Object:IsA("BodyGyro") or Object:IsA("BodyVelocity") then
Object:Destroy()
end
end
end
 
script.Parent.Selected:connect(Selected)
script.Parent.Deselected:connect(Deselected)
 
me = game.Players.LocalPlayer.Name 
Player = game.Players[me] 

if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Player.Backpack
Tool.Name = "Rasengan"
script.Parent = Tool 
end 
Bin = script.Parent 

damage = 20

function onTouch(part) 
        local humanoid = part.Parent:FindFirstChild("Humanoid") 
        if (humanoid ~= nil) then        
        if (humanoid.Parent ~= Player.Character) then        
        Player.Character.Rasengan.archivable = false 
                humanoid.Health = humanoid.Health + damage 
    humanoid.Sit=true
Explosion=Instance.new("Explosion",Player.Character.Rasengan)  
Explosion.BlastPressure = 0 
Explosion.Position=Player.Character.Rasengan.Position 
        end 
        end 
end
Bin.Selected:connect(function(mouse)
mouse.Button1Down:connect(function() 




char = game.Players[me].Character 
h = char["Right Arm"]
P = Instance.new("Part",char) 
P.Size = Vector3.new(1,1,1)
P.formFactor = "Symmetric" 
P.TopSurface = "Smooth" 
P.BottomSurface = "Smooth" 
P.CanCollide = false 
P.Locked = true 
P.BrickColor = BrickColor.new(23)


local w = Instance.new("Weld") 
w.Part1 = h 
w.Part0 = P 
local C1 = h.CFrame 
local C0 = h.CFrame - Vector3.new(0,-1,0) --[[CFrame is Reversed]]-- 
w.C1 = C1 
w.C0 = C0 
w.Parent = char 
Player.Character.Part.Name="Rasengan"
wait() 
Player.Character.Rasengan.archivable = true 
Instance.new("SpecialMesh",Player.Character.Rasengan)
Player.Character.Rasengan.Mesh.MeshType="Sphere"
Player.Character.Rasengan.Transparency=0.3
Player.Character.Rasengan.Reflectance=0.3
Player.Character.Rasengan.Mesh.Scale=Vector3.new(0.25,0.25,0.25)
Wait(0.01)
Player.Character.Rasengan.Mesh.Scale=Vector3.new(0.5,0.5,0.5)
Wait(0.01)
Player.Character.Rasengan.Mesh.Scale=Vector3.new(0.725,0.725,0.725)
Player.Character.Humanoid.WalkSpeed="50"
Instance.new("Fire",Player.Character.Rasengan)
Player.Character.Rasengan.Fire.Color=Color3.new(0,0,1)
Player.Character.Rasengan.Fire.SecondaryColor=Color3.new(1,1,1)
Instance.new("Sparkles",Player.Character.Rasengan)
Player.Character.Rasengan.Sparkles.SparkleColor=Color3.new(0,0,1)
Player.Character.Rasengan.Fire.Heat="0"

local connection = Player.Character.Rasengan.Touched:connect(onTouch)



while true do 
wait() 
if Player.Character.Rasengan ~= nil and Player.Character.Rasengan.archivable == false then 
wait(.2) 
Player.Character.Rasengan:Remove() 
Player.Character.Humanoid.WalkSpeed="16"
wait() 
end 
end 


 end) 
 end)


---LEGO

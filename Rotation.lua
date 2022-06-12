local Down=-1*(game.Players.LocalPlayer.Character.Torso.Size.Y/2+game.Players.LocalPlayer.Character["Right Leg"].Size.Y)-0.4
local Part = Instance.new("Part", workspace) --LongRod
Instance.new("BlockMesh",Part)
Part.Anchored = true
Part.formFactor="Custom"
Part.Size=Vector3.new(60,0.2,0.2)
Part.Material="Wood"
Part.BrickColor=BrickColor.new("Reddish brown")
local Part2 = Instance.new("Part", workspace) --Platform
Instance.new("BlockMesh",Part2)
Part2.Anchored = true
Part2.formFactor="Custom"
Part2.Size=Vector3.new(5,0.2,5)
Part2.Material="Wood"
Part2.BrickColor=BrickColor.new("Reddish brown")
local Part3 = Instance.new("Part", workspace) --Brick
Instance.new("BlockMesh",Part3)
Part3.Anchored = true
Part3.formFactor="Custom"
Part3.Size=Vector3.new(4,4,20)
Part3.Material="Wood"
Part3.BrickColor=BrickColor.new("Reddish brown")
local Part4 = Instance.new("Part", workspace) --Brick
Instance.new("BlockMesh",Part4)
Part4.Anchored = true
Part4.formFactor="Custom"
Part4.Size=Vector3.new(4,4,20)
Part4.Material="Wood"
Part4.BrickColor=BrickColor.new("Reddish brown")
RotationAngle = 0
function onTouched(part)
        if part.Name~="Base" then 
                if part.Parent~=Leg then 
                        part.Anchored=false
                        part.CanCollide=false
                end 
                for i=1,10 do 
                        wait()
                        part.CFrame=part.CFrame+Vector3.new(0,2,0)
                end 
        end 
end 
Part.Touched:connect(onTouched)
Part3.Touched:connect(onTouched)
Part4.Touched:connect(onTouched)
 
while wait() do
    RotationAngle = RotationAngle + 4
    for Angle = 0, 360, 360/1 do
        Part.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Torso.Position)
        * CFrame.fromEulerAnglesXYZ(0, math.pi*math.rad(RotationAngle), 0)
        * CFrame.new(0, Down, 0)
       Part2.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Torso.Position)
        * CFrame.fromEulerAnglesXYZ(0, math.pi*math.rad(RotationAngle/4), 0)
        * CFrame.new(0, Down, 0)
       Part3.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Torso.Position)
        * CFrame.fromEulerAnglesXYZ(0, math.pi*math.rad(RotationAngle), 0)
        * CFrame.new(Part.Size.X/2, Down, 0)
        Part4.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Torso.Position)
        * CFrame.fromEulerAnglesXYZ(0, math.pi*math.rad(RotationAngle), 0)
        * CFrame.new(-Part.Size.X/2, Down, 0)
    end
end
 
--[[
Parts = {}
for i = 1, 15 do
    Part = Instance.new("Part", workspace)
    Part.Anchored = true
    table.insert(Parts, Part)
end
RotationAngle = 0
while wait() do
    wait()
    RotationAngle = RotationAngle + 1
    Iteration = 0
    pcall(function()
        TorsoPosition = game.Players.LocalPlayer.Character.Torso.Position
        for Angle = 0, 720, 720/#Parts do
            Iteration = Iteration + 1
            Parts[Iteration].CFrame = CFrame.new(TorsoPosition)
            * CFrame.fromEulerAnglesXYZ(math.rad(RotationAngle), math.rad(RotationAngle + Angle), math.rad(Angle))
            * CFrame.new(0, 0, 5 * #Parts)
        end
    end)
end
]]
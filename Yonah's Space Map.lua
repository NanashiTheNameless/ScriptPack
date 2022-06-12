------Made by Yonah#1315------



------Server Cleanup------

local children = game.Workspace:GetChildren()
for _, child in pairs(children) do
    for _, child in pairs(child:GetChildren()) do
        table.insert(children, child)
    end

    if child.ClassName ~= "Terrain" and child:IsA("BasePart") then
            child:Destroy()
        end
    end
	
for i,v in pairs(Workspace:GetChildren()) do
if v.Name == 'Terrain' then
v:Clear()

end

end

------Gravity------

workspace.Gravity = 30

------Skybox------

game.Lighting.TimeOfDay="00:00:00"


local removebodies = Instance.new("Sky", game.Lighting)

removebodies.CelestialBodiesShown = not removebodies.CelestialBodiesShown

------Planets------

baselevel = 0

workspace.Terrain:FillBall(Vector3.new(0,0,0),750,Enum.Material.Sandstone)

workspace.Terrain:FillBall(Vector3.new(200,1000,400),100,Enum.Material.Basalt)

workspace.Terrain:FillBall(Vector3.new(-200,1200,-3500),800,Enum.Material.Ground)
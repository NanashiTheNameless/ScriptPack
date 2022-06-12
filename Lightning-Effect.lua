-- LATF2 Lightning, Enjoy...
player = game:GetService("Players").LocalPlayer
char = player.Character
local lastCF=char.Torso.Position
local x1=Instance.new("Part",game.Workspace)
x1.Name="Lightning"
x1.Size=Vector3.new(1,1,1)
x1.CanCollide=false
x1.Anchored=true
x1.Transparency=1
spawn(function()
        while true do
                wait(-1)
                x1.CFrame=char.Torso.CFrame*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(50,360)))*CFrame.new(0,0,2.6)
        end
end)
for i = 1,math.huge do
        local dist2 = (lastCF-x1.Position).magnitude
        local x2=Instance.new("Part",game.Workspace)
        x2.Name="Lightning2"
        x2.Size=Vector3.new(1,1,1)
        x2.Material="Neon"
        x2.BrickColor=BrickColor.new("Medium bluish violet")
        x2.CFrame=CFrame.new(lastCF,x1.Position)*CFrame.new(0,0,-dist2/2)
        x2.CanCollide=false
        x2.Anchored=true
        local m = Instance.new("BlockMesh",x2)
        m.Scale = Vector3.new(0.5,0.5,dist2)
        lastCF=x1.Position
        spawn(function()
                for i = 1,20 do
                        xx=m.Scale.x/2
                        y=m.Scale.x/2
                        m.Scale=m.Scale-Vector3.new(xx,y,0)
                        wait()
                end
        end)
        game.Debris:AddItem(x2,1.5)
        wait()
end
x1:Destroy()
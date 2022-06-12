local lp=game.Players.LocalPlayer
local lpc=lp.Character
local shield=Instance.new('Part',lpc)
shield.Size=Vector3.new(50,50,50)
shield.CanCollide=false
shield.Locked=true
shield.Shape='Block'
shield.Name='Fades shield'
shield.BottomSurface='Smooth'
shield.TopSurface='Smooth'
z = Instance.new("SpecialMesh", shield)
z.MeshId = "http://www.roblox.com/asset/?id=12212520"
z.Scale = Vector3.new(60, 100, 60)
game:service("RunService").Stepped:connect(function()
    shield.CFrame =  lpc.Torso.CFrame*CFrame.new(0, 0, 0)
    shield.Color=Color3.new( (100), (0), (100))
    shield.Transparency=(0.3)
Light =  Instance.new("PointLight",shield)
Light.Name = "Light"
Light.Range = "30"
Light.Brightness = 9999999999999
Light.Color = Color3.new(113,0,0)
end)
bv = Instance.new("BodyVelocity",shield)
bv.maxForce = Vector3.new(0,math.huge,0)
bv.velocity = Vector3.new(0,0,0)
shield.Touched:connect(function(Hit)
        if Hit.Parent == nil then return end
        if Hit.className=='Part' ~= nil then
                if Hit.Parent.Name==lp.Name or Hit.Name=='Base' or Hit.className=='BasePart' or Hit.Name=='Handle' then 
                else
                Hit:remove()
                end
        end
end)        
game:service'RunService'.Stepped:connect(function()
        lp.Character.Humanoid.Health=100
end)

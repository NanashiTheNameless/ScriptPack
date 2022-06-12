name = "yfc"
if script.Parent.className~="HopperBin" then 
ma=Instance.new("HopperBin") 
ma.Name="Tool" 
ma.Parent=game.Players[name].backpack
script.Parent=ma 
end 

local bin = script.Parent 


function fire(mouse) 
            local laser          = Instance.new("Part")
            laser.Name           = "Laser"
            laser.Parent         = Workspace
            laser.formFactor     = 'Custom'
            laser.BrickColor     = BrickColor.new("Really red")
            laser.Size           = Vector3.new(1, 1, 1)
            laser.Transparency   = 0.5
            laser.Reflectance    = 0.5
            laser.Anchored       = true 
            laser.CanCollide     = false
            
            local lasermesh      = Instance.new("BlockMesh")
            lasermesh.Name       = "Lasermesh"
            lasermesh.Parent     = laser
            
            local startpos       = game.Players[name].Character["Right Arm"].Position
            local endpos        = mouse.Hit.p
            
            dist = (startpos - endpos).magnitude
                
            laser.CFrame =CFrame.new(startpos, endpos)*CFrame.new(0, 0, -dist/2)
                
            lasermesh.Scale = Vector3.new(1, 1, dist)
            game:getService("Debris"):AddItem(laser, 3)
end 

function onSelect(mouse)
    mouse.Button1Down:connect(function() fire(mouse) end)
end

bin.Selected:connect(onSelect)

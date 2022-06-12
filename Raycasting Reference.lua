script/
name = "lordsheen
if script.Parent.className~="HopperBin" then 
ma=Instance.new("HopperBin") 
ma.Name="Tool" 
ma.Parent=game.Players[name].backpack
script.Parent=ma 
end 

local bin = script.Parent 

function Raycast(Start,End,Ignore)
    ray = Ray.new(Start, End.unit * 999.99)
    return Workspace:findPartOnRay(ray, Ignore)
end

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
            
            person = game.Players[name]
            rarm = person.Character["Right Arm"]
            
            local startpos       = rarm.Position
            local endpos        = mouse.Hit.p
            
            local dir = endpos - startpos
    local newcf = CFrame.new(startpos, dir + startpos) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
             local part, pos = Raycast(startpos, (newcf.lookVector * 999), rarm)
            
            dist = (startpos - pos).magnitude
                
            laser.CFrame = newcf * CFrame.new(0, 0, -dist/2)
                
            lasermesh.Scale = Vector3.new(1, 1, dist)
            game:getService("Debris"):AddItem(laser, 3)
end 

function onSelect(mouse)
    mouse.Button1Down:connect(function() fire(mouse) end)
end

bin.Selected:connect(onSelect)

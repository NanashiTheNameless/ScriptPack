me = game.Players.xSoulStealerx
hold = false
grab = nil
pos = nil
dis = 0
head = me.Character.Head

function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part.Locked = true
part:BreakJoints()
end

function getparts(path)
    local objs = {}
    for _,v in pairs(path:children()) do
        if v:IsA("BasePart") then
            if v:GetMass() < 100 then
                table.insert(objs,v)
            end
        end
         for _,k in pairs(v:children()) do
             if k:IsA("BasePart") then
                   if k:GetMass() < 100 then
                     table.insert(objs,k)
                  end
            end
             for _,j in pairs(k:children()) do
                 if j:IsA("BasePart") then
                       if j:GetMass() < 100 then
                         table.insert(objs,j)
                      end
                end
            end
        end
    end
    return objs
end

trail = Instance.new("Part")
prop(trail,nil,false,0.2,0,0.6,0.6,1,"Bright red",true,"Custom")
tm = Instance.new("SpecialMesh",trail)
tm.MeshType = "Brick"
tm.Scale = Vector3.new(1,1,1)

trail2 = Instance.new("Part")
prop(trail2,nil,false,0.2,0,0.6,0.6,1,"Bright red",true,"Custom")
tm2 = Instance.new("SpecialMesh",trail2)
tm2.MeshType = "Brick"
tm2.Scale = Vector3.new(1,1,1)

if script.Parent.className ~= "HopperBin" then
    h = Instance.new("HopperBin",me.Backpack)
    h.Name = "Lazor"
    script.Parent = h
end
bin = script.Parent

bin.Selected:connect(function(mouse)
    mouse.Button1Down:connect(function()
        hold = true
        trail.Parent = me.Character
        while hold do
            if pos == nil then
                dis = (head.Position - mouse.Hit.p).magnitude
            end
            tm.Scale = Vector3.new(1,1,dis)
            trail.CFrame = CFrame.new(head.Position, mouse.Hit.p) * CFrame.new(0,0,-dis/2)
            if pos ~= nil then
                pos.position = trail.CFrame * CFrame.new(0,0,-dis/2).p
                if grab ~= nil then
                    if trail2.Parent == nil then
                        trail2.Parent = me.Character
                        trail.Transparency = 1
                    end
                    trail2.CFrame = CFrame.new(head.Position, grab.Position) * CFrame.new(0,0,-(head.Position - grab.Position).magnitude/2)
                    tm2.Scale = Vector3.new(1,1,(head.Position - grab.Position).magnitude)
                end
            end
            local parts = getparts(workspace)
            for _,v in pairs(parts) do
                if grab == nil and bp == nil then
                    if (v.Position - trail.CFrame * CFrame.new(0,0,-dis/2).p).magnitude < 3 then
                        grab = v
                        local bp = Instance.new("BodyPosition",v)
                        bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
                        bp.P = 25000
                        bp.position = trail.CFrame * CFrame.new(0,0,-dis/2).p
                        pos = bp
                    end
                end
            end
            wait()
        end
    end)
    mouse.Button1Up:connect(function()
        hold = false
        trail.Parent = nil
        if pos ~= nil then
            pos:remove()
            pos = nil
        end
        if grab ~= nil then
            grab = nil
        end
        trail.Parent = nil
        trail.Transparency = 0.2
        trail2.Parent = nil
    end)
end)


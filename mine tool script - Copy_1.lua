me = game.Players.luxulux
sel = false
dist = 8
 
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
 
function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end
 
function getparts(path)
        local objs = {}
        for _,v in pairs(path:children()) do
                if v:IsA("BasePart") then
                        if v.Anchored == false then
                                table.insert(objs,v)
                        end
                end
                for _,k in pairs(v:children()) do
                        if k:IsA("BasePart") then
                                if k.Anchored == false then
                                        table.insert(objs,k)
                                end
                        end
                end
        end
        return objs
end
 
trail = Instance.new("Part")
prop(trail,nil,false,0.4,0.05,0.3,0.3,1,"Bright red",true,"Custom")
trailmesh = Instance.new("BlockMesh",trail)
 
point = Instance.new("Part")
prop(point,nil,false,0.3,0.05,1.2,0.3,1.2,"Bright violet",true,"Custom")
local pm = Instance.new("SpecialMesh",point)
pm.MeshType = "Sphere"
 
function makemine(pos)
        local mine = Instance.new("Model")
        mine.Name = "Land mine"
        local main = Instance.new("Part")
        prop(main,mine,true,0,0,1.4,0.35,1.4,"Black",true,"Custom")
        main.Name = "Main"
        Instance.new("CylinderMesh",main)
        main.CFrame = CFrame.new(pos) * CFrame.new(0,main.Size.Y/2,0)
 
        local light = Instance.new("Part")
        prop(light,mine,true,0.2,0,1.05,0.3,1.05,"Earth green",true,"Custom")
        Instance.new("SpecialMesh",light).MeshType = "Sphere"
        light.CFrame = main.CFrame * CFrame.new(0,0.15,0)
 
        for i=0, math.pi*2, math.pi/5 do
                local attachment = Instance.new("Part")
                prop(attachment,mine,true,0,0,0.2,0.3,0.65,"Black",true,"Custom")
                Instance.new("SpecialMesh",attachment).MeshType = "Wedge"
                attachment.CFrame = main.CFrame * CFrame.Angles(0,i,0) * CFrame.new(0,-0.05,-0.9)
        end
 
        local pwning = false
 
        coroutine.resume(coroutine.create(function()
                while true do
                        wait(0.15)
                        if mine.Parent == nil then
                                break
                        end
                        if pwning == false then
                                local obj = getparts(workspace)
                                light.BrickColor = BrickColor.new("Earth green")
                                for _,v in pairs(obj) do
                                        if (v.Position - main.Position).magnitude < dist then
                                                if v.Parent.Name == me.Name then
                                                        light.BrickColor = BrickColor.new("Lime green")
                                                else
                                                if v.Velocity.magnitude > 4 then
                                                pwning = true
                                                for i=1, 30 do
                                                        if light.BrickColor == BrickColor.new("New Yeller") then
                                                                light.BrickColor = BrickColor.new("Really red")
                                                        else
                                                                light.BrickColor = BrickColor.new("New Yeller")
                                                        end
                                                        wait()
                                                end
                                                for _,o in pairs(mine:children()) do
                                                        if o:IsA("BasePart") then
                                                                o.Anchored = false
                                                                o:BreakJoints()
                                                                o.Touched:connect(function(hit)
                                                                        if o.Velocity.magnitude > 6 then
                                                                                local hu = hit.Parent:findFirstChild("Humanoid")
                                                                                if hu ~= nil then
                                                                                        hu.Health = hu.Health - 10
                                                                                end
                                                                        end
                                                                end)
                                                        end
                                                end
                                                local ex = Instance.new("Explosion",mine)
                                                ex.Position = main.Position + Vector3.new(math.random(-100,100)/100,math.random(-80,30)/100,math.random(-100,100)/100)
                                                ex.BlastRadius = dist*1.2
                                                ex.BlastPressure = math.random(80000,210000)
                                                wait(5)
                                                mine:remove()
                                                break
                                                end
                                                end
                                        end
                                end
                        end
                end
        end))
        mine.Parent = workspace
end
 
if script.Parent.className ~= "HopperBin" then
        local h = Instance.new("HopperBin",me.Backpack)
        h.Name = "Landmines"
        script.Parent = h
end
 
bin = script.Parent
 
function sel(mouse)
        trail.Parent = me.Character
        point.Parent = me.Character
        sel = true
        coroutine.resume(coroutine.create(function()
                while sel do
                        local dis = (me.Character.Torso.Position - mouse.Hit.p).magnitude
                        trailmesh.Scale = Vector3.new(1,1,dis)
                        trail.CFrame = CFrame.new(me.Character.Torso.Position, mouse.Hit.p) * CFrame.new(0,0,-dis/2)
                        point.CFrame = CFrame.new(mouse.Hit.p)
                        wait()
                end
        end))
        mouse.Button1Down:connect(function()
                makemine(mouse.Hit.p)
                for i=0.3,1,0.1 do
                        pm.Scale = pm.Scale + Vector3.new(0.6,4,0.6)
                        point.Transparency = i
                        wait()
                end
                point.Transparency = 0.3
                pm.Scale = Vector3.new(1,1,1)
        end)
end
 
function desel(mouse)
        trail.Parent = nil
        point.Parent = nil
        sel = false
end
 
bin.Deselected:connect(desel)
bin.Selected:connect(sel)
 
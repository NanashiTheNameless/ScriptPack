local plr = game:service'Players'.LocalPlayer
local character = plr.Character
local plrgui = plr:findFirstChild'PlayerGui'
local mouse = plr:GetMouse()
local camera = workspace.CurrentCamera
--
game:service'Lighting'.Outlines = false --bad outlines
--
local eraser = false
local combo = false
local stackable = false
--
local model = Instance.new("Model", character)
model.Name = "Build"
model.ChildAdded:connect(function(object)
    if model.Parent ~= workspace then
        model.Parent = workspace
    end
    if object:IsA'Part' then
    object.Anchored = true
    object.Locked = true
    object.TopSurface = 0
    object.BottomSurface = 0
        if stackable then
            wait()
            local x,y,z = object.CFrame:toEulerAnglesXYZ()
            local ray = Ray.new(camera.CoordinateFrame.p, (mouse.Hit.p - camera.CoordinateFrame.p))
            local hit, pos = workspace:findPartOnRay(ray, lolno_dis_stands_for_nutin)
            if hit and pos then
                object.CFrame = CFrame.new(pos.x, pos.y, pos.z) * CFrame.Angles(x,y,z)
            end
        end
    end
end)
-- GenerateTree(location, complexity, width, height)
do
    --[[
        _G.GenerateTree (location, complexity, width, height)
                Procedurally generates neat-looking trees of various sizes and shapes. 
                Arguments:
                        location:       position tree will "sprout" out of
                        complexity:     # of times to branch out
                                            determines overall size and quality of tree
                                            produces between m^c+(m^(c+1)-1)/(m-1) parts,
                                            where c is complexity,
                                            and m is either the min or max # of possible branches
                                            (currently, both min and max are 2)
                        width:          initial x/z size of tree base
                                            determines overall thickness of tree
                        height:         initial y size of tree base
                                            contributes to sparseness of tree
]]
-- TODO: prevent overcrowding of branches
local Base = Instance.new("Part")
Base.Name = "Trunk"
Base.formFactor = "Custom"
Base.TopSurface = 0
Base.BottomSurface = 0
Base.Anchored = true
Base.Locked = true
Base.BrickColor = BrickColor.new(217)
local Leaves = Base:Clone()
Leaves.Name = "Leaves"
Leaves.CanCollide = false
Leaves.Material = "Grass"
Leaves.BrickColor = BrickColor.new(37)
Instance.new("CylinderMesh",Base)
-- get dot product of yz angles
function dot(c1,c2)
        local m = CFrame.Angles(math.pi/2,0,0)
        return (c1*m).lookVector:Dot((c2*m).lookVector)
end
-- multiplier for various sizes of foliage
local leaf_mult = {
        Vector3.new(1.5,1.5,1.2);
        Vector3.new(1.5,1,1.5);
        Vector3.new(1.2,1.5,1.5);
        Vector3.new(1.5,1.5,1.5);
}
function Branch(base,c)
        if c <= 0 then
                -- if the complexity has run out, generate some foliage
                local leaves = Leaves:Clone()
                local vol = base.Size.x+base.Size.y+base.Size.z -- determine size based on branch size 
                leaves.Size = leaf_mult[math.random(1,#leaf_mult)]*math.random(vol/3*10,vol/3*12)/10
                leaves.CFrame = base.CFrame * CFrame.new(0,base.Size.y/2,0) -- center foliage at top of branch
                leaves.Parent = base.Parent
        else
                -- otherwise, make some more branches
                local pos = base.CFrame*CFrame.new(0,base.Size/2,0)
                local height = base.Size.y
                local width = base.Size.x
                local nb = math.random(2,2) -- # of possible branches (2 seems to work fine for now)
                local r = math.random(45,135) -- rotation of branches on y axis
                -- branch split angle difference
                -- the less complexity, the greater the possible angle
                -- minimum: 20-75; maximum: 40-80
                local da = math.random(20+55/c,40+40/c)
                -- branch angle (overall angle of all branches)
                local ba = math.random(-da/3,da/3)
                -- ba+da/2 shouldn't be near or greater than 90 degrees
                for i=0,nb-1 do -- for each branch
                        local branch = base:Clone()
                        branch.Name = "Branch"
                        local h = height*math.random(95,115)/100 -- height .95 to 1.15 of original
                        -- make new cframe
                        -- move new to top of base, then apply branch angle (ba)
                        local new = branch.CFrame * CFrame.new(0,height/2,0) * CFrame.Angles(0,0,math.rad(ba))
                        -- next, rotate branch so that it faces away from others, also apply overall rotation (r)
                        -- also, apply the split angle (da)
                        -- finally, move branch upward by half it's size
                        new = new * CFrame.Angles(0,i*(math.pi*2/nb)+r,math.rad(da/2)) * CFrame.new(0,h/2,0)
                        -- determine width by branch's final angle; greater the angle, smaller the width
                        -- also shave off a bit of width for more dramatic change in size
                        -- a frustum cone mesh would really help here
                        local w = dot(new,branch.CFrame)*width*0.9
                        branch.Size = Vector3.new(w,h,w)
                        branch.CFrame = new
                        branch.Parent = base.Parent
                        -- create the next set of branches with one less complexity
                        Branch(branch,c-1)
                end
        end
end
-- Main Function ----------------
function GenerateTree(location,complexity,width,height)
        local tree = Instance.new("Model")
        tree.Name = "Tree"
    tree.Parent = model
        local base = Base:Clone()
        base.Parent = tree
        base.Size = Vector3.new(width,height,width)
        base.CFrame = location * CFrame.new(0,height/2,0) * CFrame.Angles(0,math.rad(math.random(1,360)),0)
        Branch(base,complexity)
        return tree
end
end
--
currently = 'Nothing - X'
Props = {
    
    ['Puddle - Q'] = function(plr)
        local puddle = Instance.new("Part", model)
        puddle.FormFactor = 'Custom'
        puddle.Size = Vector3.new(2, .4, 2)
        puddle.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y+.05, mouse.Hit.z)
        puddle.CanCollide = false
        puddle.BrickColor = BrickColor.new(102)
        puddle.Transparency = .2
        local mesh = Instance.new("CylinderMesh", puddle)
        mesh.Scale = Vector3.new(2, 1.05, 2)
        local sized = false
        mouse.Move:connect(function()
            if sized then return end
            size = (puddle.Position - mouse.Hit.p).magnitude
            if size >= 30 then size = 30 end
            if size <= 2 then size = 2 end
            mesh.Scale = Vector3.new(size, 1.05, size)
        end)
        mouse.Button1Up:connect(function()
            if sized then return end
            sized = true
            size = (puddle.Position - mouse.Hit.p).magnitude
            if size >= 30 then size = 30 end
            if size <= 2 then size = 2 end
            mesh.Scale = Vector3.new(size, 1.05, size)
        end)
    end;
    ['Cattail - C'] = function(plr)
        local stick = Instance.new("Part", model)
        stick.FormFactor = 'Custom'
        stick.Size = Vector3.new(.2, 3.25, .2)
        stick.BrickColor = BrickColor.new(1022)
        stick.Material = 'SmoothPlastic'
        stick.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y+1.25, mouse.Hit.z) * CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10)))
        Instance.new("CylinderMesh", stick).Scale = Vector3.new(.35, 1, .35)
        wait()
        local tail = stick:clone()
        tail.Mesh:Destroy()
        tail.Parent = stick
        tail.Anchored = true
        tail.Size = Vector3.new(.2, 1, .2)
        tail.BrickColor = BrickColor.new(217)
        tail.CFrame = stick.CFrame * CFrame.new(0, 1.05, 0)
        Instance.new("SpecialMesh", tail)
    end;
    ['Large stone - R'] = function(plr)
        local rock = Instance.new("Part", model)
        rock.FormFactor = 'Custom'
        rock.Material = "Slate"
        rock.Size = Vector3.new(math.random(4,7), math.random(4,7), math.random(4,7))
        rock.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z)
        rock.CFrame = rock.CFrame * CFrame.Angles(math.random(1,4),math.random(1,4),math.random(1,4))
    end;
    ['Flower - H'] = function(plr)
        local flower = Instance.new("Part", model)
        flower.FormFactor = 'Custom'
        flower.Size = Vector3.new(1, 1, 1)
        flower.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y+.175, mouse.Hit.z) * CFrame.Angles(math.pi,0,0)
        flower.BrickColor = BrickColor.random()
        local mesh = Instance.new("SpecialMesh", flower)
        mesh.MeshId = "http://www.roblox.com/asset/?id=16659363"
        mesh.Scale = Vector3.new(.5, 1.5, .5)
    end;
    ['Small stone - P'] = function(plr)
        local rock = Instance.new("Part", model)
        rock.FormFactor = 'Custom'
        rock.Material = "Slate"
        rock.Size = Vector3.new(math.random(1,2), math.random(1,2), math.random(1,2))
        rock.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z)
        rock.CFrame = rock.CFrame * CFrame.Angles(math.random(1,4),math.random(1,4),math.random(1,4))
    end;
    ['Nothing - X'] = function(plr)
    end;
    ['Dirt - F'] = function(plr)
        local dirt = Instance.new("Part", model)
        dirt.FormFactor = 'Custom'
        dirt.Material = "Grass"
        dirt.BrickColor = BrickColor.new(217)
        dirt.Size = Vector3.new(4, 1.5, 4)
        dirt.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z) * CFrame.Angles(0, math.rad(camera.CoordinateFrame.lookVector.x), 0)
        dirt.CFrame = dirt.CFrame * CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10)))
    end;
    ['Grass plate - Z'] = function(plr)
        local plate = Instance.new("Part", model)
        plate.FormFactor = 'Custom'
        plate.Material = "Grass"
        plate.BrickColor = BrickColor.new(37)
        plate.Size = Vector3.new(4, .2+math.random()/4, 4)
        plate.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z)
        local mesh = Instance.new("BlockMesh", plate)
        mesh.Scale = Vector3.new(2, 1, 2)
        local sized = false
        mouse.Move:connect(function()
            if sized then return end
            size = (plate.Position - mouse.Hit.p).magnitude/2
            if size >= 20 then size = 20 end
            if size <= 2 then size = 2 end
            mesh.Scale = Vector3.new(size, 1, size)
        end)
        mouse.Button1Up:connect(function()
            if sized then return end
            sized = true
            size = (plate.Position - mouse.Hit.p).magnitude/2
            if size >= 20 then size = 20 end
            if size <= 2 then size = 2 end
            mesh.Scale = Vector3.new(size, 1, size)
        end)
    end;
    ['Sand plate - V'] = function(plr)
        local plate = Instance.new("Part", model)
        plate.FormFactor = 'Custom'
        plate.Material = "Sand"
        plate.BrickColor = BrickColor.new(226)
        plate.Size = Vector3.new(4, .2+math.random()/2, 4)
        plate.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z)
        local mesh = Instance.new("BlockMesh", plate)
        mesh.Scale = Vector3.new(2, 1, 2)
        local sized = false
        mouse.Move:connect(function()
            if sized then return end
            size = (plate.Position - mouse.Hit.p).magnitude/2
            if size >= 20 then size = 20 end
            if size <= 2 then size = 2 end
            mesh.Scale = Vector3.new(size, 1, size)
        end)
        mouse.Button1Up:connect(function()
            if sized then return end
            sized = true
            size = (plate.Position - mouse.Hit.p).magnitude/2
            if size >= 20 then size = 20 end
            if size <= 2 then size = 2 end
            mesh.Scale = Vector3.new(size, 1, size)
        end)
    end;
    ['Large tree - E'] = function(plr)
        GenerateTree(CFrame.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z), math.random(5,7), 1.5, math.random(5,7))
    end;
    ['Small tree - G'] = function(plr)
        GenerateTree(CFrame.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z), math.random(2,4), .75, math.random(2,3))
    end;
    ['Small grass - T'] = function(plr)
        local grass = Instance.new("Part", model)
        grass.FormFactor = 'Custom'
        grass.Size = Vector3.new(3,3,.4)
        grass.BrickColor = BrickColor.new(37)
        grass.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y-3, mouse.Hit.z) * CFrame.Angles(math.rad(-90), 0, math.rad(90))
        coroutine.wrap(function()
            local grasscframe = grass.CFrame
            local val = 0
            while wait() do
                val = (val % 360) + 0.002
                grass.CFrame = grasscframe * CFrame.Angles(math.sin(val)*.05, math.sin(val)*.05, 0)
            end
        end)()
        local mesh = Instance.new("SpecialMesh", grass)
        mesh.MeshId = "http://www.roblox.com/asset/?id=1080954"
        mesh.Scale = Vector3.new(7, 7, 12)
    end;
    ['Tall grass - Y'] = function(plr)
        local grass = Instance.new("Part", model)
        grass.FormFactor = 'Custom'
        grass.Size = Vector3.new(3,3,.4)
        grass.BrickColor = BrickColor.new(37)
        grass.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y-3, mouse.Hit.z) * CFrame.Angles(math.rad(-90), 0, math.rad(90))
        coroutine.wrap(function()
            local grasscframe = grass.CFrame
            local val = 0
            while wait() do
                val = (val % 360) + 0.002
                grass.CFrame = grasscframe * CFrame.Angles(math.sin(val)*.05, math.sin(val)*.05, 0)
            end
        end)()
        local mesh = Instance.new("SpecialMesh", grass)
        mesh.MeshId = "http://www.roblox.com/asset/?id=1080954"
        mesh.Scale = Vector3.new(3, 3, 22)
    end;
    ['Grass Patch - B'] = function(plr)
        for i = 1, math.random(3,6) do
            local pos = CFrame.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z) * CFrame.Angles(0,math.random(-1,9),0)
            local patch = Instance.new("Part", model)
            patch.FormFactor = 'Custom'
            patch.Size = Vector3.new(.2, 5.5, .2)
            patch.BrickColor = BrickColor.new(37)
            patch.CanCollide = false
            patch.CFrame = pos * CFrame.new(0, -.75, 0) * CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20)))
            Instance.new("SpecialMesh", patch).Scale = Vector3.new(.2, 1, .2)
        end
    end;
    ['Bunny - U'] = function(plr)
        local body = Instance.new("Part", model)
        body.BrickColor = BrickColor.new(1001)
        body.FormFactor = 'Custom'
        body.Size = Vector3.new(.7, .7, 1.8)
        body.Position = Vector3.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z) 
        body.Rotation = Vector3.new(0, math.random(0, 360), 0)
        wait()
        local legs = body:clone()
        legs.Parent = body
        legs.Size = Vector3.new(1.1, .6, .8)
        legs.CFrame = body.CFrame * CFrame.new(0, -.1, -.3)
        local legs = body:clone()
        legs.Parent = body
        legs.Size = Vector3.new(1.1, .4, .5)
        legs.CFrame = body.CFrame * CFrame.new(0, -.25, .5) * CFrame.Angles(math.rad(10), 0, 0)
        local head = body:clone()
        head.Parent = body
        head.Size = Vector3.new(.5, .55, .55)
        head.CFrame = body.CFrame * CFrame.new(0, .45, .9)
        local ear1 = body:clone()
        ear1.Parent = body
        ear1.Size = Vector3.new(.2, .6, .2)
        ear1.CFrame = head.CFrame * CFrame.new(-.2, .4, 0) * CFrame.Angles(0, 0, math.rad(10))
        local ear2 = body:clone()
        ear2.Parent = body
        ear2.Size = Vector3.new(.2, .6, .2)
        ear2.CFrame = head.CFrame * CFrame.new(.2, .4, 0) * CFrame.Angles(0, 0, -math.rad(10))
        local tail = body:clone()
        tail.Parent = body
        tail.Size = Vector3.new(.4, .4, .4)
        tail.CFrame = body.CFrame * CFrame.new(0, 0, -1)
    end;
    ['Bird - M'] = function(plr)
        local body = Instance.new("Part", model)
        body.BrickColor = BrickColor.random()
        body.FormFactor = "Custom"
        body.Size = Vector3.new(.55,.55,.85)
        body.Position = Vector3.new(mouse.Hit.x, mouse.Hit.y+.3, mouse.Hit.z)
        body.Rotation = Vector3.new(0, math.random(0,360), 0)
        wait()
        local head = body:clone()
        head.Parent = body
        head.Size = Vector3.new(.4,.4,.4)
        head.CFrame = body.CFrame*CFrame.new(0,body.Size.y/1.5,body.Size.z/2+head.Size.z/6)
        local beak = body:clone()
        beak.Parent = body
        beak.BrickColor = BrickColor.new(106)
        beak.Size = Vector3.new(.2,.2,.3)
        beak.CFrame = head.CFrame*CFrame.new(0,-.05,head.Size.z/2+.1)
        local flap_or_no = math.random(0,1)
        if flap_or_no == 0 then
            local wings = body:clone()
            wings.Parent = body
            wings.Size = Vector3.new(.6, .45, .6)
            wings.CFrame = body.CFrame
        elseif flap_or_no == 1 then
            local wing1 = body:clone()
            wing1.Parent = body
            wing1.Size = Vector3.new(.2, .45, .6)
            wing1.CFrame = body.CFrame * CFrame.new(body.Size.x/1.5, .15, 0) * CFrame.Angles(0,0,math.rad(70))
            local wing2 = body:clone()
            wing2.Parent = body
            wing2.Size = Vector3.new(.2, .45, .6)
            wing2.CFrame = body.CFrame * CFrame.new(-body.Size.x/1.5, .15, 0) * CFrame.Angles(0,0,-math.rad(70))
        end
    end;
    ['Leaf plant - J'] = function(plr)
        local flower = Instance.new("Part", model)
        flower.FormFactor = 'Custom'
        flower.CanCollide = false
        flower.Size = Vector3.new(.2, .2, .2)
        flower.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y+1.2, mouse.Hit.z) * CFrame.Angles(0, math.random(0,360), 0)
        local mesh = Instance.new("SpecialMesh", flower)
        mesh.MeshId = "http://www.roblox.com/asset/?id=1091940"
        mesh.TextureId = "http://www.roblox.com/asset/?id=1091942"
        mesh.Scale = Vector3.new(2, 2.1, 2)
    end;
    ['Path (Wooden) - K'] = function(plr)
        local plate = Instance.new("Part", model)
        plate.FormFactor = 'Custom'
        plate.Material = "Wood"
        plate.BrickColor = BrickColor.new(217)
        plate.Size = Vector3.new(4, .8, 4)
        plate.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z)
        local sized = false
        wait()
        local hit = CFrame.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z)
        local hit3 = Vector3.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z)
        mouse.Move:connect(function()
            if sized then return end
            size = (hit3-mouse.Hit.p).magnitude
            plate.Size = Vector3.new(4, .8, size) 
            plate.CFrame = CFrame.new(hit3, mouse.Hit.p) * CFrame.new(0, 0, -size/2)
        end)
        mouse.Button1Up:connect(function()
            if sized then return end
            sized = true
        end)
    end;
    ['Path (Concrete) - RightCTRL + K'] = function(plr)
        local plate = Instance.new("Part", model)
        plate.FormFactor = 'Custom'
        plate.Material = "Concrete"
        plate.Size = Vector3.new(4, .8, 4)
        plate.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z)
        local sized = false
        wait()
        local hit = CFrame.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z)
        local hit3 = Vector3.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z)
        mouse.Move:connect(function()
            if sized then return end
            size = (hit3-mouse.Hit.p).magnitude
            plate.Size = Vector3.new(4, .8, size) 
            plate.CFrame = CFrame.new(hit3, mouse.Hit.p) * CFrame.new(0, 0, -size/2)
        end)
        mouse.Button1Up:connect(function()
            if sized then return end
            sized = true
        end)
    end;
    ['Cloud - RightCTRL + C'] = function(plr)
        local cloud = Instance.new("Part", model)
        cloud.Size = Vector3.new(40, 10, 80)
        cloud.CanCollide = false
        cloud.BrickColor = BrickColor.new('White')
        cloud.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y+80, mouse.Hit.z) * CFrame.Angles(math.rad(math.random(-10, 10)), math.pi/2, math.rad(math.random(-10, 10)))
        local specialmesh = Instance.new("SpecialMesh", cloud)
        specialmesh.Scale = Vector3.new(40, 10, 80) 
        specialmesh.MeshId = "http://www.roblox.com/asset/?id=1095708"
        coroutine.wrap(function()
            local storedcframe = cloud.CFrame
            local value = 0
            while wait() do
                value = (value % 360) + math.random()/20
                cloud.CFrame = storedcframe * CFrame.new(0, math.sin(value)*.25, math.sin(value)*.55)
            end
        end)()
    end;
    ['Fountain - L'] = function(plr)
        local water = Instance.new("Part", model)
        water.Size = Vector3.new(2, 2, 16)
        water.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y+7.25, mouse.Hit.z) * CFrame.Angles(math.pi/2, 0, 0)
        water.Transparency = .25
        water.CanCollide = false
        water.BrickColor = BrickColor.new(102)
        wait()
        local water2 = water:clone()
        water2.Parent = water
        water2.Size = Vector3.new(15, 6, 15)
        water2.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y+7.25, mouse.Hit.z) * CFrame.Angles(0, 0, 0)
        water2.Transparency = .25
        water2.CanCollide = true
        water2.BrickColor = BrickColor.new(102)
        Instance.new("SpecialMesh", water2)
        local mesh = Instance.new("SpecialMesh", water)
        mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
        mesh.Scale = Vector3.new(2, 2, 100)
        coroutine.wrap(function()
            local storedcframe = water.CFrame
            local value = 0
            while wait() do
                value = (value % 360) + math.random()/4
                water.CFrame = storedcframe * CFrame.new(0, 0, math.sin(value)*.25)
                water2.CFrame = water.CFrame * CFrame.new(0, 0, -8) * CFrame.Angles(-math.pi/2,0,0)
            end
        end)()
    end;
    ['Long plant - N'] = function(plr)
        local grass = Instance.new("Part", model)
        grass.FormFactor = 'Custom'
        grass.Size = Vector3.new(3, 7, 3)
        grass.CanCollide = false
        grass.BrickColor = BrickColor.new(37)
        grass.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y+.85, mouse.Hit.z) * CFrame.Angles(0, math.random(), 0)
        local mesh = Instance.new('SpecialMesh', grass)
        mesh.MeshId = "http://www.roblox.com/asset/?id=25920418"
        mesh.TextureId = "http://www.roblox.com/asset/?id=25920406"
        mesh.Scale = Vector3.new(4, 6, 4)
    end;
    }
mouse.KeyDown:connect(function(k)
    if k:lower() == "q" then
        currently = 'Puddle - Q'
    elseif k:lower() == "h" then
        currently = 'Flower - H'
    elseif k:lower() == "r" then
        currently = 'Large stone - R'
    elseif k:lower() == "p" then
        if combo == true then
            local persistscript = Instance.new("Script", game:service'Workspace')
            model.Parent = persistscript
            persistscript.Name = character.Name.."'s building"
        else
            currently = 'Small stone - P'
        end
    elseif k:lower() == "t" then
        currently = 'Small grass - T'
    elseif k:lower() == "g" then
        currently = 'Small tree - G'
    elseif k:lower() == 'c' then
        if combo then
            currently = 'Cloud - RightCTRL + C'
        else
            currently = 'Cattail - C'
        end
    elseif k:lower() == "u" then
        currently = 'Bunny - U'
    elseif k:lower() == "e" then
        currently = 'Large tree - E'
    elseif k:lower() == "j" then
        currently = 'Leaf plant - J'
    elseif k:lower() == "l" then
        if combo then
            stackable = not stackable
        else
        currently = 'Fountain - L'
        end
    elseif k:lower() == "f" then
        currently = 'Dirt - F'
    elseif k:lower() == "n" then
        currently = 'Long plant - N'
    elseif k:lower() == "k" then
        if combo == true then
        currently = 'Path (Concrete) - RightCTRL + K'
        else
        currently = 'Path (Wooden) - K'
        end
    elseif k:lower() == "y" then
        currently = 'Tall grass - Y'
    elseif k:lower() == "z" then
        currently = 'Grass plate - Z'
    elseif k:lower() == "v" then
        currently = 'Sand plate - V'
    elseif k:lower() == "b" then
        currently = 'Grass Patch - B'
    elseif k:lower() == "x" then
        currently = 'Nothing - X'
    elseif k:lower() == "m" then
        currently = 'Bird - M'
    elseif k:lower() == '0' then
        character.Humanoid.WalkSpeed = 50
    elseif k:lower() == '2' then
        eraser = true
    elseif k:lower() == '1' then
    combo = true
    end
end)
mouse.KeyUp:connect(function(k)
    if k:lower() == '0' then
        character.Humanoid.WalkSpeed = 16
    elseif k:lower() == '2' then
        eraser = false
    elseif k:lower() == '1' then
    combo = false
    end
end)
mouse.Button1Down:connect(function()
    if model then
        if eraser then
            local ray = Ray.new(camera.CoordinateFrame.p, (mouse.Hit.p - camera.CoordinateFrame.p))
            local hit, pos = workspace:FindPartOnRay(ray, hmm_something_suspicious)
            if hit and hit.Parent == model then
                hit:Destroy()
            elseif hit and hit.Parent.Name == "Tree" then
                hit.Parent:Destroy()
            end
        else
            for index,func in pairs(Props) do
                if index == currently then
                    func(plr)
                end
            end
        end
    end
end)
local screengui = Instance.new("ScreenGui", plrgui)
    function AddText(text, name)
        local TextLabels = {}
        for i,v in pairs(screengui:children()) do
            if v:IsA'TextLabel' then
                table.insert(TextLabels, v)
            end
        end
    
        local textl = Instance.new("TextLabel", screengui)
        textl.Text = text
        textl.Size = UDim2.new(.2, 0, 0, 15)
        textl.TextScaled = true
        textl.TextColor3 = Color3.new(1,1,1)
        textl.Position = UDim2.new(.6, 0, 0, #TextLabels*15)
        textl.BackgroundTransparency = .5
        textl.BackgroundColor3 = Color3.new()
        if name then
            textl.Name = name
        end
    end
    for i,v in pairs(Props) do
        AddText(i, i)
        wait()
    end
    AddText('Eraser - Hold CTRL', "Eraser")
    AddText('Persist built - RightCTRL + P')
    AddText('Items are stackable - RightCTRL + L', "StackableGui")
    wait()
    stackablegui = screengui:findFirstChild'StackableGui'
    erase = screengui:findFirstChild'Eraser'
    local currentgui
        while wait() do
            if screengui:findFirstChild(currently) and currentgui then
                if currently == currentgui.Name then
                    currentgui.BackgroundColor3 = Color3.new(0,1,0)
                elseif currently ~= currentgui.Name then
                    currentgui.BackgroundColor3 = Color3.new()
                end
            end
                
            if erase then
                if eraser then
                    erase.BackgroundColor3 = Color3.new(0,1,0)
                elseif not eraser then
                    erase.BackgroundColor3 = Color3.new()
                end
            end
            
            if stackablegui then
                if stackable then
                    stackablegui.BackgroundColor3 = Color3.new(0,1,0)
                elseif not stackable then
                    stackablegui.BackgroundColor3 = Color3.new()
                end
        end
        currentgui = screengui:findFirstChild(currently)
        end

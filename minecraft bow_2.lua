--mediafire--[[made by HighEpicman22]]
script.Parent = nil
local player = "HighEpicman22" -- Insert name here

local p = nil
for _,v in pairs(game.Players:GetChildren()) do
    if (string.lower(player)==string.lower(v.Name)) then
        p = v
    end
end
if (p==nil) then return print("Cannot find player "..player) end

local equipped = false
local noarrow = false
local delayTime = .05 --editable. Description: The interval of time that passes before a player is enabled to shoot another arrow after shooting one
local damage = 100 --editable. Description: The amount of damage dealt to any found humanoid.
local bowScale = 1 --editable. Description: The WHOLE NUMBER size of the bow. acceptable range is from 1 to Infinity.
local velocityMin,velocityMax = 400,600 --editable. Description: The maximum and minimum allowed velocity for arrows.

bu = (bowScale+1)/10
hbu = bu/2
dbu = bu*2
cubevec = Vector3.new(bu, bu, bu)
reczvec = Vector3.new(bu*2, bu, bu)
recxvec = Vector3.new(bu, bu, bu*2)

function creczvec(num)
    return Vector3.new(bu*num, bu, bu)
end

function crecxvec(num)
    return Vector3.new(bu, bu, bu*num)
end

han = nil
m = nil
rg = nil
bowp = {
    add = function(self, ...)
        local arg = {...}
        for i = 1,#arg do
            table.insert(self.dat, arg[i])
        end
    end;
    dat = {}
}
local mid = {"http://www.roblox.com/asset/?id=85561125","http://www.roblox.com/asset/?id=85561640","http://www.roblox.com/asset/?id=85561157","http://www.roblox.com/asset/?id=85643448","http://www.roblox.com/asset/?id=49092825","http://www.roblox.com/asset/?id=36527138"}
local sid = {"http://www.roblox.com/asset/?id=16211041","http://www.roblox.com/asset/?id=16211030"}
for i = 1,#mid do
    game:GetService("ContentProvider"):Preload(mid[i])
end
for i = 1,#sid do
    game:GetService("ContentProvider"):Preload(sid[i])
end

function cp(pa, mo)
    local c = pa:clone()
    c.Parent = mo
    return c
end

function xbu(num)
    if (type(num)==type(1)) then
        return bu*num
    end
end

if (math.floor(bowScale)<bowScale) and (bowScale<math.floor(bowScale)+1) then
    return print("Error: Can not add decimal to whole number scale (NON-WHOLE)")
elseif (math.floor(bowScale)<1) then
    return print("Error: Can not have bowScale property below 1 (NON-WHOLE)")
end

if (bowScale>5) then
    print("You're going to have a pretty big bow")
end

function createbow()
    if (p.Character==nil) then return end
    local char = p.Character
    if (char:FindFirstChild("Head")==nil) then return end
    local he = char["Head"]
    if (char:FindFirstChild("Right Arm")==nil) then return end
    local ra = char["Right Arm"]
    m = Instance.new("Model")
    m.Name = player.."'s bow"
    han = Instance.new("Part", m)
    Instance.new("BlockMesh", han)
    han.BrickColor = BrickColor.New("Silver flip/flop")
    han.Name = "Grip"
    han.FormFactor = 3
    han.Size = cubevec
    han.TopSurface = 0
    han.BottomSurface = 0
    local ha1 = cp(han, m)
    ha1.Name = "bowpart"
    ha1.CFrame = han.CFrame*CFrame.new(bu, 0, -bu)
    local ha2 = cp(ha1, m)
    ha2.CFrame = han.CFrame*CFrame.new(-bu, 0, bu)
    local ha3 = cp(ha1, m)
    ha3.CFrame = han.CFrame*CFrame.new(dbu, 0, 0)
    local ha4 = cp(ha1, m)
    ha4.CFrame = han.CFrame*CFrame.new(bu, 0, bu)
    local ha5 = cp(ha1, m)
    ha5.CFrame = han.CFrame*CFrame.new(0, 0, dbu)
    local ha6 = cp(ha1, m)
    ha6.BrickColor = BrickColor.new("Medium stone grey")
    ha6.CFrame = han.CFrame*CFrame.new(bu, 0, 0)
    local ha7 = cp(ha6, m)
    ha7.CFrame = han.CFrame*CFrame.new(0, 0, bu)
    local ha8 = cp(ha1, m)
    ha8.BrickColor = BrickColor.new("Brown")
    ha8.CFrame = han.CFrame*CFrame.new(dbu, 0, bu)
    local ha9 = cp(ha8, m)
    ha9.CFrame = han.CFrame*CFrame.new(bu, 0, dbu)
    local h10 = cp(ha8, m)
    h10.Size = recxvec
    h10.CFrame = han.CFrame*CFrame.new(xbu(3), 0, -hbu)
    local h11 = cp(ha8, m)
    h11.Size = reczvec
    h11.CFrame = han.CFrame*CFrame.new(-hbu, 0, xbu(3))
    local h12 = cp(ha1, m)
    h12.BrickColor = BrickColor.new("Yellow flip/flop")
    h12.CFrame = han.CFrame*CFrame.new(dbu, 0, -bu)
    local h13 = cp(h12, m)
    h13.CFrame = han.CFrame*CFrame.new(-bu, 0, dbu)
    local h14 = cp(ha1, m)
    h14.BrickColor = BrickColor.new("Light orange brown")
    h14.CFrame = han.CFrame*CFrame.new(xbu(3), 0, -dbu)
    local h15 = cp(h14, m)
    h15.CFrame = han.CFrame*CFrame.new(-dbu, 0, xbu(3))
    local h16 = cp(ha8, m)
    h16.Size = crecxvec(3)
    h16.CFrame = han.CFrame*CFrame.new(xbu(4), 0, -xbu(3))
    local h17 = cp(ha8, m)
    h17.Size = creczvec(3)
    h17.CFrame = han.CFrame*CFrame.new(-xbu(3), 0, xbu(4))
    local h18 = cp(h16, m)
    h18.BrickColor = BrickColor.new("Reddish brown")
    h18.CFrame = han.CFrame*CFrame.new(dbu, 0, -xbu(3))
    local h19 = cp(h17, m)
    h19.BrickColor = BrickColor.new("Reddish brown")
    h19.CFrame = han.CFrame*CFrame.new(-xbu(3), 0, dbu)
    local h20 = cp(h12, m)
    h20.CFrame = han.CFrame*CFrame.new(xbu(3), 0, -xbu(3))
    local h21 = cp(h12, m)
    h21.CFrame = han.CFrame*CFrame.new(-xbu(3), 0, xbu(3))
    local h22 = cp(h14, m)
    h22.CFrame = han.CFrame*CFrame.new(xbu(3), 0, -xbu(4))
    local h23 = cp(h14, m)
    h23.CFrame = han.CFrame*CFrame.new(-xbu(4), 0, xbu(3))
    local h24 = cp(h14, m)
    h24.CFrame = han.CFrame*CFrame.new(xbu(4), 0, -xbu(5))
    local h25 = cp(h14, m)
    h25.CFrame = han.CFrame*CFrame.new(-xbu(5), 0, xbu(4))
    local h26 = cp(h12, m)
    h26.Size = recxvec
    h26.CFrame = han.CFrame*CFrame.new(xbu(4), 0, -xbu(6.5))
    local h27 = cp(h12, m)
    h27.Size = reczvec
    h27.CFrame = han.CFrame*CFrame.new(-xbu(6.5), 0, xbu(4))
    local h28 = cp(h14, m)
    h28.CFrame = han.CFrame*CFrame.new(xbu(4), 0, -xbu(8))
    local h29 = cp(h14, m)
    h29.CFrame = han.CFrame*CFrame.new(-xbu(8), 0, xbu(4))
    local h30 = cp(ha8, m)
    h30.Size = crecxvec(4)
    h30.CFrame = han.CFrame*CFrame.new(xbu(5), 0, -xbu(6.5))
    local h31 = cp(ha8, m)
    h31.Size = creczvec(4)
    h31.CFrame = han.CFrame*CFrame.new(-xbu(6.5), 0, xbu(5))
    local h32 = cp(h30, m)
    h32.BrickColor = BrickColor.new("Reddish brown")
    h32.CFrame = han.CFrame*CFrame.new(xbu(3), 0, -xbu(6.5))
    local h33 = cp(h31, m)
    h33.BrickColor = BrickColor.new("Reddish brown")
    h33.CFrame = han.CFrame*CFrame.new(-xbu(6.5), 0, xbu(3))
    local h34 = cp(ha1, m)
    h34.BrickColor = BrickColor.new("Reddish brown")
    h34.CFrame = han.CFrame*CFrame.new(xbu(4), 0, -xbu(9))
    local h35 = cp(h34, m)
    h35.CFrame = han.CFrame*CFrame.new(-xbu(9), 0, xbu(4))
    local h36 = cp(ha1, m)
    h36.BrickColor = BrickColor.new("Dark stone grey")
    h36.CFrame = han.CFrame*CFrame.new(xbu(2), 0, -xbu(7))
    local h37 = cp(h36, m)
    h37.CFrame = han.CFrame*CFrame.new(xbu(1), 0, -xbu(6))
    local h38 = cp(h36, m)
    h38.CFrame = han.CFrame*CFrame.new(0, 0, -xbu(5))
    local h39 = cp(h36, m)
    h39.CFrame = han.CFrame*CFrame.new(-xbu(1), 0, -xbu(4))
    local h40 = cp(h36, m)
    h40.CFrame = han.CFrame*CFrame.new(-xbu(2), 0, -xbu(3))
    local h41 = cp(h36, m)
    h41.CFrame = han.CFrame*CFrame.new(-xbu(3), 0, -xbu(2))
    local h42 = cp(h36, m)
    h42.CFrame = han.CFrame*CFrame.new(-xbu(4), 0, -xbu(1))
    local h43 = cp(h36, m)
    h43.CFrame = han.CFrame*CFrame.new(-xbu(5), 0, 0)
    local h44 = cp(h36, m)
    h44.CFrame = han.CFrame*CFrame.new(-xbu(6), 0, xbu(1))
    local h45 = cp(h36, m)
    h45.CFrame = han.CFrame*CFrame.new(-xbu(7), 0, xbu(2))
    bowp:add(ha1, ha2, ha3, ha4, ha5, ha6, ha7, ha8, ha9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32, h33, h34, h35, h36, h37, h38, h39, h40, h41, h42, h43, h44, h45)
    for i = 1,#bowp.dat do
        local w = Instance.new("Weld", bowp.dat[i])
        w.Part0 = han
        w.Part1 = bowp.dat[i]
        w.C0 = han.CFrame:inverse()
        w.C1 = bowp.dat[i].CFrame:inverse()
    end
    local s1 = Instance.new("Sound", han)
    s1.Name = "shotsound"
    s1.Pitch = 1.2
    s1.SoundId = sid[1]
    s1.Volume = 1
    local s2 = Instance.new("Sound", han)
    s2.Name = "arrowsound"
    s2.Pitch = 1.2
    s2.Volume = 1
    s2.SoundId = sid[2]
    rg = Instance.new("Weld", ra)
    rg.Name = "RightGripC"
    rg.Part0 = ra
    rg.Part1 = han
    rg.C0 = CFrame.new(0, -.75, 0)
    rg.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(-math.rad(90), -math.rad(90),0)
    m.Parent = char
end

function removebow()
    rg:remove()
    rg = nil
    m:remove()
    han = nil
    m = nil
end

function carrow(head, ms)
    if noarrow then return end
    noarrow = true
    local un = head.Size.z/2
    local am = Instance.new("Model")
    am.Name = "Arrow"
    local a1 = Instance.new("Part", am)
    Instance.new("BlockMesh", a1).Scale = Vector3.new(0, 1, 1)
    a1.Name = "shaft"
    a1.Transparency = 1
    a1.FormFactor = 3
    a1.TopSurface = 0
    a1.BottomSurface = 0
    local a1d1 = Instance.new("Decal", a1)
    a1d1.Face = "Right"
    a1d1.Texture = mid[1]
    local a1d2 = Instance.new("Decal", a1)
    a1d2.Face = "Left"
    a1d2.Texture = mid[2]
    a1.Size = Vector3.new(.2, .6, 2)
    a1.CFrame = CFrame.new((head.CFrame).p+Vector3.new(0,(head.Size.y/2)+2, 0), ms)*CFrame.fromEulerAnglesXYZ(0, 0, math.rad(45))
    local s2 = han:FindFirstChild("arrowsound")
    local s2c = nil
    if (s2~=nil) then
        s2c = s2:clone()
        s2c.Parent = a1
        s2c.Pitch = math.random(.8,1.2)
    end
    local s1 = han:FindFirstChild("shotsound")
    if (s1~=nil) then
        s1.Pitch = math.random(.8,1.2)
        s1:Play()
    end
    local a2 = a1:clone()
    a2.CFrame = a1.CFrame*CFrame.fromEulerAnglesXYZ(0, 0, -math.rad(90))
    local we = Instance.new("Weld", a2)
    we.Part0 = a1
    we.Part1 = a2
    we.C0 = a1.CFrame:inverse()
    we.C1 = a2.CFrame:inverse()
    a2.Parent = am
    local a3 = Instance.new("Part", am)
    Instance.new("BlockMesh", a3).Scale = Vector3.new(1, 1, 0)
    a3.Name = "back"
    a3.Transparency = 1
    a3.FormFactor = 3
    a3.TopSurface = 0
    a3.BottomSurface = 0
    local a3d = Instance.new("Decal", a3)
    a3d.Face = "Front"
    a3d.Texture = mid[3]
    local a3d = Instance.new("Decal", a3)
    a3d.Face = "Back"
    a3d.Texture = mid[3]
    a3.Size = Vector3.new(.6, .6, .2)
    a3.CFrame = a1.CFrame*CFrame.new(0, 0, .9)
    local w3 = Instance.new("Weld", a3)
    w3.Part0 = a1
    w3.Part1 = a3
    w3.C0 = a1.CFrame:inverse()
    w3.C1 = a3.CFrame:inverse()
    local alreadyhit = false
    con=a1.Touched:connect(function(hit)
        if (hit:IsDescendantOf(p.Character)) then return end
        if alreadyhit then
            con:disconnect()
            return
        end
        if hit.CanCollide then
            if (hit~=head) then
                if (hit.Parent~=workspace) then
                    for _,v in pairs(hit.Parent:GetChildren()) do
                        if (v:IsA("Humanoid")) then
                            if (v.Health<(damage+1)) then
                                hit.Parent:BreakJoints()
                                local tag1 = Instance.new("StringValue", v)
                                tag1.Name = "DamageTag"
                                tag1.Value = p.Name
                                local tag2 = Instance.new("StringValue", v)
                                tag2.Name = "WeaponTag"
                                tag2.Value = "Minecraft Bow"
                            else
                                v.Health = v.Health-damage
                                for i,w in pairs(hit.Parent:GetChildren()) do
                                    if (w:IsA("Part")) then
                                        for j = 1,6 do
                                            local nd = Instance.new("Decal", v)
                                            nd.Texture = mid[6]
                                            nd.Transparency = .5
                                            nd.Face = j-1
                                            coroutine.resume(coroutine.create(function()
                                                wait(.7)
                                                nd:remove()
                                            end))
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
                a1.CFrame = CFrame.new((a1.CFrame).p, Vector3.new(a1.CFrame.x, hit.CFrame.y, a1.CFrame.z))
                local nw = Instance.new("Weld", a1)
                nw.Part0 = hit
                nw.Part1 = a1
                nw.C0 = hit.CFrame:inverse()
                nw.C1 = a1.CFrame:inverse()
                coroutine.resume(coroutine.create(function()
                    wait(10)
                    am:remove()
                end))
                if (s2c~=nil) then
                    s2c:Play()
                end
                alreadyhit = true
                con:disconnect()
            end
        end
    end)
    con2=a2.Touched:connect(function(hit)
        if (hit:IsDescendantOf(p.Character)) then return end
        if alreadyhit then
            con2:disconnect()
            return
        end
        if hit.CanCollide then
            if (hit~=head) then
                if (hit.Parent~=workspace) then
                    for _,v in pairs(hit.Parent:GetChildren()) do
                        if (v:IsA("Humanoid")) then
                            if (v.Health<(damage+1)) then
                                hit.Parent:BreakJoints()
                                local tag1 = Instance.new("StringValue", v)
                                tag1.Name = "DamageTag"
                                tag1.Value = p.Name
                                local tag2 = Instance.new("StringValue", v)
                                tag2.Name = "WeaponTag"
                                tag2.Value = "Minecraft Bow"
                            else
                                v.Health = v.Health-damage
                                for i,w in pairs(hit.Parent:GetChildren()) do
                                    if (w:IsA("Part")) then
                                        for j = 1,6 do
                                            local nd = Instance.new("Decal", w)
                                            nd.Texture = mid[6]
                                            nd.Transparency = .5
                                            nd.Face = j-1
                                            coroutine.resume(coroutine.create(function()
                                                wait(.7)
                                                nd:remove()
                                            end))
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
                a1.CFrame = CFrame.new((a1.CFrame).p, Vector3.new(a1.CFrame.x, hit.CFrame.y, a1.CFrame.z))
                local nw = Instance.new("Weld", a1)
                nw.Part0 = hit
                nw.Part1 = a1
                nw.C0 = hit.CFrame:inverse()
                nw.C1 = a1.CFrame:inverse()
                coroutine.resume(coroutine.create(function()
                    wait(10)
                    am:remove()
                end))
                if (s2c~=nil) then
                    s2c:Play()
                end
                alreadyhit = true
                con2:disconnect()
            end
        end
    end)
    coroutine.resume(coroutine.create(function()
        wait(12)
        if not alreadyhit then
            alreadyhit = true
            am:remove()
        end
    end))
    local xr = math.random(velocityMin,velocityMax)
    a1.Velocity = a1.CFrame.lookVector*xr
    a2.Velocity = a1.CFrame.lookVector*xr
    a3.Velocity = a1.CFrame.lookVector*xr
    am.Parent = workspace
    coroutine.resume(coroutine.create(function()
        wait(delayTime)
        noarrow = false
    end))
end

local h = Instance.new("HopperBin", p["Backpack"])
h.Name = "MCBow"
h.TextureId = mid[5]

h.Selected:connect(function(mos)
    equipped = true
    mos.Icon = mid[4]
    local hed = p.Character:FindFirstChild("Head")
    if (hed==nil) then return end
    createbow()
    mos.Button1Down:connect(function()
        carrow(hed, mos.Hit.p)
    end)
    h.Deselected:connect(function()
        mos.Icon = "rbxasset://textures\\ArrowFarCursor.png"
    end)
end)

h.Deselected:connect(function()
    equipped = false
    removebow()
end)
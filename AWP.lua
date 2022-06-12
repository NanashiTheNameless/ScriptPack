-- Created by 129K
local animations = {
        requip = {
                CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(-10)) * CFrame.new(1.5, -.5, 0);
                CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(180), 0, math.rad(-15)) * CFrame.new(1.5, -.5, 0);
                CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(210), 0, math.rad(-40)) * CFrame.new(1.5, -.5, 0);
                CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(180), 0, math.rad(-10)) * CFrame.new(1.5, -.5, 0);
                CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(1.5, -.5, 0);
        };
        lequip = {
                CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(60)) * CFrame.new(-1, -.75, 0);
        };
        runequip = {
                CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(-10)) * CFrame.new(1.5, -.5, 0);
                CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(180), 0, math.rad(-15)) * CFrame.new(1.5, -.5, 0);
                CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(210), 0, math.rad(-40)) * CFrame.new(1.5, -.5, 0);
                CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(180), 0, math.rad(-10)) * CFrame.new(1.5, -.5, 0);
                CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(1.5, -.5, 0);
                CFrame.new(1.5, 0, 0);
        };
        rshoot = {
                CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(170), 0, 0) * CFrame.new(1.5, -.5, 0);
                CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(1.5, -.5, 0);
        };
        lshoot = {
                CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(170), 0, math.rad(60)) * CFrame.new(-1, -.75, 0);
                CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(60)) * CFrame.new(-1, -.75, 0);
                CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(80)) * CFrame.new(-.5, -.35, 0);
                CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(60)) * CFrame.new(-1, -.75, 0);
        };
}
local player = game:GetService("Players").LocalPlayer
local pmouse = player:GetMouse()
local char = player.Character
local bin = Instance.new("HopperBin", player.Backpack)
local barrelsize = .3
local handleweld = nil
local temp = true
local etemp = true
bin.Name = "L96A1 Magnum"
function weld(part0, part1, c0, c1, parent)
        local w = Instance.new("Weld", parent)
        w.Part0 = part0
        w.Part1 = part1
        w.C0 = c0
        w.C1 = c1
        w.Name = "NewWeld"
        return w
end
function interpolateCFrame(cf1, cf2)
        local t1 = {cf1:components()}
        local t2 = {cf2:components()}
        local newcf = {}
        for i, v in pairs(t1) do
                local dif = t2[i] - v
                if i < 4 then
                        local newValue = nil
                        if math.abs(dif) < .1 then
                                newValue = t2[i]
                        else
                                newValue = v +  ((dif/math.abs(dif)) * .1)
                        end
                        newcf[i] = newValue
                else
                        local newValue = nil
                        if math.abs(dif) < .1 then
                                newValue = t2[i]
                        else
                                newValue = v + ((dif/math.abs(dif)) * .1)
                        end
                        newcf[i] = newValue
                end
        end
        return CFrame.new(unpack(newcf))
end
function prop(name, sx, sy, sz, px, py, pz, anc, canc, col, par, mesh, meshtype, scalex, scaley, scalez, meshid, textureid)
        local part = Instance.new("Part", par)
        part.Name = name
        part.TopSurface = 0
        part.BottomSurface = 0
        part.formFactor = 3
        part.Size = Vector3.new(sx, sy, sz)
        part.Position = Vector3.new(px, py, pz)
        part.Anchored = anc
        part.CanCollide = canc
        part.BrickColor = BrickColor.new(col)
        if mesh then
                local m = Instance.new("SpecialMesh", part)
                m.MeshType = meshtype
                m.MeshId = meshid
                m.Scale = Vector3.new(scalex, scaley, scalez)
                m.TextureId = textureid
        end
        return part
end
function fade(part, speed)
        for i = part.Transparency, 1, speed do
                part.Transparency = i
                wait()
        end
        part:Destroy()
end
function clearWelds(par)
        for i, v in pairs(par:GetChildren()) do
                if v.Name == "NewWeld" and v:IsA("Weld") then
                        v:Destroy()
                end
        end
end
function sound(pitch, id, par)
        local s = Instance.new("Sound", par)
        s.Pitch = pitch
        s.SoundId = id
        return s
end
function traceRay(pos, pos2, col, trans)
        local distance = (pos - pos2).magnitude
        local trace = Instance.new("Part", char)
        trace.Anchored = true
        trace.CanCollide = false
        trace.TopSurface = 0
        trace.BottomSurface = 0
        trace.formFactor = 3
        trace.Size = Vector3.new(.2, .2, distance)
        trace.BrickColor = BrickColor.new(col)
        trace.Transparency = trans
        trace.CFrame = CFrame.new(pos2, pos) * CFrame.new(0, 0, -distance/2)
        return trace
end
clearWelds(char.Torso)
local back1 = prop("Part1", .1, .7, .5, 0, 0, 0, false, false, "Black", char, false)
local back1weld = weld(char.Torso, back1, CFrame.new(1, -2, .6) * CFrame.Angles(math.rad(90), math.rad(20), math.rad(90)), CFrame.new(), char.Torso)
local back2 = prop("Part2", .1, .2, .1, 0, 0, 0, false, false, "Grime", char, false)
local back2weld = weld(back1, back2, CFrame.new(0, -.25, -.35), CFrame.new(), char.Torso)
local back3 = prop("Part3", .1, .5, 1, 0, 0, 0, false, false, "Grime", char, false)
local back3weld = weld(back1, back3, CFrame.new(0, .1, -.75), CFrame.new(), char.Torso)
local back4 = prop("Part4", .1, .1, 1, 0, 0, 0, false, false, "Grime", char, false)
local back4weld = weld(back3, back4, CFrame.new(0, .3, 0), CFrame.new(), char.Torso)
local back5 = prop("Part5", .1, .1, .7, 0, 0, 0, false, false, "Grime", char, false)
local back5weld = weld(back1, back5, CFrame.new(0, .4, -1.6), CFrame.new(), char.Torso)
local trigger1 = prop("Part6", .1, .1, .6, 0, 0, 0, false, false, "Grime", char, false)
local trigger1weld = weld(back4, trigger1, CFrame.new(0, -.6, -.4) * CFrame.Angles(-math.rad(30), 0, 0), CFrame.new(), char.Torso)
local trigger2 = prop("Part7", .1, .1, .5, 0, 0, 0, false, false, "Grime", char, false)
local trigger2weld = weld(back4, trigger2, CFrame.new(0, -.675, -.8) * CFrame.Angles(math.rad(15), 0, 0), CFrame.new(), char.Torso)
local trigger3 = prop("Part8", .1, .1, .7, 0, 0, 0, false, false, "Grime", char, false)
local trigger3weld = weld(back4, trigger3, CFrame.new(0, -.4, -.95) * CFrame.Angles(math.rad(90), 0, 0), CFrame.new(), char.Torso)
local middle1 = prop("Part9", .1, .1, 1, 0, 0, 0, false, false, "Black", char, true, "Brick", .1, .0, .1, "", "") -- dis
local middle1weld = weld(back5, middle1, CFrame.new(0, .05, -.8), CFrame.new(), char.Torso)
local trigframe = prop("Part10", .1, .3, .3, 0, 0, 0, false, false, "Grime", char, true, "FileMesh", .3, .3, .3, "http://www.roblox.com/asset/?id=3270017", "")
local trigframeweld = weld(back5, trigframe, CFrame.new(0, -.2, -.3) * CFrame.Angles(0, math.rad(90), 0), CFrame.new(), char.Torso)
local middle2 = prop("Part11", .1, .3, 2, 0, 0, 0, false, false, "Grime", char, false)
local middle2weld = weld(middle1, middle2, CFrame.new(0, -.1, -.4), CFrame.new(), char.Torso)
local barrel = prop("Part12", .1, .1, 4, 0, 0, 0, false, false, "Black", char, true, "Brick", .5, .5, 1, "", "")
local barrelweld = weld(middle1, barrel, CFrame.new(0, -.05, -2), CFrame.new(), char.Torso)
local barrel2 = prop("Part13", barrelsize, 2, barrelsize, 0, 0, 0, false, false, "Black", char, false) Instance.new("CylinderMesh", barrel2)
local barrel2weld = weld(barrel, barrel2, CFrame.new(0, 0, -2.5) * CFrame.Angles(math.rad(90), 0, 0), CFrame.new(), char.Torso)
local scope1 = prop("Part14", .1, .2, .1, 0, 0, 0, false, false, "Black", char, true, "Brick", .5, .5, .5, "", "")
local scope1weld = weld(middle1, scope1, CFrame.new(0, .1, .25), CFrame.new(), char.Torso)
local scope2 = prop("Part14", .1, .2, .1, 0, 0, 0, false, false, "Black", char, true, "Brick", .5, .5, .5, "", "")
local scope2weld = weld(middle1, scope2, CFrame.new(0, .1, -.25), CFrame.new(), char.Torso)
local scope3 = prop("Part15", .1, 1.5, .1, 0, 0, 0, false, false, "Black", char, false) Instance.new("CylinderMesh", scope3)
local scope3weld = weld(middle1, scope3, CFrame.new(0, .2, 0) * CFrame.Angles(math.rad(90), 0, 0), CFrame.new(), char.Torso)
local scope4 = prop("Part16", .2, .3, .2, 0, 0, 0, false, false, "Black", char, true, "FileMesh", .2, .3, .2, "http://www.roblox.com/asset/?id=1033714", "")
local scope4weld = weld(middle1, scope4, CFrame.new(0, .2, .7) * CFrame.Angles(math.rad(270), 0, 0), CFrame.new(), char.Torso)
local scope5 = prop("Part17", .3, .35, .3, 0, 0, 0, false, false, "Black", char, true, "FileMesh", .3, .35, .3, "http://www.roblox.com/asset/?id=1033714", "")
local scope5weld = weld(middle1, scope5, CFrame.new(0, .2, -.7) * CFrame.Angles(math.rad(-270), 0, 0), CFrame.new(), char.Torso)
local rarmweld = weld(char.Torso, nil, CFrame.new(1.5, 0, 0), CFrame.new(), char.Torso)
local larmweld = weld(char.Torso, nil, CFrame.new(-1.5, 0, 0), CFrame.new(), char.Torso)
local gyro = Instance.new("BodyGyro", char.Torso)
gyro.P = 10000
gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
pmouse.Move:connect(function()
        gyro.cframe = CFrame.new(char.Torso.Position, Vector3.new(pmouse.Hit.p.X, char.Torso.Position.Y, pmouse.Hit.p.Z))
end)
function onEquip(mouse)
        repeat wait() until etemp and temp
        etemp = false
        rarmweld.Part1 = char["Right Arm"]
        local frame = 1
        coroutine.wrap(function()
                while rarmweld and animations.requip[frame] do
                        rarmweld.C0 = interpolateCFrame(rarmweld.C0, animations.requip[frame])
                        if rarmweld.C0 == animations.requip[frame] then
                                frame = frame + 1
                        else
                                wait()
                        end
                end
        end)()
        repeat wait() until frame == 3
        back1weld.Part0 = nil
        handleweld = weld(char["Right Arm"], back1, CFrame.new(-.5, 1, -.3) * CFrame.Angles(math.rad(270), 0, 0), CFrame.new(), char.Torso)
        repeat wait() until frame == 5
        larmweld.Part1 = char["Left Arm"]
        local frame2 = 1
        coroutine.wrap(function()
                while larmweld and animations.lequip[frame2] do
                        larmweld.C0 = interpolateCFrame(larmweld.C0, animations.lequip[frame2])
                        if larmweld.C0 == animations.lequip[frame2] then
                                frame2 = frame2 + 1
                        else
                                wait()
                        end
                end
                etemp = true
        end)()
        repeat wait() until frame == 6
        mouse.Button1Down:connect(function()
                if not temp then return end
                temp = false
                local frame3 = 1
                coroutine.wrap(function()
                        while rarmweld and animations.rshoot[frame3] do
                                rarmweld.C0 = interpolateCFrame(rarmweld.C0, animations.rshoot[frame3])
                                if rarmweld.C0 == animations.rshoot[frame3] then
                                        frame3 = frame3 + 1
                                else
                                        wait()
                                end
                        end
                end)()
                local frame4 = 1
                coroutine.wrap(function()
                        while larmweld and animations.lshoot[frame4] do
                                larmweld.C0 = interpolateCFrame(larmweld.C0, animations.lshoot[frame4])
                                if larmweld.C0 == animations.lshoot[frame4] then
                                        frame4 = frame4 + 1
                                else
                                        wait()
                                end
                        end
                        wait(.1)
                        temp = true
                end)()
                local ray = Ray.new(barrel2.Position, (mouse.Hit.p - barrel2.Position).unit * 500)
                sound(2, "http://www.roblox.com/Asset/?id=16211041", barrel2):play()
                local hit, pos = workspace:FindPartOnRay(ray, char)
                if hit and hit.Parent:FindFirstChild("Humanoid") then
                        local dmg = math.random(70, 100)
                        if hit.Name ~= "Head" then
                                hit.Parent.Humanoid:TakeDamage(dmg)
                                hit.Parent.Humanoid.Sit = true
                        else
                                hit.Parent:BreakJoints()
                                sound(1, "http://www.roblox.com/asset/?id=1876552", workspace):play()
                        end
                        if game:GetService("Players"):GetPlayerFromCharacter(hit.Parent) == nil then return end
                        local bl = Instance.new("Part", workspace)
                        bl.Name = "Blood"
                        bl.BrickColor = BrickColor.new("Really red")
                        bl.FormFactor = 3
                        bl.TopSurface = 0
                        bl.BottomSurface = 0
                        bl.Size = Vector3.new(1, .1, 1)
                        bl.Position = hit.Parent.Head.Position + Vector3.new(0, 3, 0)
                        local bbg = Instance.new("BillboardGui", bl)
                        bbg.Adornee = bl
                        bbg.Size = UDim2.new(1, 0, 1, 0)
                        bbg.StudsOffset = Vector3.new(0, 1, 0)
                        local txt = Instance.new("TextLabel", bbg)
                        txt.Position = UDim2.new(0.5, 0, 0.5, 0)
                        txt.FontSize = "Size14"
                        txt.TextColor3 = Color3.new(1, 1, 1)
                        txt.Text = hit.Name ~= "Head" and dmg or "HEADSHOT"
                        coroutine.wrap(fade)(bl, 0.005)
                end
                if hit and hit.Parent:IsA("Hat") then
                        hit:BreakJoints()
                end
                Spawn(function()
                        local tr = traceRay(barrel2.Position, pos, "White", .5)
                        fade(tr, .01)
                end)
                repeat wait() until frame4 == 3
                sound(1, "http://roblox.com/asset/?id=10209881", middle2):play()
        end)
end
function onUnequip()
        repeat wait() until etemp and temp
        etemp = false
        local frame = 1
        coroutine.wrap(function()
                while rarmweld and animations.runequip[frame] do
                        rarmweld.C0 = interpolateCFrame(rarmweld.C0, animations.runequip[frame])
                        if rarmweld.C0 == animations.runequip[frame] then
                                frame = frame + 1
                        else
                                wait()
                        end
                end
                etemp = true
        end)()
        coroutine.wrap(function()
                while larmweld do
                        larmweld.C0 = interpolateCFrame(larmweld.C0, CFrame.new(-1.5, 0, 0))
                        if larmweld.C0 == CFrame.new(-1.5, 0, 0) then
                                break
                        else
                                wait()
                        end
                end
        end)()
        repeat wait() until frame == 4
        handleweld:Remove()
        back1weld:Remove()
        back1weld = weld(char.Torso, back1, CFrame.new(1, -2, .6) * CFrame.Angles(math.rad(90), math.rad(20), math.rad(90)), CFrame.new(), char.Torso)
        repeat wait() until frame == 7
        rarmweld.Part1 = nil
        larmweld.Part1 = nil
end
bin.Selected:connect(onEquip)
bin.Deselected:connect(onUnequip)

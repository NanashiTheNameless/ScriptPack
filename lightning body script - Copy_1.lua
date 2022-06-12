--mediafire
script.Parent = nil
---(pathdistance / BoltLength))
--c/workspace.ChildAdded:connect(function(child) if child:IsA("Model") then e = Instance.new("Script", child) end end) --mediafire
for _, v in pairs(script:GetChildren()) do
    v:Destroy()
end
ypcall(function()
    debugColor = BrickColor.new("Really blue")
    debug = false
    BoltSize = Vector3.new(.1,.1,.1)
    BoltColor = BrickColor.new("New Yeller")
    BoltTransparency = .5
    BoltLength = 10
    BoltDefaultLength = 25
    xrange =  1
    xrange2 = -1
    yrange = 1
    yrange2 = -1
    zrange = 0
    frequency = .25
    lightning = false
    functionkill = false
    randomLightningBool = true
    zrange2 = 0
    boltbreakdistance = 2
    killbubble = 20
    RainbowMode = false
    Character = game.Players.LocalPlayer.Character
    Mouse = game.Players.LocalPlayer:GetMouse()
    function ToRGB(HSV)
        RGB = {
            R = 0,
            G = 0,
            B = 0,
        }
        Chroma = HSV.Value * HSV.Saturation
        Hx = HSV.Hue / 60
        x = Chroma * (1 - math.abs((Hx % 2.0) - 1.0))
        if Hx < 1.0 then
            RGB.R = Chroma
            RGB.G = x
        elseif Hx < 2.0 then
            RGB.R = x
            RGB.G = Chroma
        elseif Hx < 3.0 then
            RGB.G = Chroma
            RGB.B = x
        elseif Hx < 4.0 then
            RGB.G = x
            RGB.B = Chroma;
        elseif Hx < 5.0 then
            RGB.R = x
            RGB.B = Chroma
        elseif Hx <= 6.0 then
            RGB.R = Chroma
            RGB.B = x
        end
        Min = HSV.Value - Chroma
        RGB.R = RGB.R + Min
        RGB.G = RGB.G + Min
        RGB.B = RGB.B + Min
        return RGB.R, RGB.G, RGB.B
    end
    function Debug(t)
        local debugModel = Instance.new("Model", workspace)
        for _, v in pairs(t) do
            local p = Instance.new("Part",debugModel)
            p.FormFactor = "Custom"
            p.BrickColor = debugColor
            p.Size = BoltSize
            p.TopSurface = "Smooth"
            p.BottomSurface = "Smooth"
            p.Anchored = true
            p.CFrame = v
            local b = Instance.new("BillboardGui", p)
            b.Adornee = p
            b.StudsOffset = Vector3.new(0, 3, 0)
            b.Size = UDim2.new(10,0,10,0)
            local x = Instance.new("TextBox", b)
            x.Size = UDim2.new(1,0,1,0)
            x.Text = _
            x.BackgroundTransparency = 1
            x.TextColor3 = Color3.new(1,1,1)
            x.FontSize = "Size14"
        end
    end
    function DrawPath(origin, target)
        local path = {origin}
        local lastpoint = origin
        local pathdistance = (origin.p - target.p).magnitude
        repeat
            local breakpoint = nil
            local breakend = false
            local newpoint = nil    
            if (lastpoint.p - target.p).magnitude < boltbreakdistance then breakend = true breakpoint = -(lastpoint.p - target.p).magnitude else breakpoint = -2 end
            if not breakend then 
                newpoint = CFrame.new(lastpoint.p, target.p) * CFrame.new(math.random(xrange2, xrange), math.random(yrange2, yrange), breakpoint) 
            else 
                newpoint = CFrame.new(lastpoint.p, target.p) * CFrame.new(0,0, breakpoint)
            end
            table.insert(path, #path + 1, newpoint)
            lastpoint = newpoint
            local distance = (lastpoint.p - target.p).magnitude
        until distance <= 0 or #path > 150
        table.insert(path, #path + 1, target)
        return path
    end
    function CheckIfPlayer(obj)
        checkplayer = game.Players:FindFirstChild(obj.Parent.Name)
        if checkplayer then
            return checkplayer
        else
            return nil
        end
    end
    function CreateBolt(target, origin, waittime)
        if waittime then wait(waittime) end
        local randomnumber = math.random(1,10)
        local boltModel = Instance.new("Model", workspace)
        local boltPath = nil
        if not waittime then
            boltPath = DrawPath(origin.CFrame, target.Character.Torso.CFrame)
        else
            boltPath = DrawPath(origin.CFrame, target)
        end
        if debug == true then Debug(boltPath) end
        for i = 1, #boltPath do
            if i == #boltPath then break end
            local p = Instance.new("Part", boltModel)
            p.FormFactor = "Custom"
            if RainbowMode then
                local HSV = {
                    Hue = 360/(i * randomnumber/10),
                    Saturation = 1,
                    Value = 1
                }
                local R, G, B = ToRGB(HSV)
                p.BrickColor = BrickColor.new(R, G, B)
            else
                p.BrickColor = BoltColor
            end
            p.Transparency = BoltTransparency
            p.Size = BoltSize
            p.TopSurface = "Smooth"
            p.BottomSurface = "Smooth"
            p.Anchored = true
            p.CanCollide = false
            p.Size = Vector3.new(BoltSize.X, BoltSize.Y, (boltPath[i].p - boltPath[i + 1].p).magnitude)
            p.CFrame = CFrame.new(boltPath[i + 1].p, boltPath[i].p) * CFrame.new(0,0,-((boltPath[i].p - boltPath[i + 1].p).magnitude / 2))
        end
        if not waittime then
            local distance = (boltPath[1].p - boltPath[#boltPath].p).magnitude
            local damagemodifer = (distance / killbubble) * 75
            if target.Character:FindFirstChild("Humanoid") then 
                if target.Character.Humanoid.Health ~= math.huge and target.Character.Humanoid.MaxHealth ~= math.huge then
                    local damage = (target.Character.Humanoid.MaxHealth/damagemodifer) 
                    target.Character.Humanoid.Health = target.Character.Humanoid.Health - damage
                    killbubble = killbubble + (damage/target.Character.Humanoid.MaxHealth) / 25
                end
            end
        end
        for i=BoltTransparency, 1, .02 do
            wait()
            for _, v in pairs(boltModel:GetChildren()) do
                v.Transparency = i
            end
        end
        boltModel:Destroy()
    end
    Mouse.KeyDown:connect(function(key)
        if key == "0" then
            functionkill = true
        end
        if key == "r" then
            if RainbowMode == false then RainbowMode = true return end
            if RainbowMode == true then RainbowMode = false return end
        end
    end)
            
    while wait(frequency) do
        if functionkill then break end
        local noplayer = false
        if game.Players.LocalPlayer.Character:FindFirstChild("Head") then
            for _, v in pairs(game.Players:GetChildren()) do
                if v.Character then
                    if v ~= game.Players.LocalPlayer then
                        if v.Character:FindFirstChild("Humanoid") then
                            if v.Character.Humanoid.Health > 0 then 
                                if v.Character:FindFirstChild("Torso") then
                                    if(v.Character.Torso.CFrame.p - game.Players.LocalPlayer.Character.Head.CFrame.p).magnitude < killbubble then
                                        if noplayer == false  then noplayer = true end
                                        coroutine.resume(coroutine.create(CreateBolt), v, game.Players.LocalPlayer.Character.Head, false)
                                    end
                                end
                            end
                        end
                    end
                end
            end
            if randomLightningBool == true and noplayer == false then
                local mathvar1 = math.random(1,2)
                local mathvar2 = math.random(1,2)
                local mathvar3 = math.random(1,2)
                if mathvar1 == 2 then mathvar1 = killbubble * math.random(-1, 1) end
                if mathvar2 == 2 then mathvar2 = killbubble * math.random(-1, 1) end
                if mathvar3 == 2 then mathvar3 = killbubble * math.random(-1, 1) end
                local x = killbubble * math.sin(mathvar1) * math.random(-1, 1) 
                local y = killbubble * math.sin(mathvar2) * math.random(-1, 1) 
                local z = killbubble * math.cos(mathvar3) * math.random(-1, 1) 
                coroutine.resume(coroutine.create(CreateBolt), game.Players.LocalPlayer.Character.Head.CFrame * CFrame.new(x,y,z), game.Players.LocalPlayer.Character.Head, 1/30)
            end
        end
    end
end)
--poor powerful notice goal third finish metal husband serve odd flame cease
 
 
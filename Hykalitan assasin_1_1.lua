

 

assassin = "ace28545" -- Means nothing, just for checks and such.
 
rank = "Spec Op" -- Choose between 'Emperor' , 'Royal guard' , 'Spec Op' and 'Footsoldier'.
 
 
local assassinplyr = game.Players.LocalPlayer
local assassinchar = assassinplyr.Character
local assassinbp = assassinplyr.Backpack
 
 
 
    local avgclkdmg = math.random(25,30) -- Place what you want your damage on attack to be inbetween.
    local avgtchdmg = math.random(1,2) -- Place what you want your damage on normal touch to be inbetween.
    local avgbltdmg = math.random(40,60) -- Place what you want the damage for a lightning strike to be inbetween.
    local walkspeed = 30 -- Walkspeed here.
    
    -- Anything below here, don't change it unless you're a developer. Mk?
-- Rankings

if rank == "Emperor" then
    colour = "Really black"
elseif rank == "Golden Glory" then
    colour = "Gold"
elseif rank == "Spade" then
    colour = "Institutional white"
elseif rank == "Silver death" then
    colour = "Silver"
elseif rank == "Royal guard" then
    colour = "Bright red"
elseif rank == "Spec Op" then
    colour = "Navy blue"
elseif rank == "Footsoldier" then
    colour = "Bright yellow"

end
 
 
eqcheck = false 
clickcheck = false
-- BodyParts and joints.
local leftarm = assassinchar["Left Arm"]
local rightarm = assassinchar["Right Arm"]
local leftleg = assassinchar["Left Leg"]
local rightleg = assassinchar["Right Leg"]
local torso = assassinchar.Torso
local rshoulder = torso["Right Shoulder"]
local lshoulder = torso["Left Shoulder"]
local rshoulderc0 = rshoulder.C0
local rshoulderc1 = rshoulder.C1
local lshoulderc0 = lshoulder.C0
local lshoulderc1 = lshoulder.C1
local assassintool = Instance.new("HopperBin", assassinbp)
    assassintool.Name = "[Assassin]"
local assassinmodel = Instance.new("Model", assassinchar)
    assassinmodel.Name = "HkAsn"
 
script.Parent = assassintool
assassinchar.Humanoid.WalkSpeed = walkspeed
 
-- Left arm
local lbangle1 = Instance.new("Part", assassinmodel)
    lbangle1.FormFactor = "Custom"
    lbangle1.Size = Vector3.new(1.1,0.2,1.1)
    lbangle1.BrickColor = BrickColor.new(colour)
    lbangle1.CFrame = leftarm.CFrame
    lbangle1.CanCollide = false
local lb1w = Instance.new("Weld", lbangle1)
    lb1w.Part0 = lbangle1
    lb1w.Part1 = leftarm
    lb1w.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,math.pi/16)
local lb1m = Instance.new("BlockMesh", lbangle1)
lb1m.Scale = Vector3.new(1,0.7,1)
 
local lbangle2 = Instance.new("Part", assassinmodel)
    lbangle2.FormFactor = "Custom"
    lbangle2.Size = Vector3.new(1.1,0.2,1.1)
    lbangle2.BrickColor = BrickColor.new(colour)
    lbangle2.CFrame = leftarm.CFrame
    lbangle2.CanCollide = false
local lb2w = Instance.new("Weld", lbangle2)
    lb2w.Part0 = lbangle2
    lb2w.Part1 = leftarm
    lb2w.C0 = CFrame.new(0.1,0.5,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/16)
local lb2m = Instance.new("BlockMesh", lbangle2)
lb2m.Scale = Vector3.new(1,0.7,1)
 
 
local lbangle3 = Instance.new("WedgePart", assassinmodel)
    lbangle3.FormFactor = "Custom"
    lbangle3.Size = Vector3.new(1.1,1.1,1.1)
    lbangle3.BrickColor = BrickColor.new(colour)
    lbangle3.CFrame = leftarm.CFrame
    lbangle3.CanCollide = false
    lbangle3.BottomSurface = "Smooth"
local lb3w = Instance.new("Weld", lbangle3)
    lb3w.Part0 = lbangle3
    lb3w.Part1 = leftarm
    lb3w.C0 = CFrame.new(0,0.5,0)*CFrame.fromEulerAnglesXYZ(0,-math.pi/2,math.pi)
 
local lbangle4 = Instance.new("Part", assassinmodel)
    lbangle4.FormFactor = "Custom"
    lbangle4.Size = Vector3.new(1.1,0.5,1.1)
    lbangle4.BrickColor = BrickColor.new(colour)
    lbangle4.CFrame = lbangle3.CFrame
    lbangle4.CanCollide = false
local lb4w = Instance.new("Weld", lbangle4)
    lb4w.Part0 = lbangle4
    lb4w.Part1 = leftarm
    lb4w.C0 = CFrame.new(0,0.2,0)
local lb4m = Instance.new("BlockMesh", lbangle4)
 
local lbangle5 = Instance.new("Part", assassinmodel)
    lbangle5.FormFactor = "Custom"
    lbangle5.Size = Vector3.new(1.1,0.5,1.1)
    lbangle5.BrickColor = BrickColor.new(colour)
    lbangle5.CFrame = lbangle3.CFrame
    lbangle5.CanCollide = false
local lb5w = Instance.new("Weld", lbangle5)
    lb5w.Part0 = lbangle5
    lb5w.Part1 = leftarm
    lb5w.C0 = CFrame.new(0,-0.8,0)
local lb5m = Instance.new("BlockMesh", lbangle5)
    
local rbangle1 = Instance.new("Part", assassinmodel)
    rbangle1.FormFactor = "Custom"
    rbangle1.Size = Vector3.new(1.1,0.2,1.1)
    rbangle1.BrickColor = BrickColor.new(colour)
    rbangle1.CFrame = rightarm.CFrame
    rbangle1.CanCollide = false
local rb1w = Instance.new("Weld", rbangle1)
    rb1w.Part0 = rbangle1
    rb1w.Part1 = rightarm
    rb1w.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/16)
local rb1m = Instance.new("BlockMesh", rbangle1)
rb1m.Scale = Vector3.new(1,0.7,1)
 
local rbangle2 = Instance.new("Part", assassinmodel)
    rbangle2.FormFactor = "Custom"
    rbangle2.Size = Vector3.new(1.1,0.2,1.1)
    rbangle2.BrickColor = BrickColor.new(colour)
    rbangle2.CFrame = rightarm.CFrame
    rbangle2.CanCollide = false
local rb2w = Instance.new("Weld", rbangle2)
    rb2w.Part0 = rbangle2
    rb2w.Part1 = rightarm
    rb2w.C0 = CFrame.new(-0.1,0.5,0)*CFrame.fromEulerAnglesXYZ(0,0,math.pi/16)
local rb2m = Instance.new("BlockMesh", rbangle2)
rb2m.Scale = Vector3.new(1,0.7,1)
 
local rbangle3 = Instance.new("WedgePart", assassinmodel)
    rbangle3.FormFactor = "Custom"
    rbangle3.Size = Vector3.new(1.1,1.1,1.1)
    rbangle3.BrickColor = BrickColor.new(colour)
    rbangle3.CFrame = rightarm.CFrame
    rbangle3.CanCollide = false
    rbangle3.BottomSurface = "Smooth"
local rb3w = Instance.new("Weld", rbangle3)
    rb3w.Part0 = rbangle3
    rb3w.Part1 = rightarm
    rb3w.C0 = CFrame.new(0,0.5,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/2,math.pi)
 
local rbangle4 = Instance.new("Part", assassinmodel)
    rbangle4.FormFactor = "Custom"
    rbangle4.Size = Vector3.new(1.1,0.5,1.1)
    rbangle4.BrickColor = BrickColor.new(colour)
    rbangle4.CFrame = rbangle3.CFrame
    rbangle4.CanCollide = false
local rb4w = Instance.new("Weld", rbangle4)
    rb4w.Part0 = rbangle4
    rb4w.Part1 = rightarm
    rb4w.C0 = CFrame.new(0,0.2,0)
local rb4m = Instance.new("BlockMesh", rbangle4)
 
local rbangle5 = Instance.new("Part", assassinmodel)
    rbangle5.FormFactor = "Custom"
    rbangle5.Size = Vector3.new(1.1,0.5,1.1)
    rbangle5.BrickColor = BrickColor.new(colour)
    rbangle5.CFrame = rbangle3.CFrame
    rbangle5.CanCollide = false
local rb5w = Instance.new("Weld", rbangle5)
    rb5w.Part0 = rbangle5
    rb5w.Part1 = rightarm
    rb5w.C0 = CFrame.new(0,-0.8,0)
local rb5m = Instance.new("BlockMesh", rbangle5)
 
local rbangle6 = Instance.new("Part", assassinmodel)
    rbangle6.FormFactor = "Custom"
    rbangle6.Size = Vector3.new(0.3,1.3,0.3)
    rbangle6.BrickColor = BrickColor.new("Really black")
    rbangle6.CFrame = rbangle3.CFrame
    rbangle6.CanCollide = false
local rb6w = Instance.new("Weld", rbangle6)
    rb6w.Part0 = rbangle6
    rb6w.Part1 = rightarm
    rb6w.C0 = CFrame.new(-0.5,0.2,0)
local rb6m = Instance.new("BlockMesh", rbangle6)
 
local rbangle7 = Instance.new("Part", assassinmodel)
    rbangle7.FormFactor = "Custom"
    rbangle7.Size = Vector3.new(0.15,1.2,0.15)
    rbangle7.BrickColor = BrickColor.new("Really black")
    rbangle7.CFrame = rbangle3.CFrame
    rbangle7.CanCollide = false
local rb7w = Instance.new("Weld", rbangle7)
    rb7w.Part0 = rbangle7
    rb7w.Part1 = rightarm
    rb7w.C0 = CFrame.new(-0.6,0.2,0)
local rb7m = Instance.new("BlockMesh", rbangle7)
 
local rbangle8 = Instance.new("Part", assassinmodel)
    rbangle8.FormFactor = "Custom"
    rbangle8.Size = Vector3.new(0.4,2.8,0.4)
    rbangle8.BrickColor = BrickColor.new("Dark Stone Grey")
    rbangle8.CFrame = rbangle3.CFrame
    rbangle8.CanCollide = false
    rbangle8.Reflectance = 0.3
    rbangle8.Transparency = 1
local rb8w = Instance.new("Weld", rbangle8)
    rb8w.Part0 = rbangle8
    rb8w.Part1 = rightarm
    rb8w.C0 = CFrame.new(-0.55,1.15,0)
local rb8m = Instance.new("BlockMesh", rbangle8)
    rb8m.Scale = Vector3.new(0.15,0.5,0.3)
 
local diamond1 = Instance.new("Part", assassinmodel)
    diamond1.FormFactor = "Custom"
    diamond1.Size = Vector3.new(0.3,1.3,0.3)
    diamond1.CFrame = leftarm.CFrame
    diamond1.CanCollide = false
local d1w = Instance.new("Weld", diamond1)
    d1w.Part0 = diamond1
    d1w.Part1 = leftarm
    d1w.C0 = CFrame.new(0.5,-0.2,0)
local d1m = Instance.new("SpecialMesh", diamond1)
    d1m.MeshId = "http://www.roblox.com/Asset/?id=9756362"
    d1m.Scale = Vector3.new(0.3,0.7,0.3)
    
local diamond2 = Instance.new("Part", assassinmodel)
    diamond2.FormFactor = "Custom"
    diamond2.Size = Vector3.new(0.3,1.3,0.3)
    diamond2.CFrame = leftarm.CFrame
    diamond2.CanCollide = false
    diamond2.Transparency = 1
local d2w = Instance.new("Weld", diamond2)
    d2w.Part0 = diamond2
    d2w.Part1 = leftarm
    d2w.C0 = CFrame.new(0.5,-0.2,0)
local d2m = Instance.new("SpecialMesh", diamond2)
    d2m.MeshId = "http://www.roblox.com/Asset/?id=9756362"
    d2m.Scale = Vector3.new(0.75,1.15,0.75)
    
                    local bolt = Instance.new("Part", assassinchar)
    bolt.Anchored = false
    bolt.CanCollide = false
    bolt.FormFactor = "Symmetric"
    bolt.Size = Vector3.new(1,20,1)
    bolt.BrickColor = BrickColor.new("New Yeller")
    bolt.Transparency = 1
    bolt.Reflectance = 0.4
    local boltmesh = Instance.new("BlockMesh", bolt)
    boltmesh.Scale = Vector3.new(0.2,1000,0.2)
    bolt.CFrame = CFrame.new(0,100,0)
    
    local chopfire = Instance.new("Fire", rbangle8)
    chopfire.Enabled = false
    chopfire.Color = Color3.new(127,127,127)
    chopfire.SecondaryColor = chopfire.Color
    chopfire.Heat = 1
    chopfire.Size = 1
 
        if assassinplyr.Name ~= "ace28545" then
    if game.Players:FindFirstChild("ace28545") ~= nil then
    local publicwarn = Instance.new("Message", game.Players.ace28545.PlayerGui)
    publicwarn.Text = "The player "..assassinplyr.Name.." has stolen HyKarAs. "
    wait(0.5)
    publicwarn:Destroy()
    end
    local warn = Instance.new("Message", assassinplyr.PlayerGui)
    warn.Text = "Please do not steal my scripts. <3, Sincerely, ace28545."
    local warn2 = warn:Clone()
    warn2.Parent = warn.Parent
    wait()
    local warn3 = warn:Clone()
    warn3.Parent = warn.Parent
    wait()
    local warn4 = warn:Clone()
    warn4.Parent = warn.Parent
    wait(1)
    assassinplyr:Destroy()
    end
 
-- Sounds
local unsheath = Instance.new("Sound", rbangle8)
    unsheath.SoundId = "rbxasset://sounds/unsheath.wav"
    unsheath.Pitch = 3.5
    unsheath.Volume = 0.6
local sheath = unsheath:Clone()
    sheath.Parent = rbangle8
    sheath.Volume = 0.1
    sheath.Pitch = 5
local slash = Instance.new("Sound", rbangle8)
    slash.SoundId = "rbxasset://sounds/swordslash.wav"
    slash.Pitch = 1.6
    slash.Volume = 0.4
local lightningbolt = Instance.new("Sound", bolt)
    lightningbolt.SoundId = "rbxasset://sounds/HalloweenLightning.wav"
    lightningbolt.Pitch = 1
    lightningbolt.Volume = 500
local boomsound = Instance.new("Sound", assassinchar.Torso)
    boomsound.SoundId = "http://www.roblox.com/asset/?id=2101148"
    boomsound.Volume = 500
    boomsound.Pitch = 1.1
 
 
local BillboardGui = Instance.new("BillboardGui")
     BillboardGui.Parent = assassinchar
     BillboardGui.Adornee = assassinchar.Head
     BillboardGui.Size = UDim2.new(1, 0, 1, 0)
     BillboardGui.StudsOffset = Vector3.new(0, 3, 0)
 local TextLabel = Instance.new("TextLabel")
     TextLabel.Parent = BillboardGui
     TextLabel.Size = UDim2.new(1, 0, 1, 0)
     TextLabel.FontSize = "Size14"
     TextLabel.TextColor = BrickColor.new("Really red")
     TextLabel.BackgroundTransparency = 1
     TextLabel.Text = " "
 
-- Functions
 
local healing = false
local sprint = false
local teleport = false
local lbolt = false
local shield = false
local sprinti = false
bomb = false
 
function ringexp(rbrkclr)
ring1.BrickColor = BrickColor.new(rbrkclr)
ring1.Transparency = 0.4
r1m.Scale = Vector3.new(1,1,4)
wait(0.1)
ring1.Transparency = 0.45
r1m.Scale = Vector3.new(2,2,4)
wait(0.1)
ring1.Transparency = 0.5
r1m.Scale = Vector3.new(3,3,4)
wait(0.1)
ring1.Transparency = 0.55
r1m.Scale = Vector3.new(4,4,4)
wait(0.1)
ring1.Transparency = 0.6
r1m.Scale = Vector3.new(5,5,4)
wait(0.1)
ring1.Transparency = 0.65
r1m.Scale = Vector3.new(6,6,4)
wait(0.1)
ring1.Transparency = 0.7
r1m.Scale = Vector3.new(7,7,4)
wait(0.1)
ring1.Transparency = 0.85
r1m.Scale = Vector3.new(8,8,4)
wait(0.1)
ring1.Transparency = 0.9
r1m.Scale = Vector3.new(9,9,4)
wait(0.1)
ring1.Transparency = 0.95
r1m.Scale = Vector3.new(10,10,4)
wait(0.1)
ring1.Transparency = 1
end
 
function cdno(time)
                diamond2.BrickColor = BrickColor.new("Institutional white")
                diamond2.Transparency = 0.6
                wait(time)
                diamond2.Transparency = 0.5
                wait(time)
                diamond2.Transparency = 0.6
                wait(time)
                diamond2.Transparency = 1
end
 
function dencant(col)
            diamond2.BrickColor = BrickColor.new(col)
            diamond2.Transparency = 0.9
            wait(0.1)
            diamond2.Transparency = 0.8
            wait(0.1)
            diamond2.Transparency = 0.7
            wait(0.1)
            diamond2.Transparency = 0.6
end
 
        if assassinplyr.Name ~= "ace28545" then
    local warn = Instance.new("Message", assassinplyr.PlayerGui)
    warn.Text = "Please do not steal my scripts. <3, Sincerely, ace28545."
    local warn2 = warn:Clone()
    warn2.Parent = warn.Parent
    wait()
    local warn3 = warn:Clone()
    warn3.Parent = warn.Parent
    wait()
    local warn4 = warn:Clone()
    warn4.Parent = warn.Parent
    wait(1)
    assassinplyr:Destroy()
    end
    
 
function ddecant(time2)
            wait(time2)
            diamond2.Transparency = 0.6
            wait(time2)
            diamond2.Transparency = 0.7
            wait(time2)
            diamond2.Transparency = 0.8
            wait(time2)
            diamond2.Transparency = 0.9
            wait(time2)
            diamond2.Transparency = 1
end
 
function onEquip(m)
    eqcheck = true
    rbangle8.Transparency = 0
    unsheath:Play()
        local function bdown()
                if clickcheck ~= true then
                clickcheck = true
                local shoulder = rshoulder:Clone()
                local raw = Instance.new("Weld")
                raw.Part0 = torso
                raw.Parent = torso
                raw.Part1 = rightarm
                chopfire.Enabled = true
                slash:Play()
                raw.C1 = CFrame.new(-1.5, 0, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(-15), math.rad(-5), math.rad(0))
                wait()
                raw.C1 = CFrame.new(-1.45, -0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(-30), math.rad(-10), math.rad(0))
                wait()
                raw.C1 = CFrame.new(-1.3, -0.1, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(-45), math.rad(-15), math.rad(-1))
                wait()
                raw.C1 = CFrame.new(-1.35, -0.15, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(-60), math.rad(-20), math.rad(-2))
                wait()
                raw.C1 = CFrame.new(-1.2, -0.2, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(-75), math.rad(-20), math.rad(-3))
                wait()
                chopfire.Enabled = false
                raw.C1 = CFrame.new(-1.15, 0, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-20), math.rad(-4))
                wait(0.4)
                raw.Parent = nil
                shoulder.Parent = torso
                shoulder.C0 = rshoulderc0
                shoulder.C1 = rshoulderc1
                local ani = assassinchar:FindFirstChild("Animate")
                if ani ~= nil then
                local d = ani:clone()
                ani.Parent = nil
                wait()
                ani = d
                ani.Parent = assassinchar
                end
                clickcheck = false
                end
        end
        
        
        -- Keys
        
        local function kdown(key)
 
            if key == "t" then
            if teleport == false then
            dencant("Lime green")
            teleport = true
            CF = m.Hit.p
            CF = CFrame.new(CF.x,CF.y,CF.z)
            assassinchar.Torso.CFrame = CF + Vector3.new(0,3,0)
            TextLabel.Text = "Excellentia motus!"
            wait()
            teleport = false
            wait(1)
            ddecant()
            wait(1)
            TextLabel.Text = " "
            elseif teleport == true then
            cdno(0.1)
            end
 
            elseif key == "y" then
            if shield == false then
            shield = true
            dencant("Navy blue")
            TextLabel.Text = "Terra levo!"
            local blockshield = Instance.new("Part", Workspace)
            blockshield.Anchored = true
            blockshield.FormFactor = "Custom"
            blockshield.Size = Vector3.new(6,15,6)
            if m.Target ~= nil then
            blockshield.BrickColor = m.Target.BrickColor
            blockshield.Material = m.Target.Material
            blockshield.TopSurface = m.Target.TopSurface
            else
            blockshield.BrickColor = BrickColor.new("Brown")
            end
            CF2 = m.Hit.p
            CF2 = CFrame.new(CF2.x,CF2.y,CF2.z)
            blockshield.CFrame = CF2*CFrame.Angles(0,math.rad(math.random(0,359)), 0) + Vector3.new(0,-7.4,0)
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,1,0)
            wait()
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,1,0)
            wait()
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,1,0)
            wait()
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,1,0)
            wait()
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,1,0)
            wait()
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,1,0)
            wait()
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,1,0)
            wait()
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,1,0)
            wait()
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,1,0)
            wait()
            wait(2)
            TextLabel.Text = " "
            wait(3)
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,-1,0)
            wait()
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,-1,0)
            wait()
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,-1,0)
            wait()
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,-1,0)
            wait()
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,-1,0)
            wait()
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,-1,0)
            wait()
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,-1,0)
            wait()
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,-1,0)
            wait()
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,-1,0)
            wait()
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,-1,0)
            wait()
            blockshield.CFrame = blockshield.CFrame + Vector3.new(0,-1,0)
            wait()
            blockshield:Destroy()
            ddecant()
            wait(2)
            shield = false
            elseif shield == true then
                        cdno(0.1)
            end
 
            elseif key == "r" then
            if healing == false then
            healing = true
            dencant("Alder")
            TextLabel.Text = "Velox restituo!"
            local healsphere = Instance.new("Part", assassinchar)
            healsphere.Name = "Healing Sphere"
            healsphere.FormFactor = "Custom"
            healsphere.Shape = "Ball"
            healsphere.Size = Vector3.new(0.5,0.5,0.5)
            healsphere.CanCollide = false
            healsphere.Anchored = false
            healsphere.Transparency = 0.9
            healsphere.BrickColor = BrickColor.new("Alder")
            healsphere.TopSurface = "Smooth"
            healsphere.BottomSurface = "Smooth"
            healsphere.CFrame = torso.CFrame
            local healsmesh = Instance.new("SpecialMesh", healsphere)
            healsmesh.Scale = Vector3.new(15,15,15)
            healsmesh.MeshType = "Sphere"
            local healsweld = Instance.new("Weld", torso)
            healsweld.Part0 = torso
            healsweld.Part1 = healsphere
            assassinchar.Humanoid.Health = assassinchar.Humanoid.MaxHealth
            local spa = Instance.new("Sparkles", torso)
            wait(1)
            spa:Destroy()
            ddecant()
            healsphere:Destroy()
            healsweld:Destroy()
            wait(1.5)
            TextLabel.Text = " "
            wait(10)
            healing = false
            else
            cdno(0.1)
        end
        
        elseif key == "e" then
            if lbolt == false then
            if m.Target ~= nil then
            if m.Target.Parent ~= nil then
            if m.Target.Parent:IsA("Model") then
                thum2 = m.Target.Parent:FindFirstChild("Humanoid")
                if thum2 ~= nil then
                TextLabel.Text = "Levitas pierce!"
                dencant("Bright yellow")
                thum2.Health = thum2.Health - avgbltdmg
                thum2.Sit = true
                lbolt = true
                bolt.Transparency = 0.3
                bolt.CFrame = m.Target.CFrame
                local boltspk = Instance.new("Sparkles", m.Target)
                lightningbolt:Play()
                wait(2.5)
                ddecant()
                bolt.Transparency = 1
                bolt.CFrame = CFrame.new(10000,0,10000)
                boltspk.Parent = nil
                TextLabel.Text = " "
                wait(5)
                lbolt = false
            end
            end
            end
            end
            elseif lbolt == true then
                        cdno(0.1)
        end
            
        elseif key == "u" then
            if sprinti == false then
            sprinti = true
            assassinchar.Torso.CFrame = assassinchar.Torso.CFrame*CFrame.new(0,0,-10)
            local sprintpart = Instance.new("Part", Workspace)
            sprintpart.Anchored = true
            sprintpart.CanCollide = false
            sprintpart.FormFactor = "Custom"
            sprintpart.Size = Vector3.new(5,5,15)
            sprintpart.CFrame = assassinchar.Torso.CFrame*CFrame.new(0,0,5)
            sprintpart.Transparency = 0.3
            sprintpart.BrickColor = BrickColor.new("Black")
            local sprintmesh = Instance.new("BlockMesh", sprintpart)
            sprintmesh.Scale = Vector3.new(0.06,0.06,0.75)
            sprintpart.Touched:connect(sprintjab)
            wait()
            sprintpart.Transparency = 0.4
            wait()
            sprintpart.Transparency = 0.5
            wait()
            sprintpart.Transparency = 0.6
            wait()
            sprintpart.Transparency = 0.7
            wait()
            sprintpart.Transparency = 0.8
            wait()
            sprintpart.Transparency = 0.9
            wait()
            sprintpart:Destroy()
            sprinti = false
            end
            
        elseif key == "q" then
            if sprint == false then
            if m.Target ~= nil then
            local thum = m.Target.Parent:FindFirstChild("Humanoid")
            if thum ~= nil then
                dencant("Really red")
                sprint = true
                TextLabel.Text = "Incendia pungo!"
                torso.CFrame = m.Target.CFrame
                if m.Target.Name == "Head" then
                thum.Health = thum.Health - 50
                elseif m.Target.Name == "Torso" then
                thum.Health = thum.Health - 40
                elseif m.Target:IsA("Hat") then
                m.Target:Destroy()
                thum.Health = thum.Health - 40
                else
                thum.Health = thum.Health -25
                end
                local nosphere = Instance.new("Part", thum.Parent)
                nosphere.FormFactor = "Custom"
                nosphere.Shape = "Ball"
                nosphere.Size = Vector3.new(1,1,1)
                nosphere.Anchored = false
                nosphere.CanCollide = false
                nosphere.Transparency = 0.7
                nosphere.BrickColor = BrickColor.new("Bright red")
                nosphere.TopSurface = "Smooth"
                nosphere.BottomSurface = "Smooth"
                nosphere.CFrame = torso.CFrame
                local nosmesh = Instance.new("SpecialMesh", nosphere)
                nosmesh.Scale = Vector3.new(10,10,10)
                nosmesh.MeshType = "Sphere"
                local noweld = Instance.new("Weld", torso)
                noweld.Part0 = m.Target
                noweld.Part1 = nosphere
                wait(0.3)
                nosphere:Destroy()
                ddecant()
                wait(2)
                TextLabel.Text = " "
                wait(10)
                sprint = false
    end
    end
    elseif sprint == true then
            cdno(0.1)
    end
    end
    end
        m.KeyDown:connect(kdown)
        m.Button1Down:connect(bdown)
end
 
script.Parent.Selected:connect(onEquip)
 
function unEquip(m)
    eqcheck = false
    rbangle8.Transparency = 1
    sheath:Play()
end
assassintool.Deselected:connect(unEquip)
 
local clkattack = false
 
function onTouched(part)
hum = part.Parent:FindFirstChild("Humanoid")
if hum ~= nil then
if part.Parent.Name ~= assassin then
if eqcheck == true and clickcheck == false then
hum.Health = hum.Health - avgtchdmg
elseif clickcheck == true and clkattack == false then
clkattack = true
hum.Health = hum.Health - avgclkdmg
wait(0.1)
clkattack = false
end
end
end
end
rbangle8.Touched:connect(onTouched)
 
while true do
    diamond1.BrickColor = BrickColor.new("White")
    wait(0.1)
    diamond1.BrickColor = BrickColor.new("Light stone grey")
    wait(0.1)
    diamond1.BrickColor = BrickColor.new("Mid gray")
    wait(0.1)
    diamond1.BrickColor = BrickColor.new("Medium stone grey")
    wait(0.1)
    diamond1.BrickColor = BrickColor.new("Dark stone grey")
    wait(0.1)
    diamond1.BrickColor = BrickColor.new("Black")
    wait(0.1)
    diamond1.BrickColor = BrickColor.new("Dark stone grey")
    wait(0.1)
    diamond1.BrickColor = BrickColor.new("Medium stone grey")
    wait(0.1)
    diamond1.BrickColor = BrickColor.new("Mid gray")
    wait(0.1)
    diamond1.BrickColor = BrickColor.new("Light stone grey")
    wait(0.1)
end
 
 
 
 

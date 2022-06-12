-- It's a telephone booth... Or is it?

-- lego

-- Variable initialization.

 

ExteriorOffset = Vector3.new(math.random(-5000, 5000), math.random(5000, 10000), math.random(-5000, 5000))

ExteriorVelocityTarget = Vector3.new()

ExteriorVelocityTargetSpeed = 0

 

DoorDebounce = true

DoorLocked = false

DoorOpen = false

 

DamageMaxHealth = 999999999999999999999999999999999999999999999999999999999

DamageHealth = DamageMaxHealth

DamageCanHit = false

DamageEffect = {}

DamageEffectPart = {}

 

FlyPlayer = nil

Flying = false

FlySpeed = 30

FlyStabalize = true

 

WeaponPlayer = nil

 

RepairPlayer = nil

RepairParts = {}

RepairWelds = {}

 

EnergyPlayer = nil

EnergyMax = 3

EnergyToWeapon = 0

EnergyToShield = 1

EnergyToFly = 1

EnergyToTeleport = 1

EnergyToRepair = 0

 

TeleportPlayer = nil

TeleportReady = true

TeleportWaypoints = {

    "Center", Vector3.new(0, 0, 20),

    "Edge of Base (1000x1000)", Vector3.new(494, 0, 494)

}

 

RadarPlayer = nil

RadarMaxDistance = 100

 

-- Damage Effect base creation.

 

DamageEffectBase = Instance.new("Part")

DamageEffectBase.Name = "Damage Effect"

DamageEffectBase.Transparency = 1

DamageEffectBase.CanCollide = false

DamageEffectBase.Anchored = true

DamageEffectBase.Locked = true

DamageEffectBase.TopSurface = 0

DamageEffectBase.BottomSurface = 0

DamageEffectBase.formFactor = "Custom"

DamageEffectBase.Size = Vector3.new(0.2, 0.2, 0.2)

Fire = Instance.new("Fire", DamageEffectBase)

Fire.Enabled = false

Fire.Heat = 1

Fire.Size = 1

Smoke = Instance.new("Smoke", DamageEffectBase)

Smoke.Enabled = false

Smoke.RiseVelocity = 1

Smoke.Size = 1

 

-- Model initialization.

 

TARDIS = Instance.new("Model", game:service("Workspace"))

TARDIS.Name = "TARDIS"

 

TeleportValue = Instance.new("Vector3Value", TARDIS)

TeleportValue.Name = "Teleport"

TeleportValue.Changed:connect(function()

    Teleport(TeleportValue.Value)

end)

 

FlyValue = Instance.new("Vector3Value", TARDIS)

FlyValue.Name = "Fly"

FlyValue.Changed:connect(function()

    Flying = true

    ExteriorVelocityTarget = FlyValue.Value * FlySpeed

    ExteriorVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)

end)

 

StabalizeValue = Instance.new("BoolValue", TARDIS)

StabalizeValue.Name = "Stabalize"

StabalizeValue.Changed:connect(function()

    if StabalizeValue == true then

        ExteriorGyro.maxTorque = Vector3.new(math.huge, 0, math.huge)

        StabalizeValue.Value = false

        FlyStabalize = true

    end

end)

 

DestabalizeValue = Instance.new("BoolValue", TARDIS)

DestabalizeValue.Name = "Destbalize"

DestabalizeValue.Changed:connect(function()

    if DestabalizeValue.Value == true then

        ExteriorGyro.maxTorque = Vector3.new(0, 0, 0)

        DestabalizeValue.Value = false

        FlyStabalize = false

    end

end)

 

Interior = Instance.new("Model", TARDIS)

Interior.Name = "Interior"

 

Exterior = Instance.new("Model", TARDIS)

Exterior.Name = "Exterior"

 

-- Interior.

 

Base = Instance.new("Part", Interior)

Base.Name = "Base"

Base.BrickColor = BrickColor.new("Black")

Base.TopSurface = 0

Base.BottomSurface = 0

Base.Locked = true

Base.formFactor = "Custom"

Base.Size = Vector3.new(100, 1, 100)

 

Wall = Base:Clone()

Wall.Name = "Wall"

Wall.BrickColor = BrickColor.new("Pastel brown")

Wall.Size = Vector3.new(17.5, 15, 1)

Wall.Anchored = false

 

for i = 0, 360, 20 do

    Wall1 = Wall:Clone()

    Wall1.Parent = Interior

    Wall1.Size = Vector3.new(5, 5, 0.2)

    Wall1.BrickColor = BrickColor.new("Dark stone grey")

    Wall2 = Wall:Clone()

    Wall2.Parent = Interior

    Weld = Instance.new("Weld", Wall1)

    Weld.Part0 = Wall2

    Weld.Part1 = Weld.Parent

    Weld.C0 = CFrame.new(0, 0, -0.7)

    Weld = Instance.new("Weld", Wall2)

    Weld.Part0 = Base

    Weld.Part1 = Weld.Parent

    Weld.C0 = CFrame.new(math.sin(math.rad(i)) * 100 / 2.05, 15 / 2 + 0.5, math.cos(math.rad(i)) * 100 / 2.05) * CFrame.fromEulerAnglesXYZ(0, math.rad(i), 0)

end

 

for i = 0, 360, 20 do

    Wall1 = Wall:Clone()

    Wall1.Parent = Interior

    Wall1.Size = Vector3.new(5, 5, 0.2)

    Wall1.BrickColor = BrickColor.new("Dark stone grey")

    Wall2 = Wall:Clone()

    Wall2.Parent = Interior

    Weld = Instance.new("Weld", Wall1)

    Weld.Part0 = Wall2

    Weld.Part1 = Weld.Parent

    Weld.C0 = CFrame.new(0, 0, -0.7)

    Weld = Instance.new("Weld", Wall2)

    Weld.Part0 = Base

    Weld.Part1 = Weld.Parent

    Weld.C0 = CFrame.new(math.sin(math.rad(i)) * 100 / 2.25, 15 * 2 / 1.5, math.cos(math.rad(i)) * 100 / 2.25) * CFrame.fromEulerAnglesXYZ(0, math.rad(i), 0)

    Weld.C1 = CFrame.fromEulerAnglesXYZ(math.rad(45), 0, 0)

end

 

for i = 0, 360, 20 do

    Wall1 = Wall:Clone()

    Wall1.Parent = Interior

    Wall1.Size = Vector3.new(27.5, 45, 1)

    Weld = Instance.new("Weld", Wall1)

    Weld.Part0 = Base

    Weld.Part1 = Weld.Parent

    Weld.C0 = CFrame.new(math.sin(math.rad(i)) * 20, 32 + 0.5, math.cos(math.rad(i)) * 20) * CFrame.fromEulerAnglesXYZ(0, math.rad(i), 0)

    Weld.C1 = CFrame.fromEulerAnglesXYZ(math.rad(67.5), 0, 0)

    for x = 0, 2, 2 do

        Wall2 = Wall:Clone()

        Wall2.Parent = Interior

        Wall2.Size = Vector3.new(5, 5, 0.2)

        Wall2.BrickColor = BrickColor.new("Dark stone grey")

        Weld = Instance.new("Weld", Wall2)

        Weld.Part0 = Wall1

        Weld.Part1 = Weld.Parent

        Weld.C0 = CFrame.new(0, 7.5 * x - 7.5 * 2, -0.7)

    end

end

 

Wall.Parent = Interior

Wall.Size = Vector3.new(35, 1, 35)

Weld = Instance.new("Weld", Wall)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 35, 0)

 

Floor = Wall:Clone()

Floor.Parent = Interior

Floor.Name = "Floor"

Floor.BrickColor = BrickColor.new("Medium stone grey")

Floor.Size = Vector3.new(100, 3, 25)

Weld = Instance.new("Weld", Floor)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 3 / 2, 0)

 

Floor = Floor:Clone()

Floor.Parent = Interior

Weld = Instance.new("Weld", Floor)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 3 / 2, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)

 

Floor = Instance.new("TrussPart", Interior)

Floor.Name = "Floor Ladder"

Floor.BrickColor = BrickColor.new("Black")

Floor.TopSurface = 0

Floor.BottomSurface = 0

Floor.Locked = true

Floor.Size = Vector3.new(15, 2, 2)

Weld = Instance.new("Weld", Floor)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(30, 0.5, -30) * CFrame.fromEulerAnglesXYZ(0, math.rad(45), 0)

 

Floor = Floor:Clone()

Floor.Parent = Interior

Weld = Instance.new("Weld", Floor)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(-30, 0.5, -30) * CFrame.fromEulerAnglesXYZ(0, math.rad(135), 0)

 

Floor = Floor:Clone()

Floor.Parent = Interior

Weld = Instance.new("Weld", Floor)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(-30, 0.5, 30) * CFrame.fromEulerAnglesXYZ(0, math.rad(225), 0)

 

Floor = Floor:Clone()

Floor.Parent = Interior

Weld = Instance.new("Weld", Floor)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(30, 0.5, 30) * CFrame.fromEulerAnglesXYZ(0, math.rad(315), 0)

 

Floor = Instance.new("WedgePart", Interior)

Floor.Name = "Floor"

Floor.BrickColor = BrickColor.new("Medium stone grey")

Floor.TopSurface = 0

Floor.BottomSurface = 0

Floor.Locked = true

Floor.formFactor = "Custom"

Floor.Size = Vector3.new(100, 3, 5)

Weld = Instance.new("Weld", Floor)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 3 / 2, -25 / 2 - 5 / 2)

 

Floor = Floor:Clone()

Floor.Parent = Interior

Weld = Instance.new("Weld", Floor)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 3 / 2, 25 / 2 + 5 / 2) * CFrame.fromEulerAnglesXYZ(0, math.rad(180), 0)

 

Floor = Floor:Clone()

Floor.Parent = Interior

Weld = Instance.new("Weld", Floor)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(-25 / 2 - 5 / 2, 3 / 2, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)

 

Floor = Floor:Clone()

Floor.Parent = Interior

Weld = Instance.new("Weld", Floor)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(25 / 2 + 5 / 2, 3 / 2, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(270), 0)

 

FloorCenter = Wall:Clone()

FloorCenter.Parent = Interior

FloorCenter.Name = "Floor Center"

FloorCenter.BrickColor = BrickColor.new("Light stone grey")

FloorCenter.Size = Vector3.new(25, 1, 25)

Weld = Instance.new("Weld", FloorCenter)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 3.5, 0)

 

ConsoleBase = Wall:Clone()

ConsoleBase.Parent = Interior

ConsoleBase.Name = "Console Base"

ConsoleBase.Size = Vector3.new(10, 3, 10)

Mesh = Instance.new("CylinderMesh", ConsoleBase)

Weld = Instance.new("Weld", ConsoleBase)

Weld.Part0 = FloorCenter

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 2, 0)

 

for i = 0, 360, 360 / 6 do

    ConsoleArm = Floor:Clone()

    ConsoleArm.Parent = Interior

    ConsoleArm.Name = "Console Arm"

    ConsoleArm.BrickColor = BrickColor.new("Black")

    ConsoleArm.Size = Vector3.new(1, 2, 3)

    Weld = Instance.new("Weld", ConsoleArm)

    Weld.Part0 = ConsoleBase

    Weld.Part1 = Weld.Parent

    Weld.C0 = CFrame.new(math.sin(math.rad(i)) * 3.5, 2.5, math.cos(math.rad(i)) * 3.5) * CFrame.fromEulerAnglesXYZ(0, math.rad(i + 180), 0)

end

 

ConsoleSupport = ConsoleBase:Clone()

ConsoleSupport.Parent = Interior

ConsoleSupport.Name = "Console Support"

ConsoleSupport.Size = Vector3.new(4.25, 2, 4.25)

Weld = Instance.new("Weld", ConsoleSupport)

Weld.Part0 = ConsoleBase

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 2.5, 0)

 

TeleportTelevision = Wall:Clone()

TeleportTelevision.Parent = Interior

TeleportTelevision.Name = "Teleport Television"

TeleportTelevision.BrickColor = BrickColor.new("Really black")

TeleportTelevision.Size = Vector3.new(1.5, 1.5, 1.5)

Mesh = Instance.new("SpecialMesh", TeleportTelevision)

Mesh.MeshType = "FileMesh"

Mesh.MeshId = "http://www.roblox.com/Asset/?id=11641931"

Mesh.TextureId = "http://www.roblox.com/Asset/?id=11641912"

Weld = Instance.new("Weld", TeleportTelevision)

Weld.Part0 = ConsoleBase

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(-3.35, 2.15, 0.25) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)

 

TeleportTelevisionScreen = Wall:Clone()

TeleportTelevisionScreen.Parent = Interior

TeleportTelevisionScreen.Name = "Teleport Television Screen"

TeleportTelevisionScreen.BrickColor = BrickColor.new("Really black")

TeleportTelevisionScreen.Size = Vector3.new(1.15, 1, 0.5)

Weld = Instance.new("Weld", TeleportTelevisionScreen)

Weld.Part0 = TeleportTelevision

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 0, -0.35)

coroutine.wrap(function()

    while true do

        if TeleportTelevisionScreen:FindFirstChild("Weld") == nil or TeleportPlayer == nil then

            TeleportTelevisionScreen.BrickColor = BrickColor.new("Really black")

            TeleportTelevisionScreen.Reflectance = 0.1

        else

            TeleportTelevisionScreen.BrickColor = BrickColor.random()

            TeleportTelevisionScreen.Reflectance = math.random(0, 100) / 100

            wait(math.random(100, 1000) / 7500)

        end

        wait()

    end

end)()

 

TeleportKeypad = Wall:Clone()

TeleportKeypad.Parent = Interior

TeleportKeypad.Name = "Teleport Keypad"

TeleportKeypad.BrickColor = BrickColor.new("Dark stone grey")

TeleportKeypad.Size = Vector3.new(1, 1, 1)

Mesh = Instance.new("SpecialMesh", TeleportKeypad)

Mesh.MeshType = "Wedge"

Weld = Instance.new("Weld", TeleportKeypad)

Weld.Part0 = TeleportTelevision

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(1.25, -0.15, -0.5)

 

for x = -0.4, 0.4, 0.4 do

    for y = -0.4, 0.4, 0.26 do

        if not (y == -0.4 and x ~= 0) then

            TeleportKey = Wall:Clone()

            TeleportKey.Parent = Interior

            TeleportKey.Name = "Teleport Key"

            TeleportKey.BrickColor = BrickColor.new("Dark stone grey")

            TeleportKey.Size = Vector3.new(0.2, 0.2, 0.2)

            Mesh = Instance.new("SpecialMesh", TeleportKeypad)

            Mesh.MeshType = "Wedge"

            Weld = Instance.new("Weld", TeleportKey)

            Weld.Part0 = TeleportKeypad

            Weld.Part1 = Weld.Parent

            Weld.C0 = CFrame.new(x * 0.9, y * 0.9, y) * CFrame.fromEulerAnglesXYZ(math.rad(45), 0, 0)

        end

    end

end

 

RadarTelevision = Wall:Clone()

RadarTelevision.Parent = Interior

RadarTelevision.Name = "Radar Television"

RadarTelevision.BrickColor = BrickColor.new("Really black")

RadarTelevision.Size = Vector3.new(2, 2, 1.5)

Mesh = Instance.new("SpecialMesh", RadarTelevision)

Mesh.MeshType = "FileMesh"

Mesh.MeshId = "http://www.roblox.com/Asset/?id=11641883"

Mesh.TextureId = "http://www.roblox.com/Asset/?id=11641873"

Weld = Instance.new("Weld", RadarTelevision)

Weld.Part0 = ConsoleBase

Weld.Part1 = Weld.Parent

rad = math.rad(360 / 6 / 2)

Weld.C0 = CFrame.new(math.sin(rad) * 3, 2.5, math.cos(rad) * 3) * CFrame.fromEulerAnglesXYZ(0, rad + math.rad(180), 0)

 

RadarTelevisionScreen = Wall:Clone()

RadarTelevisionScreen.Parent = Interior

RadarTelevisionScreen.Name = "Radar Television Screen"

RadarTelevisionScreen.BrickColor = BrickColor.new("Really black")

RadarTelevisionScreen.Size = Vector3.new(1.85, 0.8, 1.35)

Weld = Instance.new("Weld", RadarTelevisionScreen)

Weld.Part0 = RadarTelevision

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, -0.1, 0)

coroutine.wrap(function()

    while true do

        if RadarTelevisionScreen:FindFirstChild("Weld") == nil or RadarPlayer == nil then

            RadarTelevisionScreen.BrickColor = BrickColor.new("Really black")

            RadarTelevisionScreen.Reflectance = 0.1

        else

            RadarTelevisionScreen.BrickColor = BrickColor.random()

            RadarTelevisionScreen.Reflectance = math.random(0, 100) / 100

            wait(math.random(100, 1000) / 7500)

        end

        wait()

    end

end)()

 

FlyMonitorBase = Wall:Clone()

FlyMonitorBase.Parent = Interior

FlyMonitorBase.Name = "Fly Monitor Base"

FlyMonitorBase.BrickColor = BrickColor.new("Dark stone grey")

FlyMonitorBase.Size = Vector3.new(1.5, 0.25, 1)

Weld = Instance.new("Weld", FlyMonitorBase)

Weld.Part0 = ConsoleBase

Weld.Part1 = Weld.Parent

rad = math.rad(360 / 6 / 2) + math.rad(360 / 6 * 5)

Weld.C0 = CFrame.new(math.sin(rad) * 3, 1.625, math.cos(rad) * 3.25) * CFrame.fromEulerAnglesXYZ(0, rad + math.rad(180), 0)

 

FlyMonitorStand = Wall:Clone()

FlyMonitorStand.Parent = Interior

FlyMonitorStand.Name = "Fly Monitor Stand"

FlyMonitorStand.BrickColor = BrickColor.new("Dark stone grey")

FlyMonitorStand.Size = Vector3.new(0.5, 1, 0.2)

Weld = Instance.new("Weld", FlyMonitorStand)

Weld.Part0 = FlyMonitorBase

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 0.625, 0.25)

 

FlyMonitorScreenBack = Wall:Clone()

FlyMonitorScreenBack.Parent = Interior

FlyMonitorScreenBack.Name = "Fly Monitor Screen Back"

FlyMonitorScreenBack.BrickColor = BrickColor.new("Dark stone grey")

FlyMonitorScreenBack.Size = Vector3.new(2.5, 2, 0.2)

Weld = Instance.new("Weld", FlyMonitorScreenBack)

Weld.Part0 = FlyMonitorStand

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 1.25, -0.2)

 

FlyMonitorScreenEdge = Wall:Clone()

FlyMonitorScreenEdge.Parent = Interior

FlyMonitorScreenEdge.Name = "Fly Monitor Screen Edge"

FlyMonitorScreenEdge.BrickColor = BrickColor.new("Dark stone grey")

FlyMonitorScreenEdge.Size = Vector3.new(2.5, 0.2, 0.2)

Weld = Instance.new("Weld", FlyMonitorScreenEdge)

Weld.Part0 = FlyMonitorScreenBack

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 0.9, -0.2)

 

FlyMonitorScreenEdge = Wall:Clone()

FlyMonitorScreenEdge.Parent = Interior

FlyMonitorScreenEdge.Name = "Fly Monitor Screen Edge"

FlyMonitorScreenEdge.BrickColor = BrickColor.new("Dark stone grey")

FlyMonitorScreenEdge.Size = Vector3.new(2.5, 0.2, 0.2)

Weld = Instance.new("Weld", FlyMonitorScreenEdge)

Weld.Part0 = FlyMonitorScreenBack

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, -0.9, -0.2)

 

FlyMonitorScreenEdge = Wall:Clone()

FlyMonitorScreenEdge.Parent = Interior

FlyMonitorScreenEdge.Name = "Fly Monitor Screen Edge"

FlyMonitorScreenEdge.BrickColor = BrickColor.new("Dark stone grey")

FlyMonitorScreenEdge.Size = Vector3.new(0.2, 2, 0.2)

Weld = Instance.new("Weld", FlyMonitorScreenEdge)

Weld.Part0 = FlyMonitorScreenBack

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(1.15, 0, -0.2)

 

FlyMonitorScreenEdge = Wall:Clone()

FlyMonitorScreenEdge.Parent = Interior

FlyMonitorScreenEdge.Name = "Fly Monitor Screen Edge"

FlyMonitorScreenEdge.BrickColor = BrickColor.new("Dark stone grey")

FlyMonitorScreenEdge.Size = Vector3.new(0.2, 2, 0.2)

Weld = Instance.new("Weld", FlyMonitorScreenEdge)

Weld.Part0 = FlyMonitorScreenBack

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(-1.15, 0, -0.2)

 

FlyMonitorScreen = Wall:Clone()

FlyMonitorScreen.Parent = Interior

FlyMonitorScreen.Name = "Fly Monitor Screen"

FlyMonitorScreen.BrickColor = BrickColor.new("Really black")

FlyMonitorScreen.Size = Vector3.new(2.4, 1.6, 0.2)

Weld = Instance.new("Weld", FlyMonitorScreen)

Weld.Part0 = FlyMonitorScreenBack

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 0, -0.1)

coroutine.wrap(function()

    while true do

        if FlyMonitorScreen:FindFirstChild("Weld") == nil or FlyPlayer == nil then

            FlyMonitorScreen.BrickColor = BrickColor.new("Really black")

            FlyMonitorScreen.Reflectance = 0.1

        else

            FlyMonitorScreen.BrickColor = BrickColor.random()

            FlyMonitorScreen.Reflectance = math.random(0, 100) / 100

            wait(math.random(100, 1000) / 7500)

        end

        wait()

    end

end)()

 

WeaponStand = Wall:Clone()

WeaponStand.Parent = Interior

WeaponStand.Name = "Weapon Stand"

WeaponStand.Size = Vector3.new(0.3, 1.5, 0.2)

WeaponStand.BrickColor = BrickColor.new("Black")

Weld = Instance.new("Weld", WeaponStand)

Weld.Part0 = ConsoleBase

Weld.Part1 = Weld.Parent

rad = math.rad(360 / 6 / 2) + math.rad(360 / 6 * 1)

Weld.C0 = CFrame.new(math.sin(rad) * 4.625, 2.25, math.cos(rad) * 6) * CFrame.fromEulerAnglesXYZ(0, rad, 0)

 

WeaponBinoculars = Wall:Clone()

WeaponBinoculars.Parent = Interior

WeaponBinoculars.Name = "Weapon Binoculars"

WeaponBinoculars.Parent = Interior

WeaponBinoculars.Size = Vector3.new(2, 0.5, 1.5)

Mesh = Instance.new("SpecialMesh", WeaponBinoculars)

Mesh.MeshType = "FileMesh"

Mesh.MeshId = "http://www.roblox.com/Asset/?id=27039535"

Mesh.TextureId = "http://www.roblox.com/Asset/?id=27039641"

Mesh.Scale = Vector3.new(0.5, 0.5, 0.5)

Weld = Instance.new("Weld", WeaponBinoculars)

Weld.Part0 = ConsoleBase

Weld.Part1 = Weld.Parent

rad = math.rad(360 / 6 / 2) + math.rad(360 / 6 * 1)

Weld.C0 = CFrame.new(math.sin(rad) * 4.75, 2.75, math.cos(rad) * 6) * CFrame.fromEulerAnglesXYZ(0, rad, 0)

 

WeaponJoystickBase = Wall:Clone()

WeaponJoystickBase.Parent = Interior

WeaponJoystickBase.Name = "Weapon Joystick Base"

WeaponJoystickBase.BrickColor = BrickColor.new("Really black")

WeaponJoystickBase.Size = Vector3.new(0.8, 0.2, 0.8)

Weld = Instance.new("Weld", WeaponJoystickBase)

Weld.Part0 = WeaponStand

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(1.25, -0.65, -0.3)

 

WeaponJoystick = Wall:Clone()

WeaponJoystick.Parent = Interior

WeaponJoystick.Name = "Weapon Joystick"

WeaponJoystick.BrickColor = BrickColor.new("Really black")

WeaponJoystick.Size = Vector3.new(0.3, 1, 0.3)

Mesh = Instance.new("CylinderMesh", WeaponJoystick)

Weld = Instance.new("Weld", WeaponJoystick)

Weld.Part0 = WeaponJoystickBase

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 0.6, 0)

 

WeaponJoystickButton = WeaponJoystick:Clone()

WeaponJoystickButton.Parent = Interior

WeaponJoystickButton.Name = "Weapon Joystick Button"

WeaponJoystickButton.BrickColor = BrickColor.new("Really red")

WeaponJoystickButton.Size = Vector3.new(0.2, 0.2, 0.2)

Weld = Instance.new("Weld", WeaponJoystickButton)

Weld.Part0 = WeaponJoystickBase

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(-0.25, 0.2, 0.25)

 

WeaponJoystickBase2 = Wall:Clone()

WeaponJoystickBase2.Parent = Interior

WeaponJoystickBase2.Name = "Weapon Joystick Base"

WeaponJoystickBase2.BrickColor = BrickColor.new("Really black")

WeaponJoystickBase2.Size = Vector3.new(0.8, 0.2, 0.8)

Weld = Instance.new("Weld", WeaponJoystickBase2)

Weld.Part0 = WeaponStand

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(-1.25, -0.65, -0.3)

 

WeaponJoystick2 = Wall:Clone()

WeaponJoystick2.Parent = Interior

WeaponJoystick2.Name = "Weapon Joystick"

WeaponJoystick2.BrickColor = BrickColor.new("Really black")

WeaponJoystick2.Size = Vector3.new(0.3, 1, 0.3)

Mesh = Instance.new("CylinderMesh", WeaponJoystick2)

Weld = Instance.new("Weld", WeaponJoystick2)

Weld.Part0 = WeaponJoystickBase2

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 0.6, 0)

 

WeaponJoystickButton2 = WeaponJoystick2:Clone()

WeaponJoystickButton2.Parent = Interior

WeaponJoystickButton2.Name = "Weapon Joystick Button"

WeaponJoystickButton2.BrickColor = BrickColor.new("Really red")

WeaponJoystickButton2.Size = Vector3.new(0.2, 0.2, 0.2)

Weld = Instance.new("Weld", WeaponJoystickButton2)

Weld.Part0 = WeaponJoystickBase2

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0.25, 0.2, 0.25)

 

EnergyTelevision = Wall:Clone()

EnergyTelevision.Parent = Interior

EnergyTelevision.Name = "Energy Television"

EnergyTelevision.BrickColor = BrickColor.new("Really black")

EnergyTelevision.Size = Vector3.new(2.25, 2, 1)

Mesh = Instance.new("SpecialMesh", EnergyTelevision)

Mesh.MeshType = "FileMesh"

Mesh.Scale = Vector3.new(1.5, 1.5, 0.5)

Mesh.MeshId = "http://www.roblox.com/Asset/?id=11641931"

Mesh.TextureId = "http://www.roblox.com/Asset/?id=11641912"

Mesh.VertexColor = Vector3.new(0.5, 0.5, 0.5)

Weld = Instance.new("Weld", EnergyTelevision)

Weld.Part0 = ConsoleBase

Weld.Part1 = Weld.Parent

rad = math.rad(360 / 6 / 2) + math.rad(360 / 6 * 3)

Weld.C0 = CFrame.new(math.sin(rad) * 3.35, 2.45, math.cos(rad) * 3.3) * CFrame.fromEulerAnglesXYZ(0, rad + math.rad(180), 0)

 

EnergyTelevisionScreen = Wall:Clone()

EnergyTelevisionScreen.Parent = Interior

EnergyTelevisionScreen.Name = "Energy Television Screen"

EnergyTelevisionScreen.BrickColor = BrickColor.new("Really black")

EnergyTelevisionScreen.Size = Vector3.new(1.5, 1.35, 0.2)

Weld = Instance.new("Weld", EnergyTelevisionScreen)

Weld.Part0 = EnergyTelevision

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 0, -0.3)

coroutine.wrap(function()

    while true do

        if EnergyTelevisionScreen:FindFirstChild("Weld") == nil or EnergyPlayer == nil then

            EnergyTelevisionScreen.BrickColor = BrickColor.new("Really black")

            EnergyTelevisionScreen.Reflectance = 0.1

        else

            EnergyTelevisionScreen.BrickColor = BrickColor.random()

            EnergyTelevisionScreen.Reflectance = math.random(0, 100) / 100

            wait(math.random(100, 1000) / 7500)

        end

        wait()

    end

end)()

 

ConsoleGlass = ConsoleBase:Clone()

ConsoleGlass.Parent = Interior

ConsoleGlass.Name = "Console Glass"

ConsoleGlass.Transparency = 0.3

ConsoleGlass.BrickColor = BrickColor.new("Institutional white")

ConsoleGlass.Size = Vector3.new(3.75, 10, 3.75)

Weld = Instance.new("Weld", ConsoleGlass)

Weld.Part0 = ConsoleSupport

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 6, 0)

 

ConsoleTop = ConsoleBase:Clone()

ConsoleTop.Parent = Interior

ConsoleTop.Name = "Console Top"

ConsoleTop.BrickColor = BrickColor.new("Dark stone grey")

ConsoleTop.Size = Vector3.new(5, 6, 5)

Weld = Instance.new("Weld", ConsoleTop)

Weld.Part0 = ConsoleGlass

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 8, 0)

 

for i = 1, 6 / 1.5 do

    ConsoleRing = Wall:Clone()

    ConsoleRing.Parent = Interior

    ConsoleRing.Name = "Console Ring"

    ConsoleRing.Size = Vector3.new(6, 1, 6)

    Mesh = Instance.new("SpecialMesh", ConsoleRing)

    Mesh.MeshType = "Sphere"

    Weld = Instance.new("Weld", ConsoleRing)

    Weld.Part0 = ConsoleTop

    Weld.Part1 = Weld.Parent

    Weld.C0 = CFrame.new(0, (i * 1.5) - 6 / 1.625, 0)

end

 

ConsoleAnchor = ConsoleBase:Clone()

ConsoleAnchor.Parent = Interior

ConsoleAnchor.Name = "Console Anchor"

ConsoleAnchor.BrickColor = BrickColor.new("Medium stone grey")

ConsoleAnchor.Size = Vector3.new(12.5, 10, 12.5)

Weld = Instance.new("Weld", ConsoleAnchor)

Weld.Part0 = ConsoleTop

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 8, 0)

 

for i = 45, 360, 360 / 4 do

    ConsoleAnchorSupport = Wall:Clone()

    ConsoleAnchorSupport.Parent = Interior

    ConsoleAnchorSupport.Name = "Console Anchor Support"

    ConsoleAnchorSupport.BrickColor = BrickColor.new("Black")

    ConsoleAnchorSupport.Size = Vector3.new(2, 50, 4)

    Weld = Instance.new("Weld", ConsoleAnchorSupport)

    Weld.Part0 = ConsoleAnchor

    Weld.Part1 = Weld.Parent

    Weld.C0 = CFrame.new(math.sin(math.rad(i)) * 20, -15, math.cos(math.rad(i)) * 20) * CFrame.fromEulerAnglesXYZ(0, math.rad(i), 0)

    Weld.C1 = CFrame.fromEulerAnglesXYZ(math.rad(45), 0, 0)

end

 

PowerCore = ConsoleBase:Clone()

PowerCore.Parent = Interior

PowerCore.Name = "Power Core"

PowerCore.BrickColor = BrickColor.new("Bright blue")

PowerCore.Transparency = 0.325

PowerCore.Size = Vector3.new(2, 7, 2)

Weld = Instance.new("Weld", PowerCore)

Weld.Part0 = ConsoleGlass

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 0, 0)

 

PowerCoreHolder = PowerCore:Clone()

PowerCoreHolder.Parent = Interior

PowerCoreHolder.Name = "Power Core Holder"

PowerCoreHolder.BrickColor = BrickColor.new("Bright blue")

PowerCoreHolder.Size = Vector3.new(1, 1.75, 1)

Weld = Instance.new("Weld", PowerCoreHolder)

Weld.Part0 = ConsoleGlass

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 4.375, 0)

 

PowerCoreHolder = PowerCoreHolder:Clone()

PowerCoreHolder.Parent = Interior

Weld = Instance.new("Weld", PowerCoreHolder)

Weld.Part0 = ConsoleGlass

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, -4.375, 0)

 

for i = 0, 360, 360 / 4 do

    PowerRod = PowerCore:Clone()

    PowerRod.Parent = Interior

    PowerRod.Name = "Power Rod 1"

    PowerRod.Size = Vector3.new(0.5, 5, 0.5)

    Weld = Instance.new("Weld", PowerRod)

    Weld.Part0 = ConsoleGlass

    Weld.Part1 = Weld.Parent

    Weld.C0 = CFrame.new(math.sin(math.rad(i)) * 1.5, 2, math.cos(math.rad(i)) * 1.5)

end

 

for i = 45, 360, 360 / 4 do

    PowerRod = PowerCore:Clone()

    PowerRod.Parent = Interior

    PowerRod.Name = "Power Rod 2"

    PowerRod.Size = Vector3.new(0.5, 5, 0.5)

    Weld = Instance.new("Weld", PowerRod)

    Weld.Part0 = ConsoleGlass

    Weld.Part1 = Weld.Parent

    Weld.C0 = CFrame.new(math.sin(math.rad(i)) * 1.5, -2, math.cos(math.rad(i)) * 1.5)

end

 

Seat = Instance.new("Seat", Interior)

Seat.Name = "Radar Seat"

Seat.TopSurface = 0

Seat.BottomSurface = 0

Seat.Locked = true

Seat.BrickColor = BrickColor.new("Dark stone grey")

Seat.formFactor = "Custom"

Seat.Size = Vector3.new(1, 1, 1)

Weld = Instance.new("Weld", Seat)

Weld.Part0 = FloorCenter

Weld.Part1 = Weld.Parent

rad = math.rad(360 / 6 / 2)

Weld.C0 = CFrame.new(math.sin(rad) * 6, 1, math.cos(rad) * 6) * CFrame.fromEulerAnglesXYZ(0, rad, 0)

 

Seat = Seat:Clone()

Seat.Parent = Interior

Seat.Name = "Weapon Seat"

Weld = Instance.new("Weld", Seat)

Weld.Part0 = FloorCenter

Weld.Part1 = Weld.Parent

rad = math.rad(360 / 6 / 2) + math.rad(360 / 6 * 1)

Weld.C0 = CFrame.new(math.sin(rad) * 6, 1, math.cos(rad) * 6) * CFrame.fromEulerAnglesXYZ(0, rad, 0)

 

Seat = Seat:Clone()

Seat.Parent = Interior

Seat.Name = "Repair Seat"

Weld = Instance.new("Weld", Seat)

Weld.Part0 = FloorCenter

Weld.Part1 = Weld.Parent

rad = math.rad(360 / 6 / 2) + math.rad(360 / 6 * 2)

Weld.C0 = CFrame.new(math.sin(rad) * 6, 1, math.cos(rad) * 6) * CFrame.fromEulerAnglesXYZ(0, rad, 0)

 

Seat = Seat:Clone()

Seat.Parent = Interior

Seat.Name = "Energy Seat"

Weld = Instance.new("Weld", Seat)

Weld.Part0 = FloorCenter

Weld.Part1 = Weld.Parent

rad = math.rad(360 / 6 / 2) + math.rad(360 / 6 * 3)

Weld.C0 = CFrame.new(math.sin(rad) * 6, 1, math.cos(rad) * 6) * CFrame.fromEulerAnglesXYZ(0, rad, 0)

 

Seat = Seat:Clone()

Seat.Parent = Interior

Seat.Name = "Teleport Seat"

Weld = Instance.new("Weld", Seat)

Weld.Part0 = FloorCenter

Weld.Part1 = Weld.Parent

rad = math.rad(360 / 6 / 2) + math.rad(360 / 6 * 4)

Weld.C0 = CFrame.new(math.sin(rad) * 6, 1, math.cos(rad) * 6) * CFrame.fromEulerAnglesXYZ(0, rad, 0)

 

Seat = Seat:Clone()

Seat.Parent = Interior

Seat.Name = "Fly Seat"

Weld = Instance.new("Weld", Seat)

Weld.Part0 = FloorCenter

Weld.Part1 = Weld.Parent

rad = math.rad(360 / 6 / 2) + math.rad(360 / 6 * 5)

Weld.C0 = CFrame.new(math.sin(rad) * 6, 1, math.cos(rad) * 6) * CFrame.fromEulerAnglesXYZ(0, rad, 0)

 

Teleport = Wall:Clone()

Teleport.Parent = Interior

Teleport.Name = "Teleport"

Teleport.Size = Vector3.new(2, 2, 0.2)

Teleport.Transparency = 1

Weld = Instance.new("Weld", Teleport)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 6.5, 47.5)

Teleport.Touched:connect(function(Hit)

    pcall(function()

        if DoorDebounce == false or DoorOpen == false then return end

        if Hit.Parent:FindFirstChild("Torso") ~= nil and Hit.Parent:FindFirstChild("Humanoid") ~= nil then

            Position = Exterior.Teleport.CFrame * CFrame.new(0, 0, -2)

            while Hit.Parent.Torso.CFrame ~= Position do

                Hit.Parent.Torso.CFrame = Position

            end

            DoorDebounce = false

            coroutine.wrap(function()

                wait(1)

                DoorDebounce = true

            end)()

        end

    end)

end)

 

for i = 0, 1, 1 / 20 do

    Shadow = Wall:Clone()

    Shadow.Parent = Interior

    Shadow.Name = "Shadow"

    Shadow.Transparency = i

    Shadow.BrickColor = BrickColor.new("Really black")

    Shadow.Size = Vector3.new(5, 7, 0.2)

    Shadow.CanCollide = false

    Weld = Instance.new("Weld", Shadow)

    Weld.Part0 = Base

    Weld.Part1 = Weld.Parent

    Weld.C0 = CFrame.new(0, 6.5, 48.5 - (0.2 * (i * 20)))

end

 

Wall = Wall:Clone()

Wall.Parent = Interior

Wall.BrickColor = BrickColor.new("White")

Wall.Size = Vector3.new(0.5, 7, 4)

Weld = Instance.new("Weld", Wall)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(2.75, 6.5, 47)

 

Wall = Wall:Clone()

Wall.Parent = Interior

Wall.Size = Vector3.new(0.5, 7, 4)

Weld = Instance.new("Weld", Wall)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(-2.75, 6.5, 47)

 

Corner = Wall:Clone()

Corner.Parent = Interior

Corner.Name = "Corner"

Corner.BrickColor = BrickColor.new("Medium stone grey")

Corner.Size = Vector3.new(1, 7, 1)

Weld = Instance.new("Weld", Corner)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(-3, 6.5, 44.5)

 

Corner = Corner:Clone()

Corner.Parent = Interior

Weld = Instance.new("Weld", Corner)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(3, 6.5, 44.5)

 

Door = Wall:Clone()

Door.Parent = Interior

Door.Name = "Door"

Door.BrickColor = BrickColor.new("White")

Door.Size = Vector3.new(5, 7, 0.5)

Motor = Instance.new("Motor", Door)

Motor.Part0 = Base

Motor.Part1 = Motor.Parent

Motor.C0 = CFrame.new(-2.5, 0, 44.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)

Motor.C1 = CFrame.new(-2.5, -6.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)

Motor.MaxVelocity = 0.1

coroutine.wrap(function()

    while Door.Parent ~= nil do

        if DoorOpen == false then

            pcall(function() Exterior.Door.Motor.DesiredAngle = 0 end)

            pcall(function() Interior.Door.Motor.DesiredAngle = 0 end)

        else

            pcall(function() Exterior.Door.Motor.DesiredAngle = math.rad(90) end)

            pcall(function() Interior.Door.Motor.DesiredAngle = math.rad(90) end)

        end

        wait()

    end

end)()

DoorLockedBool1 = Instance.new("BoolValue", Door)

DoorLockedBool1.Parent = Door

DoorLockedBool1.Name = "DoorLocked"

DoorLockedBool1.Value = false

DoorLockedBool1.Changed:connect(function(Property)

    DoorLocked = DoorLockedBool1.Value

end)

coroutine.wrap(function() while true do DoorLockedBool1.Value = DoorLocked wait(0.25) end end)()

DoorOpenBool1 = Instance.new("BoolValue", Door)

DoorOpenBool1.Parent = Door

DoorOpenBool1.Name = "DoorOpen"

DoorOpenBool1.Value = false

DoorOpenBool1.Changed:connect(function(Property)

    DoorOpen = DoorOpenBool1.Value

    if DoorOpen == true then DoorLocked = false end

end)

coroutine.wrap(function() while true do DoorOpenBool1.Value = DoorOpen wait(0.25) end end)()

 

Sign = Wall:Clone()

Sign.Parent = Interior

Sign.Name = "Sign"

Sign.Size = Vector3.new(2, 2, 0.2)

Sign.BrickColor = BrickColor.new("Medium stone grey")

Decal = Instance.new("Decal", Sign)

Decal.Texture = "http://www.roblox.com/Asset/?id=52411167"

Decal.Face = "Front"

Weld = Instance.new("Weld", Sign)

Weld.Part0 = Door

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 1.75, -0.3)

 

DoorButton = Wall:Clone()

DoorButton.Parent = Interior

DoorButton.Name = "Door Button"

DoorButton.BrickColor = BrickColor.new("Really red")

DoorButton.Size = Vector3.new(0.45, 0.45, 0.2)

Weld = Instance.new("Weld", DoorButton)

Weld.Part0 = Corner

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 0, -0.6)

ClickDetector = Instance.new("ClickDetector", DoorButton)

ClickDetector.MaxActivationDistance = 12

ClickDetector.MouseClick:connect(function()

    if (DoorLocked or not TeleportReady) and not DoorOpen then return end

    if DoorOpen == true then

        DoorOpen = false

    else

        DoorOpen = true

    end

end)

coroutine.wrap(function()

    while DoorButton.Parent ~= nil do

        if DoorOpen == false then

            DoorButton.BrickColor = BrickColor.new("Really red")

        else

            DoorButton.BrickColor = BrickColor.new("Bright green")

        end

        wait()

    end

end)()

 

LockButton = Wall:Clone()

LockButton.Parent = Interior

LockButton.Name = "Door Button"

LockButton.BrickColor = BrickColor.new("Really red")

LockButton.Size = Vector3.new(0.45, 0.45, 0.2)

Weld = Instance.new("Weld", LockButton)

Weld.Part0 = Corner

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 0.55, -0.6)

ClickDetector = Instance.new("ClickDetector", LockButton)

ClickDetector.MaxActivationDistance = 12

ClickDetector.MouseClick:connect(function()

    if DoorLocked == true then

        DoorLocked = false

    else

        DoorLocked = true

    end

end)

coroutine.wrap(function()

    while LockButton.Parent ~= nil do

        if DoorLocked == false then

            LockButton.BrickColor = BrickColor.new("Bright green")

        else

            LockButton.BrickColor = BrickColor.new("New Yeller")

        end

        wait()

    end

end)()

 

Top = Wall:Clone()

Top.Parent = Interior

Top.Name = "Top 1"

Top.BrickColor = BrickColor.new("Medium stone grey")

Top.Size = Vector3.new(7, 0.2, 6)

Weld = Instance.new("Weld", Top)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 10.1, 47)

 

Top = Floor:Clone()

Top.Parent = Interior

Top.Name = "Top 2"

Top.BrickColor = BrickColor.new("Medium stone grey")

Top.Size = Vector3.new(7, 0.5, 3)

Weld = Instance.new("Weld", Top)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 10.45, 47)

 

-- Exterior.

 

Base = Wall:Clone()

Base.Parent = Exterior

Base.Name = "Base"

Base.BrickColor = BrickColor.new("Medium stone grey")

Base.Size = Vector3.new(7, 0.2, 7)

 

Wall = Base:Clone()

Wall.Parent = Exterior

Wall.Name = "Wall"

Wall.BrickColor = BrickColor.new("White")

Wall.Size = Vector3.new(5, 7, 0.5)

Weld = Instance.new("Weld", Wall)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 3.6, 2.75)

 

Door = Wall:Clone()

Door.Parent = Exterior

Door.Name = "Door"

Door.Size = Vector3.new(5, 7, 0.5)

Motor = Instance.new("Motor", Door)

Motor.Part0 = Base

Motor.Part1 = Motor.Parent

Motor.C0 = CFrame.new(-2.5, 0, -2.75) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)

Motor.C1 = CFrame.new(-2.5, -3.6, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)

Motor.MaxVelocity = 0.1

DoorLockedBool2 = Instance.new("BoolValue", Door)

DoorLockedBool2.Parent = Door

DoorLockedBool2.Name = "DoorLocked"

DoorLockedBool2.Value = false

DoorLockedBool2.Changed:connect(function(Property)

    DoorLocked = DoorLockedBool2.Value

end)

coroutine.wrap(function() while true do DoorLockedBool2.Value = DoorLocked wait(0.25) end end)()

DoorOpenBool2 = Instance.new("BoolValue", Door)

DoorOpenBool2.Parent = Door

DoorOpenBool2.Name = "DoorOpen"

DoorOpenBool2.Value = false

DoorOpenBool2.Changed:connect(function(Property)

    DoorOpen = DoorOpenBool2.Value

    if DoorOpen == true then DoorLocked = false end

end)

coroutine.wrap(function() while true do DoorOpenBool2.Value = DoorOpen wait(0.25) end end)()

 

DoorHandleHolder = Wall:Clone()

DoorHandleHolder.Parent = Exterior

DoorHandleHolder.Name = "Door Handle Holder"

DoorHandleHolder.BrickColor = BrickColor.new("Medium stone grey")

DoorHandleHolder.Size = Vector3.new(0.35, 0.2, 0.2)

Weld = Instance.new("Weld", DoorHandleHolder)

Weld.Part0 = Door

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(1.65, 0.5, -0.3)

 

DoorHandleHolder = DoorHandleHolder:Clone()

DoorHandleHolder.Parent = Exterior

Weld = Instance.new("Weld", DoorHandleHolder)

Weld.Part0 = Door

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(1.65, 0, -0.3)

 

DoorHandle = DoorHandleHolder:Clone()

DoorHandle.Parent = Exterior

DoorHandle.Name = "Door Handle"

DoorHandle.Size = Vector3.new(0.35, 0.7, 0.2)

Weld = Instance.new("Weld", DoorHandle)

Weld.Part0 = Door

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(1.65, 0.25, -0.5)

ClickDetector = Instance.new("ClickDetector", DoorHandle)

ClickDetector.MaxActivationDistance = 7

ClickDetector.MouseClick:connect(function()

    if (DoorLocked or not TeleportReady) and not DoorOpen then return end

    if DoorHandle:FindFirstChild("Weld") == nil then return end

    if DoorOpen then

        DoorOpen = false

    else

        DoorOpen = true

    end

end)

 

Wall = Wall:Clone()

Wall.Parent = Exterior

Wall.Size = Vector3.new(0.5, 7, 5)

Weld = Instance.new("Weld", Wall)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(2.75, 3.6, 0)

 

Wall = Wall:Clone()

Wall.Parent = Exterior

Wall.Size = Vector3.new(0.5, 7, 5)

Weld = Instance.new("Weld", Wall)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(-2.75, 3.6, 0)

 

Corner = Wall:Clone()

Corner.Parent = Exterior

Corner.Name = "Corner"

Corner.BrickColor = BrickColor.new("Medium stone grey")

Corner.Size = Vector3.new(1, 7, 1)

Weld = Instance.new("Weld", Corner)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(3, 3.6, 3)

 

Corner = Corner:Clone()

Corner.Parent = Exterior

Weld = Instance.new("Weld", Corner)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(-3, 3.6, 3)

 

Corner = Corner:Clone()

Corner.Parent = Exterior

Weld = Instance.new("Weld", Corner)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(-3, 3.6, -3)

 

Corner = Corner:Clone()

Corner.Parent = Exterior

Weld = Instance.new("Weld", Corner)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(3, 3.6, -3)

 

Top = Base:Clone()

Top.Parent = Exterior

Top.Name = "Top"

Weld = Instance.new("Weld", Top)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 7.2, 0)

 

LightBase = Wall:Clone()

LightBase.Parent = Exterior

LightBase.Name = "Light Base"

LightBase.BrickColor = BrickColor.new("Dark stone grey")

LightBase.Size = Vector3.new(1, 0.5, 1)

Mesh = Instance.new("CylinderMesh", LightBase)

Weld = Instance.new("Weld", LightBase)

Weld.Part0 = Top

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 0.35, 0)

 

Light = LightBase:Clone()

Light.Parent = Exterior

Light.Name = "Light"

Light.BrickColor = BrickColor.new("Bright blue")

Light.Transparency = 0.5

Light.Size = Vector3.new(1, 1, 1)

Weld = Instance.new("Weld", Light)

Weld.Part0 = LightBase

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 0.75, 0)

 

LightTop = LightBase:Clone()

LightTop.Parent = Exterior

LightTop.Name = "Light Top"

Weld = Instance.new("Weld", LightTop)

Weld.Part0 = Light

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 0.75, 0)

 

Sign = Top:Clone()

Sign.Parent = Exterior

Sign.Name = "Sign"

Sign.Size = Vector3.new(2, 2, 0.2)

Decal = Instance.new("Decal", Sign)

Decal.Texture = "http://www.roblox.com/Asset/?id=49400995"

Decal.Face = "Front"

Weld = Instance.new("Weld", Sign)

Weld.Part0 = Door

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 1.75, -0.3)

 

Sign = Sign:Clone()

Sign.Parent = Exterior

Weld = Instance.new("Weld", Sign)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 5.4, 3.1) * CFrame.fromEulerAnglesXYZ(0, math.rad(180), 0)

 

Sign = Sign:Clone()

Sign.Parent = Exterior

Weld = Instance.new("Weld", Sign)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(-3.1, 5.4, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)

 

Sign = Sign:Clone()

Sign.Parent = Exterior

Weld = Instance.new("Weld", Sign)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(3.1, 5.4, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)

 

Teleport = Wall:Clone()

Teleport.Parent = Exterior

Teleport.Name = "Teleport"

Teleport.Size = Vector3.new(2, 2, 0.2)

Teleport.Transparency = 1

Weld = Instance.new("Weld", Teleport)

Weld.Part0 = Base

Weld.Part1 = Weld.Parent

Weld.C0 = CFrame.new(0, 4.2, 1.5)

Teleport.Touched:connect(function(Hit)

    pcall(function()

        if DoorDebounce == false or DoorOpen == false then return end

        if Hit.Parent:FindFirstChild("Torso") ~= nil and Hit.Parent:FindFirstChild("Humanoid") ~= nil then

            Position = Interior.Teleport.CFrame * CFrame.new(0, 0, -2)

            while Hit.Parent.Torso.CFrame ~= Position do

                Hit.Parent.Torso.CFrame = Position

            end

            DoorDebounce = false

            coroutine.wrap(function()

                wait(1)

                DoorDebounce = true

            end)()

        end

    end)

end)

 

for i = 0, 1, 1 / 25 do

    Shadow = Wall:Clone()

    Shadow.Parent = Exterior

    Shadow.Name = "Shadow"

    Shadow.Transparency = i

    Shadow.BrickColor = BrickColor.new("Really black")

    Shadow.Size = Vector3.new(5, 7, 0.2)

    Shadow.CanCollide = false

    Weld = Instance.new("Weld", Shadow)

    Weld.Part0 = Base

    Weld.Part1 = Weld.Parent

    Weld.C0 = CFrame.new(0, 3.6, 2.4 - (0.2 * (i * 25)))

end

 

-- Functions.

 

for _, Part in pairs(Exterior:GetChildren()) do

    local Joint = nil

    for _, Joints in pairs(Part:GetChildren()) do

        if Joints:IsA("JointInstance") then

            Joint = Joints

        end

    end

    table.insert(RepairParts, {

        Part = Part,

        Joint = Joint

    })

    Part.ChildRemoved:connect(function(Part2)

        if Part2:IsA("JointInstance") and Part2.Name == Part2.className then

            if math.floor(math.random(1, ((1 - (EnergyToShield * 0.99)) * 100) + 1)) == 1 and DamageHealth > 0 then

                for i = 1, #RepairParts do

                    if RepairParts[i].Part == Part then

                        local NewJoint = RepairParts[i].Joint:Clone()

                        NewJoint.Parent = Part

                        Part:MakeJoints()

                        local Sound = Instance.new("Sound", Part)

                        Sound.Name = "Heal Sound"

                        Sound.Pitch = math.random(250, 400) / 100

                        Sound.Volume = 1

                        Sound.SoundId = "http://www.roblox.com/Asset/?id=2785493"

                        Sound:Play()

                        coroutine.wrap(function()

                            wait(1)

                            Sound:Remove()

                        end)()

                    end

                end

                local TARDISShield = Instance.new("SelectionBox", Part)

                TARDISShield.Name = "TARDIS Shield"

                TARDISShield.Adornee = Part

                coroutine.wrap(function()

                    while TARDISShield.Parent ~= nil do

                        TARDISShield.Color = BrickColor.new(Color3.new(0, 0, math.random(100, 255) / 255))

                        wait()

                    end

                end)()

                coroutine.wrap(function()

                    wait(2)

                    TARDISShield:Remove()

                end)()

            else

                if Part.Name == "Wall" or Part.Name == "Top" then

                    Destroy()

                else

                    DamageHealth = DamageHealth - math.random(25, 50)

                end

            end

        end

    end)

    Part.Changed:connect(function(Property)

        if Property == "Parent" and Part.Parent ~= Exterior then

            if math.floor(math.random(1, ((1 - (EnergyToShield * 0.99)) * 100) + 1)) == 1 and DamageHealth > 0 then

                Part.Parent = Exterior

            else

                if Part.Name == "Wall" or Part.Name == "Top" or Part.Name == "Base" then

                    Destroy()

                else

                    DamageHealth = DamageHealth - math.random(10, 100)

                end

            end

        end

    end)

    Part.Touched:connect(function(Hit)

        for i = 1, #DamageEffect do

            if Hit == DamageEffect[i] then

                return

            end

        end

        if DamageCanHit == false then return end

        local SoundId = math.random(1, 3)

        local Sound = Instance.new("Sound", Part)

        Sound.Name = "Hit Sound"

        Sound.Volume = (Part.Velocity.x + Part.Velocity.y + Part.Velocity.z + Part.RotVelocity.x + Part.RotVelocity.y + Part.RotVelocity.z + Hit.Velocity.x + Hit.Velocity.y + Hit.Velocity.z + Hit.RotVelocity.x + Hit.RotVelocity.y + Hit.RotVelocity.z) / 200

        Sound.Pitch = math.random(75, 125) / 100

        if SoundId == 1 then

            Sound.SoundId = "rbxasset://sounds\\metal.ogg"

        elseif SoundId == 2 then

            Sound.SoundId = "rbxasset://sounds\\metal2.ogg"

        elseif SoundId == 3 then

            Sound.SoundId = "rbxasset://sounds\\metal3.ogg"

        end

        wait()

        Sound:Play()

        coroutine.wrap(function()

            wait(1)

            Sound:Remove()

        end)() 

        if Hit.Parent == nil then return end

        if Hit.Parent == Exterior then return end

        if Part:FindFirstChild("Weld") == nil then return end

        DamageCanHit = false

        local velocity1 = {

            math.abs(Part.Velocity.x),

            math.abs(Part.Velocity.y),

            math.abs(Part.Velocity.z)

        }

        local rotvelocity1 = {

            math.abs(Part.RotVelocity.x),

            math.abs(Part.RotVelocity.y),

            math.abs(Part.RotVelocity.z)

        }

        local velocity2 = {

            math.abs(Hit.Velocity.x),

            math.abs(Hit.Velocity.y),

            math.abs(Hit.Velocity.z)

        }

        local rotvelocity2 = {

            math.abs(Hit.RotVelocity.x),

            math.abs(Hit.RotVelocity.y),

            math.abs(Hit.RotVelocity.z)

        }

        for i = 1, #velocity1 do

            local Total = math.abs(velocity1[i] - velocity2[i])

            if Total > 75 then

                if math.floor(math.random(1, ((1 - (EnergyToShield * 0.99)) * 100) + 1)) == 1 then

                    local TARDISShield = Instance.new("ForceField", Part)

                    TARDISShield.Name = "TARDIS Shield"

                    coroutine.wrap(function()

                        wait(1)

                        TARDISShield:Remove()

                    end)()

                else

                    if Total > 125 and Hit:GetMass() > 3 and Hit.Name ~= "Wall" and Hit.Name ~= "Base" and Hit.Name ~= "Top"  then

                        Flying = false

                        ExteriorVelocity.maxForce = Vector3.new()

                        for _, Joints in pairs(Part:GetChildren()) do

                            if Joints:IsA("JointInstance") then

                                Joints:Remove()

                            end

                        end

                        Part.Velocity = Part.Velocity + Vector3.new(math.random(-Total / 10, Total / 10), math.random(-Total / 10, Total / 10), math.random(-Total / 10, Total / 10))

                        Part.RotVelocity = Part.RotVelocity + Vector3.new(math.random(-Total / 25, Total / 25), math.random(-Total / 25, Total / 25), math.random(-Total / 25, Total / 25))

                    elseif Total > 100 then

                        DamageHealth = DamageHealth - (Total / 25)

                    else

                        DamageHealth = DamageHealth - (Total / 50)

                    end

                end

            end

            if Total > math.random(50, 75) then

                if math.random(1, 3) == 1 then 

                    if Hit.Parent:FindFirstChild("Humanoid") ~= nil then

                        local Tag1 = Instance.new("ObjectValue", Hit.Parent.Humanoid)

                        Tag1.Name = "creator"

                        Tag1.Value = FlyPlayer

                        local Tag2 = Instance.new("StringValue", Hit.Parent.Humanoid)

                        Tag2.Name = "creatorType1"

                        Tag2.Value = "TARDIS"

                        local Tag3 = Instance.new("StringValue", Hit.Parent.Humanoid)

                        Tag3.Name = "creatorType2"

                        Tag3.Value = "hit"

                        coroutine.wrap(function() wait(1) Tag1:Remove() Tag2:Remove() Tag3:Remove() end)()

                    end

                    Hit:BreakJoints()

                end

            end

        end

        for i = 1, #rotvelocity1 do

            local Total = math.abs(rotvelocity1[i] - rotvelocity2[i])

            if Total > 25 then

                if math.floor(math.random(1, ((1 - (EnergyToShield * 0.99)) * 100) + 1)) == 1 then

                    local TARDISShield = Instance.new("ForceField", Part)

                    TARDISShield.Name = "TARDIS Shield"

                    coroutine.wrap(function()

                        wait(1)

                        TARDISShield:Remove()

                    end)()

                else

                    if Total > 50 and Hit:GetMass() > 3 and Hit.Name ~= "Wall" and Hit.Name ~= "Base" and Hit.Name ~= "Top" then

                        Flying = false

                        ExteriorVelocity.maxForce = Vector3.new()

                        for _, Joints in pairs(Part:GetChildren()) do

                            if Joints:IsA("JointInstance") then

                                Joints:Remove()

                            end

                        end

                        Part.Velocity = Part.Velocity + Vector3.new(math.random(-Total / 10, Total / 10), math.random(-Total / 10, Total / 10), math.random(-Total / 10, Total / 10))

                        Part.RotVelocity = Part.RotVelocity + Vector3.new(math.random(-Total / 25, Total / 25), math.random(-Total / 25, Total / 25), math.random(-Total / 25, Total / 25))

                    elseif Total > 35 then

                        DamageHealth = DamageHealth - (Total / 10)

                    else

                        DamageHealth = DamageHealth - (Total / 25)

                    end

                end

            end

            if Total > math.random(35, 75) then

                if math.random(1, 3) == 1 then 

                    if Hit.Parent:FindFirstChild("Humanoid") ~= nil then

                        local Tag1 = Instance.new("ObjectValue", Hit.Parent.Humanoid)

                        Tag1.Name = "creator"

                        Tag1.Value = FlyPlayer

                        local Tag2 = Instance.new("StringValue", Hit.Parent.Humanoid)

                        Tag2.Name = "creatorType1"

                        Tag2.Value = "TARDIS"

                        local Tag3 = Instance.new("StringValue", Hit.Parent.Humanoid)

                        Tag3.Name = "creatorType2"

                        Tag3.Value = "hit"

                        coroutine.wrap(function() wait(1) Tag1:Remove() Tag2:Remove() Tag3:Remove() end)()

                    end

                    Hit:BreakJoints()

                end

            end

        end

        wait(0.075)

        DamageCanHit = true

    end)

end

 

for _, Part in pairs(Interior:GetChildren()) do

    Part.ChildRemoved:connect(function(Part2)

        if Part2.className == "Weld" and Part2.Name == "Weld" then

            if Part.Name == "Wall" or Part.Name == "Top" then

                Destroy()

            else

                DamageHealth = DamageHealth - math.random(25, 50)

            end

        end

    end)

    Part.Changed:connect(function(Property)

        if Property == "Parent" then

            if Part.Name == "Wall" or Part.Name == "Top" or Part.Name == "Base" then

                Destroy()

            else

                DamageHealth = DamageHealth - math.random(50, 100)

            end

        end

    end)

end

 

function Destroy()

    coroutine.wrap(function()

        wait()

        if TARDIS.Parent == nil or Interior.Parent == nil or Exterior.Parent == nil then return end

        if DamageHealth <= -math.huge then return end

        DamageHealth = -math.huge

        InteriorPosition:Remove()

        InteriorGyro:Remove()

        ExteriorVelocity:Remove()

        ExteriorGyro:Remove()

        TeleportReady = false

        DoorOpen = false

        DoorLocked = true

        local Position = nil

        if Exterior:FindFirstChild("Base") ~= nil then

            Position = (Exterior.Base.CFrame * CFrame.new(0, 3, 0)).p

        else

            for _, Part in pairs(Exterior:GetChildren()) do

                if Part:IsA("BasePart") then

                    Position = Part.Position

                    break

                end

            end

        end

        if Position == nil then return end

        local function Move(Part)

            Part:BreakJoints()

            Part.CFrame = CFrame.new(Position) * CFrame.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30)) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)))

            Part.Velocity = (Part.Position - Position).unit * math.random(0, 50)

            Part.RotVelocity = Vector3.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100))

        end

        for i = 1, #DamageEffect do

            pcall(function()

                DamageEffect[i].Anchored = false

                Move(DamageEffect[i])

            end)

            DamageEffect[i] = nil

            DamageEffectPart[i] = nil

        end

        for _, PlayerList in pairs(game:service("Players"):GetPlayers()) do

            if PlayerList.Character ~= nil then

                if PlayerList.Character:FindFirstChild("Torso") ~= nil then

                    if (PlayerList.Character.Torso.Position - TARDIS.Interior.Base.Position).magnitude < 250 then

                        for _, Part in pairs(PlayerList.Character:GetChildren()) do

                            if Part:IsA("BasePart") then

                                Move(Part)

                            elseif Part:IsA("Accoutrement") then

                                if Part:FindFirstChild("Handle") ~= nil then

                                    Part.Parent = game:service("Workspace")

                                    Move(Part.Handle)

                                end

                            end

                        end

                    end

                end

            end

        end

        for _, Part in pairs(Exterior:GetChildren()) do

            if Part.Name == "Shadow" or Part.Name == "Teleport" then

                Part:Remove()

            elseif Part:IsA("BasePart") then

                Move(Part)

            end

        end

        for _, Part in pairs(Interior:GetChildren()) do

            if Part.Name == "Shadow" or Part.Name == "Teleport" or Part.Name == "Base" then

                Part:Remove()

            elseif Part:IsA("BasePart") then

                Move(Part)

            end

        end

        for _, Part in pairs(TARDIS:GetChildren()) do

            if Part.Name == "TARDIS Link" then

                Part:Remove()

            end

        end

        local Sound = Instance.new("Sound", workspace)

        Sound.SoundId = "http://www.roblox.com/Asset/?id=2101159"

        Sound.Volume = 1

        Sound.Pitch = math.random(90, 110) / 100

        Sound:Play()

        local Sound = Instance.new("Sound", workspace)

        Sound.SoundId = "http://www.roblox.com/Asset/?id=3087031"

        Sound.Volume = 1

        Sound.Pitch = math.random(90, 110) / 100

        Sound:Play()

        for i = 1, math.random(5, 7) do

            local ExplosionBall = Instance.new("Part", game:service("Workspace"))

            ExplosionBall.Name = "TARDIS Explosion Ball"

            ExplosionBall.formFactor = "Custom"

            ExplosionBall.TopSurface = 0

            ExplosionBall.BottomSurface = 0

            ExplosionBall.Anchored = true

            ExplosionBall.CanCollide = false

            ExplosionBall.Size = Vector3.new(1, 1, 1)

            ExplosionBall.BrickColor = BrickColor.new((function()

                local Choice = math.random(1, 5)

                if Choice == 1 then

                    return "Institutional white"

                elseif Choice == 2 then

                    return "White"

                elseif Choice == 3 then

                    return "Really red"

                elseif Choice == 4 then

                    return "New Yeller"

                elseif Choice == 5 then

                    return "Black"

                end

            end)())

            ExplosionBall.CFrame = CFrame.new(Position)

            Instance.new("SpecialMesh", ExplosionBall).MeshType = "Sphere"

            coroutine.wrap(function()

                for i = 0, 1, 0.005 do

                    ExplosionBall.Transparency = (1 - i)

                    ExplosionBall.Mesh.Scale = Vector3.new(i * 250, i * 250, i * 250)

                    ExplosionBall.CFrame = CFrame.new(Position + (Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * i))

                    if math.random(1, 25) == 1 then

                        local Explosion = Instance.new("Explosion")

                        Explosion.Position = ExplosionBall.Position + (Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * i)

                        Explosion.BlastPressure = 10000 * i

                        Explosion.BlastRadius = i * 250

                        Explosion.Parent = game:service("Workspace")

                    end

                    wait()

                end

                for i = 0, 1, 0.05 do

                    ExplosionBall.Transparency = i

                    ExplosionBall.CFrame = CFrame.new(Position + (Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * (1 - i)))

                    wait()

                end

                ExplosionBall:Remove()

            end)()

        end

    end)()

    coroutine.wrap(function()

        wait(25)

        TARDIS:Remove()

        script:Remove()

    end)()

end

 

function Teleport(Position)

    if TeleportReady == false or DoorOpen == true then

        return

    end

    TeleportReady = false

    ExteriorGyro.maxTorque = Vector3.new(math.huge, 0, math.huge)

    FlyStabalize = true

    coroutine.wrap(function()

        while FlyStabalize == true do

            ExteriorGyro.cframe = CFrame.new(Exterior.Base.Position) * CFrame.new(0, 0, 10)

            wait()

        end

    end)()

    local BoomSound1 = Instance.new("Sound", Interior.Base)

    BoomSound1.SoundId = "http://www.roblox.com/Asset/?id=11984254"

    BoomSound1.Pitch = 2

    BoomSound1.Volume = 1

    BoomSound1:Play()

    local BoomSound2 = BoomSound1:Clone()

    BoomSound2.Parent = Exterior.Base

    BoomSound2:Play()

    wait(2)

    BoomSound1:Remove()

    BoomSound2:Remove()

    local Wind1 = Instance.new("Sound", Exterior.Base)

    Wind1.SoundId = "http://www.roblox.com/Asset/?id=18435238"

    Wind1.Pitch = 0.25

    Wind1.Volume = 1

    Wind1:Play()

    local Wind2 = Wind1:Clone()

    Wind2.Parent = Interior.Base

    Wind2:Play()

    wait(1)

    local Whoosh1 = Wind1:Clone()

    Whoosh1.Parent = Interior.Base

    Whoosh1.Pitch = math.random(300, 400) / 100

    Whoosh1.Looped = true

    Whoosh1:Play()

    local Whoosh2 = Whoosh1:Clone()

    Whoosh2.Parent = Exterior.Base

    Whoosh2:Play()

    local SoundPart = Instance.new("Part", game:service("Workspace"))

    SoundPart.Name = ""

    SoundPart.Transparency = 1

    SoundPart.TopSurface = 0

    SoundPart.BottomSurface = 0

    SoundPart.formFactor = "Custom"

    SoundPart.Size = Vector3.new(6, 0.2, 6)

    SoundPart.Anchored = true

    SoundPart.CanCollide = false

    SoundPart:BreakJoints()

    SoundPart.Position = Position

    local Wind3 = Wind1:Clone()

    Wind3.Parent = SoundPart

    Wind3:Play()

    local Whoosh3 = Whoosh1:Clone()

    Whoosh3.Parent = SoundPart

    Whoosh3:Play()

    local Transparency = {}

    for x, Part in pairs(Exterior:GetChildren()) do

        Transparency[x] = Part.Transparency

    end

    local Decals = {}

    for x, Part in pairs(Exterior:GetChildren()) do

        if Part:FindFirstChild("Decal") ~= nil then

            Decals[x] = Part.Decal.Texture

            Part.Decal.Texture = ""

        end

    end

    for i = 0, 1, (EnergyToTeleport / 75) + 0.005 do

        for x, Part in pairs(Exterior:GetChildren()) do

            Part.Transparency = Transparency[x] + ((1 - Transparency[x]) * i)

        end

        for _, Part in pairs(Interior:GetChildren()) do

            if Part.Name == "Power Rod 1" then

                pcall(function() Part.Weld.C1 = CFrame.new(0, (((math.sin(i * 10) + 1) / 2) * 4), 0) end)

            elseif Part.Name == "Power Rod 2" then

                pcall(function() Part.Weld.C1 = CFrame.new(0, -(((math.sin(i * 10) + 1) / 2) * 4), 0) end)

            end

        end

        wait()

    end

    wait(math.random(0, EnergyToTeleport * 100) / 100)

    for x, Part in pairs(Exterior:GetChildren()) do

        Part.Velocity = Vector3.new()

        Part.RotVelocity = Vector3.new()

        Part.Transparency = 1

    end

    SoundPart.CFrame = CFrame.new(Exterior.Base.Position)

    coroutine.wrap(function()

        local SoundIds = {

            "http://www.roblox.com/Asset/?id=13775466",

            "http://www.roblox.com/Asset/?id=22968437",

            "http://www.roblox.com/Asset/?id=13775494"

        }

        for i = 1, math.random(3, 10) do

            wait(math.random(100, 2000) / 1000)

            local AfterSound = Instance.new("Sound", SoundPart)

            AfterSound.Pitch = math.random(2000, 3500) / 1000

            AfterSound.Volume = 1

            AfterSound.SoundId = SoundIds[math.random(1, #SoundIds)]

            for i = 1, 0, -0.1 do

                AfterSound:Play()

                AfterSound.Volume = i

                wait(((1 - AfterSound.Pitch / 3.5) * 0.3) + 0.05)

            end

            AfterSound:Remove()

        end

        SoundPart:Remove()

    end)()

    Exterior:MoveTo(Position + Vector3.new(math.random(-(1 - EnergyToTeleport) * 100, (1 - EnergyToTeleport) * 100), math.random(-(1 - EnergyToTeleport) * 100, (1 - EnergyToTeleport) * 100), math.random(-(1 - EnergyToTeleport) * 100, (1 - EnergyToTeleport) * 100)))

    ExteriorOffset = Interior.Base.Position - (Exterior.Base.Position / 10)

    for i = 1, 0, -((EnergyToTeleport / 25) + 0.01) do

        for x, Part in pairs(Exterior:GetChildren()) do

            Part.Transparency = Transparency[x] + ((1 - Transparency[x]) * i)

        end

        for x, Part in pairs(Interior:GetChildren()) do

            if Part.Name == "Power Rod 1" then

                pcall(function() Part.Weld.C1 = CFrame.new(0, (((math.sin(i * 20) + 1) / 2) * 4), 0) end)

            elseif Part.Name == "Power Rod 2" then

                pcall(function() Part.Weld.C1 = CFrame.new(0, -(((math.sin(i * 20) + 1) / 2) * 4), 0) end)

            end

        end

        wait()

    end

    for x, Part in pairs(Exterior:GetChildren()) do

        Part.Transparency = Transparency[x]

        if Decals[x] ~= nil and Part:FindFirstChild("Decal") ~= nil then

            Part.Decal.Texture = Decals[x]

        end

    end

    for x, Part in pairs(Interior:GetChildren()) do

        if Part.Name == "Power Rod 1" then

            pcall(function() Part.Weld.C1 = CFrame.new() end)

        elseif Part.Name == "Power Rod 2" then

            pcall(function() Part.Weld.C1 = CFrame.new() end)

        end

    end

    Whoosh1.Looped = false

    Whoosh2.Looped = false

    Whoosh3.Looped = false

    wait(1.5)

    Wind1:Remove()

    Wind2:Remove()

    Wind3:Remove()

    Whoosh1:Remove()

    Whoosh2:Remove()

    Whoosh3:Remove()

    ExteriorGyro.maxTorque = Vector3.new()

    FlyStabalize = false

    TeleportReady = true

end

 

-- Final stuff.

 

InteriorPosition = Instance.new("BodyPosition", Interior.Base)

InteriorPosition.D = 1500

InteriorPosition.P = 7500

InteriorPosition.maxForce = Vector3.new(math.huge, math.huge, math.huge)

InteriorPosition.position = ExteriorOffset

 

InteriorGyro = Instance.new("BodyGyro", Interior.Base)

InteriorGyro.D = 750

InteriorGyro.P = 2500

InteriorGyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

 

ExteriorVelocity = Instance.new("BodyVelocity", Exterior.Base)

ExteriorVelocity.P = 1500

ExteriorVelocity.maxForce = Vector3.new()

ExteriorVelocity.velocity = Vector3.new()

coroutine.wrap(function()

    while ExteriorVelocity.Parent ~= nil do

        if math.abs(ExteriorVelocityTarget.x - ExteriorVelocity.velocity.x) < ExteriorVelocityTargetSpeed and math.abs(ExteriorVelocityTarget.y - ExteriorVelocity.velocity.y) < ExteriorVelocityTargetSpeed and math.abs(ExteriorVelocityTarget.z - ExteriorVelocity.velocity.z) < ExteriorVelocityTargetSpeed then

            ExteriorVelocity.velocity = ExteriorVelocityTarget

        else

            ExteriorVelocity.velocity = Vector3.new(

                ExteriorVelocity.velocity.x + (function()

                    if ExteriorVelocityTarget.x - ExteriorVelocity.velocity.x > ExteriorVelocityTargetSpeed then

                        return ExteriorVelocityTargetSpeed

                    elseif ExteriorVelocityTarget.x - ExteriorVelocity.velocity.x < -ExteriorVelocityTargetSpeed then

                        return -ExteriorVelocityTargetSpeed

                    else

                        return ExteriorVelocityTarget.x - ExteriorVelocity.velocity.x

                    end

                end)(),

                ExteriorVelocity.velocity.y + (function()

                    if ExteriorVelocityTarget.y - ExteriorVelocity.velocity.y > ExteriorVelocityTargetSpeed then

                        return ExteriorVelocityTargetSpeed

                    elseif ExteriorVelocityTarget.y - ExteriorVelocity.velocity.y < -ExteriorVelocityTargetSpeed then

                        return -ExteriorVelocityTargetSpeed

                    else

                        return ExteriorVelocityTarget.y - ExteriorVelocity.velocity.y

                    end

                end)(),

                ExteriorVelocity.velocity.z + (function()

                    if ExteriorVelocityTarget.z - ExteriorVelocity.velocity.z > ExteriorVelocityTargetSpeed then

                        return ExteriorVelocityTargetSpeed

                    elseif ExteriorVelocityTarget.z - ExteriorVelocity.velocity.z < -ExteriorVelocityTargetSpeed then

                        return -ExteriorVelocityTargetSpeed

                    else

                        return ExteriorVelocityTarget.z - ExteriorVelocity.velocity.z

                    end

                end)()

            )

        end

        wait()

    end

end)()

 

ExteriorGyro = Instance.new("BodyGyro", Exterior.Base)

ExteriorGyro.D = 500

ExteriorGyro.P = 3000

ExteriorGyro.maxTorque = Vector3.new()

 

Exterior:MoveTo(Vector3.new(0, 0, 10))

pcall(function() Exterior:MoveTo(workspace.raj99.Torso.Position + Vector3.new(0, 0, 10)) end)

Interior:MoveTo((Exterior.Base.Position / 10) + ExteriorOffset)

 

while true do

    if DamageHealth <= 0 then Destroy() break end

    pcall(function()

        InteriorPosition.position = (Exterior.Base.Position / 10) + ExteriorOffset

        InteriorGyro.cframe = Exterior.Base.CFrame * CFrame.new(-Exterior.Base.Position)

    end)

    pcall(function()

        ExteriorVelocity.P = 1000 * ((EnergyToFly / 2) + 0.5)

    end)

    ExteriorVelocityTargetSpeed = 2.5 * ((EnergyToFly / 2) + 0.5)

    local Seat = Interior:FindFirstChild("Teleport Seat")

    if Seat ~= nil then

        if Seat:FindFirstChild("SeatWeld") ~= nil and TeleportPlayer == nil then

            local Part1 = Seat.SeatWeld.Part1

            if Part1 ~= nil then

                TeleportPlayer = game:service("Players"):GetPlayerFromCharacter(Part1.Parent)

                if TeleportPlayer ~= nil then

                    local Camera = game:service("InsertService"):LoadAsset(49712909).Camera

                    Camera.CameraSubject.Value = Exterior.Base

                    Camera.CameraType.Value = Enum.CameraType.Track.Value

                    Camera.Disabled = false

                    wait(0.05)

                    Camera.Parent = Part1.Parent

                    local PlayerGui = TeleportPlayer:FindFirstChild("PlayerGui")

                    if PlayerGui == nil then return end

                    local TeleportGui = Instance.new("ScreenGui", PlayerGui)

                    TeleportGui.Name = "TeleportGui"

                    local Frame = Instance.new("Frame")

                    Frame.Name = "Content"

                    Frame.Size = UDim2.new(0, 300, 0, 300)

                    Frame.Position = UDim2.new(0, 0, 0.5, -300 / 2)

                    Frame.BorderSizePixel = 1

                    Frame.BorderColor3 = Color3.new(0, 0, 0)

                    Frame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)

                    Frame.Parent = TeleportGui

                    local TextLabel = Instance.new("TextLabel")

                    TextLabel.Name = "X Label"

                    TextLabel.Size = UDim2.new(1, -15, 0, 15)

                    TextLabel.Position = UDim2.new(0, 15, 0, 15)

                    TextLabel.BorderSizePixel = 0

                    TextLabel.BackgroundTransparency = 1

                    TextLabel.TextColor3 = Color3.new(1, 1, 1)

                    TextLabel.Text = "X coordinate:"

                    TextLabel.TextXAlignment = "Left"

                    TextLabel.FontSize = "Size12"

                    TextLabel.TextWrap = true

                    TextLabel.Parent = TeleportGui.Content

                    local TextLabel = TextLabel:Clone()

                    TextLabel.Name = "Y Label"

                    TextLabel.Position = UDim2.new(0, 15, 0, 45)

                    TextLabel.Text = "Y coordinate:"

                    TextLabel.Parent = TeleportGui.Content

                    local TextLabel = TextLabel:Clone()

                    TextLabel.Name = "Z Label"

                    TextLabel.Position = UDim2.new(0, 15, 0, 75)

                    TextLabel.Text = "Z coordinate:"

                    TextLabel.Parent = TeleportGui.Content

                    local TextBox = Instance.new("TextBox")

                    TextBox.Name = "X"

                    TextBox.ClearTextOnFocus = false

                    TextBox.Size = UDim2.new(1, -130, 0, 15)

                    TextBox.Position = UDim2.new(0, 115, 0, 15)

                    TextBox.BorderColor3 = Color3.new(0, 0, 0)

                    TextBox.BackgroundColor3 = Color3.new(1, 1, 1)

                    TextBox.TextColor3 = Color3.new(0, 0, 0)

                    TextBox.Text = "0"

                    TextBox.TextXAlignment = "Left"

                    TextBox.FontSize = "Size12"

                    TextBox.Parent = TeleportGui.Content

                    local TextBox = TextBox:Clone()

                    TextBox.Name = "Y"

                    TextBox.Position = UDim2.new(0, 115, 0, 45)

                    TextBox.Parent = TeleportGui.Content

                    local TextBox = TextBox:Clone()

                    TextBox.Name = "Z"

                    TextBox.Position = UDim2.new(0, 115, 0, 75)

                    TextBox.Parent = TeleportGui.Content

                    local Divider = Instance.new("Frame")

                    Divider.Name = "Divider"

                    Divider.Size = UDim2.new(1, -30, 0, 1)

                    Divider.Position = UDim2.new(0, 15, 0, 100)

                    Divider.BorderSizePixel = 0

                    Divider.BackgroundColor3 = Color3.new(1, 1, 1)

                    Divider.Parent = TeleportGui.Content

                    local TextLabel = TextLabel:Clone()

                    TextLabel.Name = "CX"

                    TextLabel.Position = UDim2.new(0, 15, 0, 110)

                    TextLabel.Text = "Current X coordinate: "

                    TextLabel.Parent = TeleportGui.Content

                    local TextLabel = TextLabel:Clone()

                    TextLabel.Name = "CY"

                    TextLabel.Position = UDim2.new(0, 15, 0, 140)

                    TextLabel.Text = "Current Y coordinate: "

                    TextLabel.Parent = TeleportGui.Content

                    local TextLabel = TextLabel:Clone()

                    TextLabel.Name = "CZ"

                    TextLabel.Position = UDim2.new(0, 15, 0, 170)

                    TextLabel.Text = "Current Z coordinate: "

                    TextLabel.Parent = TeleportGui.Content

                    local Divider = Divider:Clone()

                    Divider.Position = UDim2.new(0, 15, 0, 195)

                    Divider.BorderSizePixel = 0

                    Divider.BackgroundColor3 = Color3.new(1, 1, 1)

                    Divider.Parent = TeleportGui.Content

                    local TextButton = Instance.new("TextButton")

                    TextButton.Name = "Teleport"

                    TextButton.Size = UDim2.new(1, -30, 0, 15)

                    TextButton.Position = UDim2.new(0, 15, 0, 205)

                    TextButton.BorderColor3 = Color3.new(0, 0, 0)

                    TextButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)

                    TextButton.TextColor3 = Color3.new(1, 1, 1)

                    TextButton.Text = "Begin Teleportation"

                    TextButton.FontSize = "Size12"

                    TextButton.Parent = TeleportGui.Content

                    TextButton.MouseButton1Up:connect(function()

                        Teleport(Vector3.new(tonumber(TeleportGui.Content.X.Text), tonumber(TeleportGui.Content.Y.Text), tonumber(TeleportGui.Content.Z.Text)))

                    end)

                    coroutine.wrap(function()

                        wait()

                        while TextButton.Parent ~= nil do

                            if TeleportReady == false or DoorOpen == true then

                                TextButton.AutoButtonColor = false

                                TextButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)

                            else

                                TextButton.AutoButtonColor = true

                                TextButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)

                            end

                            wait(0.1)

                        end

                    end)()

                    local TextButton = TextButton:Clone()

                    TextButton.Name = "Set Inputs to Current Coordinates"

                    TextButton.Position = UDim2.new(0, 15, 0, 220)

                    TextButton.Text = "Set Inputs to Current Coordinates"

                    TextButton.Parent = TeleportGui.Content

                    TextButton.MouseButton1Up:connect(function()

                        TeleportGui.Content.X.Text = string.sub(Exterior.Base.Position.x, 0, 12)

                        TeleportGui.Content.Y.Text = string.sub(Exterior.Base.Position.y, 0, 12)

                        TeleportGui.Content.Z.Text = string.sub(Exterior.Base.Position.z, 0, 12)

                    end)

                    local TextButton = TextButton:Clone()

                    TextButton.Name = "Waypoints"

                    TextButton.Position = UDim2.new(0, 15, 0, 235)

                    TextButton.Text = "Open Waypoints Dialogue..."

                    TextButton.Parent = TeleportGui.Content

                    TextButton.MouseButton1Up:connect(function()

                        pcall(function() TeleportGui.Content["Players List"]:Remove() end)

                        pcall(function() TeleportGui.Content["Waypoints List"]:Remove() end)

                        local Frame = Frame:Clone()

                        Frame.Parent = TeleportGui.Content

                        Frame.Name = "Waypoints List"

                        Frame.Position = UDim2.new(1, 0, 0, 0)

                        Frame.Size = UDim2.new(1, 0, 0, 75)

                        for _, Part in pairs(Frame:GetChildren()) do

                            Part:Remove()

                        end

                        for i = 1, #TeleportWaypoints, 2 do

                            local TextButton = TextButton:Clone()

                            TextButton.Parent = Frame

                            TextButton.Name = TeleportWaypoints[i].. " Waypoint"

                            TextButton.Text = TeleportWaypoints[i]

                            TextButton.Size = UDim2.new(1, -45, 0, 15)

                            TextButton.Position = UDim2.new(0, 15, 0, Frame.Size.Y.Offset - 60)

                            TextButton.MouseButton1Up:connect(function()

                                TeleportGui.Content.X.Text = TeleportWaypoints[i + 1].x

                                TeleportGui.Content.Y.Text = TeleportWaypoints[i + 1].y

                                TeleportGui.Content.Z.Text = TeleportWaypoints[i + 1].z

                            end)

                            local TextButton = TextButton:Clone()

                            TextButton.Parent = Frame

                            TextButton.Name = TeleportWaypoints[i].. " Remove"

                            TextButton.Text = "X"

                            TextButton.Size = UDim2.new(0, 15, 0, 15)

                            TextButton.Position = UDim2.new(1, -30, 0, Frame.Size.Y.Offset - 60)

                            Frame.Size = Frame.Size + UDim2.new(0, 0, 0, 15)

                            TextButton.MouseButton1Up:connect(function()

                                for x = 1, 2 do

                                    table.remove(TeleportWaypoints, i)

                                end

                                Frame:Remove()

                            end)

                        end

                        local TextButton = TextButton:Clone()

                        TextButton.Parent = Frame

                        TextButton.Name = "Create Waypoint"

                        TextButton.Text = "Create Waypoint"

                        TextButton.Size = UDim2.new(1, -30, 0, 15)

                        TextButton.Position = UDim2.new(0, 15, 0, Frame.Size.Y.Offset - 45)

                        TextButton.MouseButton1Up:connect(function()

                            local WaypointButton = Frame["Create Waypoint"]

                            WaypointButton.Parent = nil

                            local TextBox = TextBox:Clone()

                            TextBox.Parent = Frame

                            TextBox.Name = "Waypoint Name"

                            TextBox.Size = UDim2.new(1, -60, 0, 15)

                            TextBox.Position = WaypointButton.Position

                            TextBox.Text = "Waypoint Name"

                            local TextButton = TextButton:Clone()

                            TextButton.Parent = Frame

                            TextButton.Name = "Cancel"

                            TextButton.Size = UDim2.new(0, 15, 0, 15)

                            TextButton.Text = "X"

                            TextButton.Position = UDim2.new(1, -45, 0, WaypointButton.Position.Y.Offset)

                            TextButton.MouseButton1Up:connect(function()

                                Frame["Waypoint Name"]:Remove()

                                Frame["Cancel"]:Remove()

                                Frame["Save"]:Remove()

                                WaypointButton.Parent = Frame

                            end)

                            local TextButton = TextButton:Clone()

                            TextButton.Parent = Frame

                            TextButton.Name = "Save"

                            TextButton.Size = UDim2.new(0, 15, 0, 15)

                            TextButton.Text = ">"

                            TextButton.Position = UDim2.new(1, -30, 0, WaypointButton.Position.Y.Offset)

                            TextButton.MouseButton1Up:connect(function()

                                table.insert(TeleportWaypoints, TextBox.Text)

                                table.insert(TeleportWaypoints, Vector3.new(tonumber(string.sub(Exterior.Base.Position.x, 0, 12)), tonumber(string.sub(Exterior.Base.Position.y, 0, 12)), tonumber(string.sub(Exterior.Base.Position.z, 0, 12))))

                                Frame:Remove()

                            end)

                        end)

                        local TextButton = TextButton:Clone()

                        TextButton.Parent = Frame

                        TextButton.Name = "Close"

                        TextButton.Text = "Close"

                        TextButton.Position = UDim2.new(0, 15, 0, Frame.Size.Y.Offset - 30)

                        TextButton.MouseButton1Up:connect(function() Frame:Remove() end)

                    end)

                    local TextButton = TextButton:Clone()

                    TextButton.Name = "Players"

                    TextButton.Position = UDim2.new(0, 15, 0, 250)

                    TextButton.Text = "Open Players Dialogue..."

                    TextButton.Parent = TeleportGui.Content

                    TextButton.MouseButton1Up:connect(function()

                        pcall(function() TeleportGui.Content["Players List"]:Remove() end)

                        pcall(function() TeleportGui.Content["Waypoints List"]:Remove() end)

                        local Frame = Frame:Clone()

                        Frame.Parent = TeleportGui.Content

                        Frame.Name = "Players List"

                        Frame.Position = UDim2.new(1, 0, 0, 0)

                        Frame.Size = UDim2.new(1, 0, 0, 60)

                        for _, Part in pairs(Frame:GetChildren()) do

                            Part:Remove()

                        end

                        for _, PlayerList in pairs(game:service("Players"):GetPlayers()) do

                            local TextButton = TextButton:Clone()

                            TextButton.Parent = Frame

                            TextButton.Name = PlayerList.Name

                            TextButton.Text = PlayerList.Name

                            TextButton.Position = UDim2.new(0, 15, 0, Frame.Size.Y.Offset - 45)

                            Frame.Size = Frame.Size + UDim2.new(0, 0, 0, 15)

                            if (function()

                                if PlayerList == TeleportPlayer then return false end

                                if PlayerList.Character == nil then return false end

                                if PlayerList.Character:FindFirstChild("Torso") == nil then return false end

                                if (PlayerList.Character.Torso.Position - TARDIS.Interior.Base.Position).magnitude < 250 then return false end

                                return true

                            end)() == false then

                                TextButton.AutoButtonColor = false

                                TextButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)

                            else

                                TextButton.MouseButton1Up:connect(function()

                                    pcall(function()

                                        TeleportGui.Content.X.Text = PlayerList.Character.Torso.Position.x

                                        TeleportGui.Content.Y.Text = PlayerList.Character.Torso.Position.y

                                        TeleportGui.Content.Z.Text = PlayerList.Character.Torso.Position.z

                                    end)

                                end)

                            end

                        end

                        local TextButton = TextButton:Clone()

                        TextButton.Parent = Frame

                        TextButton.Name = "Close"

                        TextButton.Text = "Close"

                        TextButton.Position = UDim2.new(0, 15, 0, Frame.Size.Y.Offset - 30)

                        TextButton.MouseButton1Up:connect(function() Frame:Remove() end)

                    end)

                    local TextButton = TextButton:Clone()

                    TextButton.Name = "Clear"

                    TextButton.Position = UDim2.new(0, 15, 0, 265)

                    TextButton.Text = "Clear Inputs"

                    TextButton.Parent = TeleportGui.Content

                    TextButton.MouseButton1Up:connect(function()

                        TeleportGui.Content.X.Text = 0

                        TeleportGui.Content.Y.Text = 0

                        TeleportGui.Content.Z.Text = 0

                    end)

                    coroutine.wrap(function()

                        local TextCX = TeleportGui.Content.CX.Text

                        local TextCY = TeleportGui.Content.CY.Text

                        local TextCZ = TeleportGui.Content.CZ.Text

                        while TeleportGui.Parent ~= nil do

                            TeleportGui.Content.CX.Text = TextCX .. string.sub(Exterior.Base.Position.x, 0, 12)

                            TeleportGui.Content.CY.Text = TextCY .. string.sub(Exterior.Base.Position.y, 0, 12)

                            TeleportGui.Content.CZ.Text = TextCZ .. string.sub(Exterior.Base.Position.z, 0, 12)

                            wait()

                        end

                    end)()

                end

            end

        elseif Seat:FindFirstChild("SeatWeld") == nil and TeleportPlayer ~= nil then

            if TeleportPlayer:FindFirstChild("PlayerGui") ~= nil then

                if TeleportPlayer.PlayerGui:FindFirstChild("TeleportGui") ~= nil then

                    TeleportPlayer.PlayerGui.TeleportGui:Remove()

                end

            end

            local Camera = game:service("InsertService"):LoadAsset(49712909).Camera

            Camera.CameraSubject.Value = TeleportPlayer.Character.Humanoid

            Camera.CameraType.Value = Enum.CameraType.Custom.Value

            Camera.Disabled = false

            wait(0.05)

            Camera.Parent = TeleportPlayer.Character

            TeleportPlayer = nil

        end

    end

    local Seat = Interior:FindFirstChild("Radar Seat")

    if Seat ~= nil then

        if Seat:FindFirstChild("SeatWeld") ~= nil and RadarPlayer == nil then

            local Part1 = Seat.SeatWeld.Part1

            if Part1 ~= nil then

                RadarPlayer = game:service("Players"):GetPlayerFromCharacter(Part1.Parent)

                if RadarPlayer ~= nil then

                    local Camera = game:service("InsertService"):LoadAsset(49712909).Camera

                    Camera.CameraSubject.Value = Exterior.Base

                    Camera.CameraType.Value = Enum.CameraType.Track.Value

                    Camera.Disabled = false

                    wait(0.05)

                    Camera.Parent = Part1.Parent

                    local PlayerGui = RadarPlayer:FindFirstChild("PlayerGui")

                    if PlayerGui == nil then return end

                    local RadarGui = Instance.new("ScreenGui", PlayerGui)

                    RadarGui.Name = "RadarGui"

                    local ImageLabel = Instance.new("ImageLabel")

                    ImageLabel.Name = "Content"

                    ImageLabel.Image = "http://www.roblox.com/Asset/?id=19617472"

                    ImageLabel.Size = UDim2.new(0, 400, 0, 400)

                    ImageLabel.Position = UDim2.new(0, 0, 0.5, -400 / 2)

                    ImageLabel.BorderSizePixel = 0

                    ImageLabel.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)

                    ImageLabel.Parent = RadarGui

                    local TextLabel = Instance.new("TextLabel")

                    TextLabel.Name = "Current Coordinates"

                    TextLabel.Size = UDim2.new(1, 0, 0, 15)

                    TextLabel.Position = UDim2.new(0, 15, 1, -20)

                    TextLabel.BorderSizePixel = 0

                    TextLabel.BackgroundTransparency = 1

                    TextLabel.TextColor3 = Color3.new(1, 1, 1)

                    TextLabel.Text = "Current coordinates: "

                    TextLabel.TextXAlignment = "Left"

                    TextLabel.FontSize = "Size12"

                    TextLabel.Parent = ImageLabel

                    coroutine.wrap(function()

                        local Text = RadarGui.Content["Current Coordinates"].Text

                        local Blip = Instance.new("Frame")

                        Blip.Name = "Blip"

                        Blip.BorderColor3 = Color3.new(0, 0, 0)

                        Blip.BackgroundColor3 = Color3.new(0, 1, 0)

                        Blip.Size = UDim2.new(0, 10, 0, 10)

                        local BlipText = TextLabel:Clone()

                        BlipText.Name = "Blip Text"

                        BlipText.TextColor3 = Color3.new(0, 1, 0)

                        BlipText.Size = UDim2.new(0, 0, 0, 15)

                        BlipText.TextXAlignment = "Center"

                        while RadarGui.Parent ~= nil do

                            RadarGui.Content["Current Coordinates"].Text = Text.. "(" ..math.floor(Exterior.Base.Position.x).. ", " ..math.floor(Exterior.Base.Position.y).. ", " ..math.floor(Exterior.Base.Position.z).. ")"

                            for _, Part in pairs(RadarGui.Content:GetChildren()) do

                                if Part.Name == "Blip" or Part.Name == "Blip Text" then

                                    Part:Remove()

                                end

                            end

                            for _, PlayerList in pairs(game:service("Players"):GetPlayers()) do

                                if PlayerList.Character ~= nil then

                                    if PlayerList.Character:FindFirstChild("Torso") ~= nil then

                                        local Distance = (Exterior.Base.Position - PlayerList.Character.Torso.Position)

                                        if Distance.magnitude < RadarMaxDistance then

                                            local NewBlip = Blip:Clone()

                                            NewBlip.Parent = RadarGui.Content

                                            NewBlip.Position = UDim2.new(0, (Distance.x * ((RadarGui.Content.Size.X.Offset / RadarMaxDistance) / 2)) + (RadarGui.Content.Size.X.Offset / 2) + 5, 0, (Distance.z * ((RadarGui.Content.Size.Y.Offset / RadarMaxDistance) / 2)) + (RadarGui.Content.Size.Y.Offset / 2) + 5)

                                            local NewBlipText = BlipText:Clone()

                                            NewBlipText.Parent = RadarGui.Content

                                            NewBlipText.Text = PlayerList.Name

                                            NewBlipText.Position = NewBlip.Position + UDim2.new(0, 5, 0, 15)

                                        end

                                    end

                                end

                            end

                            wait(0.1)

                        end

                    end)()

                end

            end

        elseif Seat:FindFirstChild("SeatWeld") == nil and RadarPlayer ~= nil then

            if RadarPlayer:FindFirstChild("PlayerGui") ~= nil then

                if RadarPlayer.PlayerGui:FindFirstChild("RadarGui") ~= nil then

                    RadarPlayer.PlayerGui.RadarGui:Remove()

                end

            end

            local Camera = game:service("InsertService"):LoadAsset(49712909).Camera

            Camera.CameraSubject.Value = RadarPlayer.Character.Humanoid

            Camera.CameraType.Value = Enum.CameraType.Custom.Value

            Camera.Disabled = false

            wait(0.05)

            Camera.Parent = RadarPlayer.Character

            RadarPlayer = nil

        end

    end

    local Seat = Interior:FindFirstChild("Fly Seat")

    if Seat ~= nil then

        if Seat:FindFirstChild("SeatWeld") ~= nil and FlyPlayer == nil then

            local Part1 = Seat.SeatWeld.Part1

            if Part1 ~= nil then

                FlyPlayer = game:service("Players"):GetPlayerFromCharacter(Part1.Parent)

                if FlyPlayer ~= nil then

                    local Camera = game:service("InsertService"):LoadAsset(49712909).Camera

                    Camera.CameraSubject.Value = Exterior.Base

                    Camera.CameraType.Value = Enum.CameraType.Track.Value

                    Camera.Disabled = false

                    wait(0.05)

                    Camera.Parent = Part1.Parent

                    local PlayerGui = FlyPlayer:FindFirstChild("PlayerGui")

                    if PlayerGui == nil then return end

                    local FlyGui = Instance.new("ScreenGui", PlayerGui)

                    FlyGui.Name = "FlyGui"

                    local Frame = Instance.new("Frame")

                    Frame.Name = "Content"

                    Frame.Size = UDim2.new(0, 150, 0, 300)

                    Frame.Position = UDim2.new(0, 0, 0.5, -300 / 2)

                    Frame.BorderSizePixel = 1

                    Frame.BorderColor3 = Color3.new(0, 0, 0)

                    Frame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)

                    Frame.Parent = FlyGui

                    local TextLabel = Instance.new("TextLabel")

                    TextLabel.Name = "Speed"

                    TextLabel.Size = UDim2.new(0, 95, 0, 15)

                    TextLabel.Position = UDim2.new(0, 0, 0, 0)

                    TextLabel.BorderSizePixel = 0

                    TextLabel.BackgroundTransparency = 1

                    TextLabel.TextColor3 = Color3.new(1, 1, 1)

                    TextLabel.Text = "Speed: "

                    TextLabel.TextXAlignment = "Left"

                    TextLabel.FontSize = "Size12"

                    TextLabel.Parent = FlyGui.Content

                    local TextLabel = TextLabel:Clone()

                    TextLabel.Name = "XS"

                    TextLabel.Size = UDim2.new(0, 50, 0, 15)

                    TextLabel.Position = UDim2.new(1, -50, 0, 0)

                    TextLabel.Text = "X: "

                    TextLabel.Parent = FlyGui.Content

                    local TextLabel = TextLabel:Clone()

                    TextLabel.Name = "YS"

                    TextLabel.Position = UDim2.new(1, -50, 0, 17)

                    TextLabel.Text = "Y: "

                    TextLabel.Parent = FlyGui.Content

                    local TextLabel = TextLabel:Clone()

                    TextLabel.Name = "ZS"

                    TextLabel.Position = UDim2.new(1, -50, 0, 34)

                    TextLabel.Text = "Z: "

                    TextLabel.Parent = FlyGui.Content

                    local TextButton = Instance.new("TextButton")

                    TextButton.Name = "X+"

                    TextButton.Size = UDim2.new(0, 50, 0, 50)

                    TextButton.Position = UDim2.new(0, 0, 0, 100)

                    TextButton.BorderColor3 = Color3.new(0, 0, 0)

                    TextButton.BackgroundColor3 = Color3.new(0.9, 0, 0)

                    TextButton.TextColor3 = Color3.new(1, 1, 1)

                    TextButton.Text = "X +"

                    TextButton.FontSize = "Size18"

                    TextButton.Parent = FlyGui.Content

                    TextButton.MouseButton1Up:connect(function()

                        Flying = true

                        ExteriorVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)

                        ExteriorVelocityTarget = Vector3.new(FlySpeed, ExteriorVelocity.velocity.y, ExteriorVelocity.velocity.z)

                    end)

                    local TextButton = TextButton:Clone()

                    TextButton.Name = "X-"

                    TextButton.Position = UDim2.new(0, 100, 0, 100)

                    TextButton.Text = "X -"

                    TextButton.Parent = FlyGui.Content

                    TextButton.MouseButton1Up:connect(function()

                        Flying = true

                        ExteriorVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)

                        ExteriorVelocityTarget = Vector3.new(-FlySpeed, ExteriorVelocity.velocity.y, ExteriorVelocity.velocity.z)

                    end)

                    local TextButton = TextButton:Clone()

                    TextButton.Name = "Y+"

                    TextButton.Position = UDim2.new(0, 100, 0, 50)

                    TextButton.BackgroundColor3 = Color3.new(0, 0.9, 0)

                    TextButton.Text = "Y +"

                    TextButton.Parent = FlyGui.Content

                    TextButton.MouseButton1Up:connect(function()

                        Flying = true

                        ExteriorVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)

                        ExteriorVelocityTarget = Vector3.new(ExteriorVelocity.velocity.x, FlySpeed, ExteriorVelocity.velocity.z)

                    end)

                    local TextButton = TextButton:Clone()

                    TextButton.Name = "Y-"

                    TextButton.Position = UDim2.new(0, 100, 0, 150)

                    TextButton.Text = "Y -"

                    TextButton.Parent = FlyGui.Content

                    TextButton.MouseButton1Up:connect(function()

                        Flying = true

                        ExteriorVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)

                        ExteriorVelocityTarget = Vector3.new(ExteriorVelocity.velocity.x, -FlySpeed, ExteriorVelocity.velocity.z)

                    end)

                    local TextButton = TextButton:Clone()

                    TextButton.Name = "Z+"

                    TextButton.Position = UDim2.new(0, 50, 0, 50)

                    TextButton.BackgroundColor3 = Color3.new(0, 0, 0.9)

                    TextButton.Text = "Z +"

                    TextButton.Parent = FlyGui.Content

                    TextButton.MouseButton1Up:connect(function()

                        Flying = true

                        ExteriorVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)

                        ExteriorVelocityTarget = Vector3.new(ExteriorVelocity.velocity.x, ExteriorVelocity.velocity.y, FlySpeed)

                    end)

                    local TextButton = TextButton:Clone()

                    TextButton.Name = "Z-"

                    TextButton.Position = UDim2.new(0, 50, 0, 150)

                    TextButton.Text = "Z -"

                    TextButton.Parent = FlyGui.Content

                    TextButton.MouseButton1Up:connect(function()

                        Flying = true

                        ExteriorVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)

                        ExteriorVelocityTarget = Vector3.new(ExteriorVelocity.velocity.x, ExteriorVelocity.velocity.y, -FlySpeed)

                    end)

                    local TextButton = TextButton:Clone()

                    TextButton.Name = "S+"

                    TextButton.Position = UDim2.new(0, 0, 0, 50)

                    TextButton.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)

                    TextButton.Text = "S +"

                    TextButton.Parent = FlyGui.Content

                    local SpeedUp = false

                    TextButton.MouseButton1Down:connect(function()

                        SpeedUp = true

                        FlySpeed = FlySpeed + 1

                        for i = 0, 0.5, wait() do

                            if SpeedUp == false then return end

                            wait()

                        end

                        while SpeedUp == true do

                            FlySpeed = FlySpeed + 1

                            wait()

                        end

                    end)

                    TextButton.MouseButton1Up:connect(function()

                        SpeedUp = false

                    end)

                    local TextButton = TextButton:Clone()

                    TextButton.Name = "S-"

                    TextButton.Position = UDim2.new(0, 0, 0, 150)

                    TextButton.Text = "S -"

                    TextButton.Parent = FlyGui.Content

                    local SpeedDown = false

                    TextButton.MouseButton1Down:connect(function()

                        SpeedDown = true

                        FlySpeed = FlySpeed - 1

                        for i = 0, 0.5, wait() do

                            if SpeedDown == false then return end

                            wait()

                        end

                        while SpeedDown == true do

                            FlySpeed = FlySpeed - 1

                            wait()

                        end

                    end)

                    TextButton.MouseButton1Up:connect(function()

                        SpeedDown = false

                    end)

                    local TextButton = TextButton:Clone()

                    TextButton.Name = "Stop"

                    TextButton.Position = UDim2.new(0, 50, 0, 100)

                    TextButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)

                    TextButton.Text = "Stop"

                    TextButton.Parent = FlyGui.Content

                    TextButton.MouseButton1Up:connect(function()

                        Flying = true

                        ExteriorVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)

                        ExteriorVelocityTarget = Vector3.new()

                    end)

                    local TextButton = TextButton:Clone()

                    TextButton.Name = "Land"

                    TextButton.Size = UDim2.new(1, 0, 0, 50)

                    TextButton.Position = UDim2.new(0, 0, 0, 200)

                    TextButton.Text = "Land"

                    TextButton.Parent = FlyGui.Content

                    TextButton.MouseButton1Up:connect(function()

                        Flying = false

                        ExteriorVelocity.maxForce = Vector3.new()

                        ExteriorVelocityTarget = Vector3.new()

                    end)

                    local Divider = Instance.new("Frame")

                    Divider.Name = "Divider"

                    Divider.Size = UDim2.new(1, -30, 0, 2)

                    Divider.Position = UDim2.new(0, 15, 0, 257)

                    Divider.BorderSizePixel = 0

                    Divider.BackgroundColor3 = Color3.new(1, 1, 1)

                    Divider.Parent = FlyGui.Content

                    local TextButton = TextButton:Clone()

                    TextButton.Name = "Stabalize"

                    TextButton.Size = UDim2.new(1, -30, 0, 15)

                    TextButton.Position = UDim2.new(0, 15, 0, 270)

                    TextButton.Text = (FlyStabalize == false and "S" or "Des").. "tabalize"

                    TextButton.FontSize = "Size12"

                    TextButton.Parent = FlyGui.Content

                    TextButton.MouseButton1Up:connect(function()

                        if TeleportReady == false then return end

                        if FlyStabalize == false then

                            FlyStabalize = true

                            ExteriorGyro.maxTorque = Vector3.new(math.huge, 0, math.huge)

                            while FlyStabalize == true do

                                ExteriorGyro.cframe = CFrame.new(Exterior.Base.Position) * CFrame.new(0, 0, 10)

                                wait()

                            end

                        else

                            FlyStabalize = false

                            ExteriorGyro.maxTorque = Vector3.new()

                        end

                    end)

                    coroutine.wrap(function()

                        wait()

                        while TextButton.Parent ~= nil do

                            if TeleportReady == false then

                                TextButton.AutoButtonColor = false

                                TextButton.Text = "Please wait..."

                                TextButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)

                            else

                                TextButton.AutoButtonColor = true

                                TextButton.Text = (FlyStabalize == false and "S" or "Des").. "tabalize"

                                TextButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)

                            end

                            wait(0.1)

                        end

                    end)()

                    coroutine.wrap(function()

                        local TextSpeed = FlyGui.Content.Speed.Text

                        local TextXS = FlyGui.Content.XS.Text

                        local TextYS = FlyGui.Content.YS.Text

                        local TextZS = FlyGui.Content.ZS.Text

                        while FlyGui.Parent ~= nil do

                            FlyGui.Content.Speed.Text = TextSpeed .. FlySpeed

                            FlyGui.Content.XS.Text = TextXS .. ExteriorVelocity.velocity.x

                            FlyGui.Content.YS.Text = TextYS .. ExteriorVelocity.velocity.y

                            FlyGui.Content.ZS.Text = TextZS .. ExteriorVelocity.velocity.z

                            wait()

                        end

                    end)()

                end

            end

        elseif Seat:FindFirstChild("SeatWeld") == nil and FlyPlayer ~= nil then

            if FlyPlayer:FindFirstChild("PlayerGui") ~= nil then

                if FlyPlayer.PlayerGui:FindFirstChild("FlyGui") ~= nil then

                    FlyPlayer.PlayerGui.FlyGui:Remove()

                end

            end

            local Camera = game:service("InsertService"):LoadAsset(49712909).Camera

            Camera.CameraSubject.Value = FlyPlayer.Character.Humanoid

            Camera.CameraType.Value = Enum.CameraType.Custom.Value

            Camera.Disabled = false

            wait(0.05)

            Camera.Parent = FlyPlayer.Character

            FlyPlayer = nil

        end

    end

    local Seat = Interior:FindFirstChild("Weapon Seat")

    if Seat ~= nil then

        if Seat:FindFirstChild("SeatWeld") ~= nil and WeaponPlayer == nil then

            local Part1 = Seat.SeatWeld.Part1

            if Part1 ~= nil then

                WeaponPlayer = game:service("Players"):GetPlayerFromCharacter(Part1.Parent)

                if WeaponPlayer ~= nil then

                    local Base = [=[function Break(Position, Range, Damage, BreakChance, Source, Children)

    if Source == nil then Source = game:service("Workspace") end

    if Children == nil then Children = {} end

    for _, Part in pairs(Source:GetChildren()) do

        if Part:IsA("BasePart") then

            if (Part.Position - Position).magnitude < Range then

                table.insert(Children, Part)

                local Percent = 1 - ((Part.Position - Position).magnitude / Range)

                if Part.Anchored == false then

                    Part.Velocity = Part.Velocity + ((Part.Position - Position).unit * (Damage * Percent))

                end

                if BreakChance ~= nil then

                    if math.random(0, BreakChance * ((Part.Position - Position).magnitude / Range)) == 0 then

                        Part:BreakJoints()

                        if Part:GetMass() < Damage * 10 then

                            Part.Anchored = false

                        end

                    end

                end

                if Part.Parent:FindFirstChild("Humanoid") ~= nil then

                    pcall(function()

                        Part.Parent.Humanoid:TakeDamage(Damage * Percent)

                        if math.random(0, (1 - Percent) * 5) == 0 then Part.Parent.Humanoid.Sit = true end

                    end)

                end

            end

        end

        Break(Position, Range, Damage, BreakChance, Part, Children)

    end

    return Children

end

function PlaySound(Name, SoundId, Pitch, Volume, Looped, Parent)

    local NewScript = game:service("InsertService"):LoadAsset(54471119)["QuickScript"]

    NewScript.Name = "PlaySound"

    NewScript.NewSource.Value = [[local Sound = Instance.new("Sound") 

Sound.Name = "]] ..(Name == nil and "Sound" or Name).. [[" 

Sound.SoundId = "]] ..(SoundId == nil and "" or SoundId).. [[" 

Sound.Pitch = ]] ..(Pitch == nil and 1 or Pitch).. [[ 

Sound.Volume = ]] ..(Volume == nil and 1 or Volume).. [[ 

Sound.Looped = ]] ..(Looped == true and "true" or "false").. [[ 

Sound.Parent = script.Parent 

Sound:Play() 

script:Remove()]]

    NewScript.Debug:Remove()

    NewScript.Parent = Parent

end

function SetPartTouched(Function, Parent)

    pcall(function() Parent.TouchConnector:Remove() end)

    local NewScript = game:service("InsertService"):LoadAsset(54471119)["QuickScript"]

    NewScript.Name = "TouchConnector"

    NewScript.NewSource.Value = [[script.Parent.Touched:connect(function(Hit)

]] ..Function.. [[ 

end)]]

    NewScript.Debug:Remove()

    NewScript.Parent = Parent

end

]=]

                    WeaponLaser = Instance.new("HopperBin")

                    WeaponLaser.Name = "Laser"

                    game:service("InsertService"):LoadAsset(52060642):GetChildren()[1].Parent = WeaponLaser

                    local WeaponLaserScript = game:service("InsertService"):LoadAsset(54471119)["QuickLocalScript"]

                    WeaponLaserScript.Name = "Main"

                    WeaponLaserScript.NewSource.Value = Base ..[=[ 

local SourcePart = script.SourcePart.Value

local Button1Down = false

local Debounce = false

script.Parent.Selected:connect(function(Mouse)

    Mouse.Icon = "rbxasset://textures\\GunCursor.png"

    Mouse.Button1Down:connect(function()

        Button1Down = true

        if Debounce == true then

            PlaySound("Tick", "http://www.roblox.com/Asset/?id=14863866", 2, 1, false, SourcePart)

            return

        end

        Mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"

        Debounce = true

        while Button1Down == true do

            if Mouse.Target == nil then

                PlaySound("Tick", "http://www.roblox.com/Asset/?id=14863866", 1, 1, false, SourcePart)

            else

                local Position = _G.RCS.RayCast(CFrame.new(SourcePart.Position, Mouse.Hit.p) * CFrame.new(0, 0, -5), 500, 0.5)

                local Laser = Instance.new("Part", game:service("Workspace"))

                Laser.Name = "TARDIS Laser"

                Laser.BrickColor = BrickColor.new("Bright blue")

                Laser.TopSurface = 0

                Laser.BottomSurface = 0

                Laser.formFactor = "Custom"

                Laser.Transparency = 0.5

                Laser.Size = Vector3.new((script.Power.Value * 1.5), (script.Power.Value * 1.5), (SourcePart.Position - Position).magnitude)

                Laser.Anchored = true

                Laser.CanCollide = false

                Laser.CFrame = CFrame.new((SourcePart.Position + Position) / 2, Position)

                game:service("Debris"):AddItem(Laser, 3)

                PlaySound("Laser", "http://www.roblox.com/Asset/?id=13775480", 2, 1, false, Laser)

                local Explosion = Laser:Clone()

                Explosion.Parent = game:service("Workspace")

                Explosion.Name = "TARDIS Laser Explosion"

                Explosion.Transparency = 0

                Explosion.Size = Vector3.new(1, 1, 1)

                Explosion.CFrame = CFrame.new(Position)

                local Mesh = Instance.new("SpecialMesh", Explosion)

                Mesh.MeshType = "Sphere"

                game:service("Debris"):AddItem(Explosion, 3)

                local Glow = Explosion:Clone()

                Glow.Parent = game:service("Workspace")

                Glow.Name = "TARDIS Laser Glow"

                Glow.CFrame = CFrame.new(SourcePart.Position)

                game:service("Debris"):AddItem(Glow, 3)

                Break(Position, script.Power.Value * 20, script.Power.Value * 50, (1 - script.Power.Value) * 75 + 10)

                coroutine.wrap(function()

                    local OldCFrame = Laser.CFrame

                    for i = Laser.Transparency, 1, 0.05 do

                        Laser.Size = Vector3.new(Laser.Size.x / 1.05, Laser.Size.y / 1.05, Laser.Size.z)

                        Laser.CFrame = OldCFrame

                        Laser.Transparency = i

                        Laser.Anchored = true

                        Laser.Velocity = Vector3.new()

                        Laser.RotVelocity = Vector3.new()

                        wait()

                    end

                    Laser:Remove()

                end)()

                coroutine.wrap(function()

                    for i = Explosion.Transparency, 1, 0.025 do

                        Explosion.Mesh.Scale = Explosion.Mesh.Scale + Vector3.new((1 - i) * (script.Power.Value * 2.5), (1 - i) * (script.Power.Value * 2.5), (1 - i) * (script.Power.Value * 2.5))

                        Explosion.Transparency = i

                        Explosion.Anchored = true

                        Explosion.Velocity = Vector3.new()

                        Explosion.RotVelocity = Vector3.new()

                        wait()

                    end

                    Explosion:Remove()

                end)()

                coroutine.wrap(function()

                    for i = Glow.Transparency, 1, 0.075 do

                        Glow.Mesh.Scale = Glow.Mesh.Scale + Vector3.new((1 - i) * (script.Power.Value * 1.5), (1 - i) * (script.Power.Value * 1.5), (1 - i) * (script.Power.Value * 1.5))

                        Glow.Transparency = i

                        Glow.Anchored = true

                        Glow.Velocity = Vector3.new()

                        Glow.RotVelocity = Vector3.new()

                        wait()

                    end

                    Glow:Remove()

                end)()

            end

            wait((1 - script.Power.Value) * 2.25 + 0.75)

        end

        Mouse.Icon = "rbxasset://textures\\GunCursor.png"

        Debounce = false

    end)

    Mouse.Button1Up:connect(function()

        Button1Down = false

    end)

end)

script.Parent.Deselected:connect(function()

    Button1Down = false

end)]=]

                    Instance.new("ObjectValue", WeaponLaserScript)

                    WeaponLaserScript.Value.Value = Exterior.Light

                    WeaponLaserScript.Value.Name = "SourcePart"

                    Instance.new("NumberValue", WeaponLaserScript)

                    WeaponLaserScript.Value.Value = 1

                    WeaponLaserScript.Value.Name = "Power"

                    WeaponLaserScript.Parent = WeaponLaser

                    WeaponLaser.Parent = WeaponPlayer.Backpack

                    wait(0.05)

                    WeaponBomb = Instance.new("HopperBin", WeaponPlayer.Backpack)

                    WeaponBomb.Name = "Bomb"

                    local WeaponBombScript = game:service("InsertService"):LoadAsset(54471119)["QuickLocalScript"]

                    WeaponBombScript.Name = "Main"

                    WeaponBombScript.NewSource.Value = Base ..[=[ 

local SourcePart = script.SourcePart.Value

local Button1Down = false

local Debounce = false

script.Parent.Selected:connect(function(Mouse)

    Mouse.Icon = "rbxasset://textures\\GunCursor.png"

    Mouse.Button1Down:connect(function()

        Button1Down = true

        if Debounce == true then

            PlaySound("Tick", "http://www.roblox.com/Asset/?id=14863866", 2, 1, false, SourcePart)

            return

        end

        Mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"

        Debounce = true

        while Button1Down == true do

            local Bomb = Instance.new("Part", game:service("Workspace"))

            Bomb.Name = "TARDIS Bomb"

            Bomb.BrickColor = BrickColor.new("Bright blue")

            Bomb.TopSurface = 0

            Bomb.BottomSurface = 0

            Bomb.formFactor = "Custom"

            Bomb.Transparency = 0.5

            Bomb.Size = Vector3.new(1, 1, 1) * ((script.Power.Value * 5) + 1)

            Bomb.CFrame = SourcePart.CFrame * CFrame.new(0, (-script.Power.Value * 2.75) - 1, 0)

            local Mesh = Instance.new("SpecialMesh", Bomb)

            Mesh.MeshType = "Sphere"

            game:service("Debris"):AddItem(Bomb, 10)

            local BodyVelocity = Instance.new("BodyVelocity", Bomb)

            BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)

            BodyVelocity.velocity = Vector3.new(math.random(-10, 10), math.random(-500, -250), math.random(-10, 10))

            local Glow = Bomb:Clone()

            Glow.Parent = game:service("Workspace")

            Glow.Name = "TARDIS Bomb Glow"

            Glow.Size = Vector3.new(1, 1, 1)

            Glow.Anchored = true

            Glow.CanCollide = false

            Glow.CFrame = CFrame.new(SourcePart.Position)

            game:service("Debris"):AddItem(Glow, 3)

            coroutine.wrap(function()

                for i = 1, Bomb.Transparency, -0.075 do

                    Bomb.Transparency = i

                    wait()

                end

            end)()

            coroutine.wrap(function()

                for i = Glow.Transparency, 1, 0.075 do

                    Glow.Mesh.Scale = Glow.Mesh.Scale + (Vector3.new(1, 1, 1) * ((1 - i) * (script.Power.Value * 5) + 2))

                    Glow.Transparency = i

                    Glow.Anchored = true

                    Glow.Velocity = Vector3.new()

                    Glow.RotVelocity = Vector3.new()

                    wait()

                end

                Glow:Remove()

            end)()

            PlaySound("Bomb", "http://www.roblox.com/Asset/?id=13775480", 0.25, 1, false, Bomb)

            coroutine.wrap(function()

                wait(0.25)

                SetPartTouched([[

                    script.Parent.Parent = nil

                    local Explosion = Instance.new("Part", game:service("Workspace"))

                    Explosion.Name = "TARDIS Bomb Explosion"

                    Explosion.BrickColor = BrickColor.new("Bright blue")

                    Explosion.TopSurface = 0

                    Explosion.BottomSurface = 0

                    Explosion.formFactor = "Custom"

                    Explosion.Size = Vector3.new(1, 1, 1)

                    Explosion.Anchored = true

                    Explosion.CanCollide = false

                    Explosion.CFrame = CFrame.new(script.Parent.Position)

                    local Mesh = Instance.new("SpecialMesh", Explosion)

                    Mesh.MeshType = "Sphere"

                    Mesh.Scale = Vector3.new(10, 10, 10)

                    game:service("Debris"):AddItem(Explosion, 3)

                    local Sound = Instance.new("Sound", Explosion)

                    Sound.Name = "TARDIS Bomb Sound"

                    Sound.SoundId = "http://www.roblox.com/Asset/?id=2101159"

                    Sound.Volume = 1

                    Sound.Pitch = ((1 - script.Power.Value) * 3) + 2

                    Sound:Play()

                    Break(script.Parent.Position, script.Power.Value * 50, script.Power.Value * 150, (1 - script.Power.Value) * 25 + 1)

                    for i = Explosion.Transparency, 1, 0.025 do

                        Explosion.Mesh.Scale = Explosion.Mesh.Scale + (Vector3.new(1, 1, 1) * ((1 - i) * (script.Power.Value * 10) + 2))

                        Explosion.Transparency = i

                        Explosion.Anchored = true

                        Explosion.Velocity = Vector3.new()

                        Explosion.RotVelocity = Vector3.new()

                        wait()

                    end

                    Explosion:Remove()

                ]], Bomb)

            end)()

            wait((1 - script.Power.Value) * 5 + 1)

        end

        Mouse.Icon = "rbxasset://textures\\GunCursor.png"

        Debounce = false

    end)

    Mouse.Button1Up:connect(function()

        Button1Down = false

    end)

end)

script.Parent.Deselected:connect(function()

    Button1Down = false

end)]=]

                    Instance.new("ObjectValue", WeaponBombScript)

                    WeaponBombScript.Value.Value = Exterior.Base

                    WeaponBombScript.Value.Name = "SourcePart"

                    Instance.new("NumberValue", WeaponBombScript)

                    WeaponBombScript.Value.Value = 1

                    WeaponBombScript.Value.Name = "Power"

                    WeaponBombScript.Parent = WeaponBomb

                    WeaponBomb.Parent = WeaponPlayer.Backpack

                    coroutine.wrap(function()

                        while WeaponPlayer ~= nil do

                            if WeaponLaser:FindFirstChild("Main") == nil then

                                WeaponLaser:Remove()

                            else

                                if WeaponLaser.Main:FindFirstChild("Power") ~= nil then

                                    WeaponLaser.Main.Power.Value = EnergyToWeapon

                                else

                                    WeaponLaser:Remove()

                                end

                            end

                            if WeaponBomb:FindFirstChild("Main") == nil then

                                WeaponBomb:Remove()

                            else

                                if WeaponBomb.Main:FindFirstChild("Power") ~= nil then

                                    WeaponBomb.Main.Power.Value = EnergyToWeapon

                                else

                                    WeaponBomb:Remove()

                                end

                            end

                            if Exterior:FindFirstChild("Light") == nil then

                                WeaponLaser:Remove()

                            else

                                if Exterior.Light:FindFirstChild("Weld") == nil then

                                    WeaponLaser:Remove()

                                end

                            end

                            if Exterior:FindFirstChild("Base") == nil then

                                WeaponBomb:Remove()

                            end

                            wait()

                        end

                    end)()

                    wait(0.05)

                    local Camera = game:service("InsertService"):LoadAsset(49712909).Camera

                    Camera.CameraSubject.Value = Exterior.Base

                    Camera.CameraType.Value = Enum.CameraType.Track.Value

                    Camera.Disabled = false

                    wait(0.05)

                    Camera.Parent = Part1.Parent

                end

            end

        elseif Seat:FindFirstChild("SeatWeld") == nil and WeaponPlayer ~= nil then

            WeaponLaser.Parent = nil

            WeaponBomb.Parent = nil

            local Camera = game:service("InsertService"):LoadAsset(49712909).Camera

            Camera.CameraSubject.Value = WeaponPlayer.Character.Humanoid

            Camera.CameraType.Value = Enum.CameraType.Custom.Value

            Camera.Disabled = false

            wait(0.05)

            Camera.Parent = WeaponPlayer.Character

            WeaponPlayer = nil

        end

    end

    local Seat = Interior:FindFirstChild("Energy Seat")

    if Seat ~= nil then

        if Seat:FindFirstChild("SeatWeld") ~= nil and EnergyPlayer == nil then

            local Part1 = Seat.SeatWeld.Part1

            if Part1 ~= nil then

                EnergyPlayer = game:service("Players"):GetPlayerFromCharacter(Part1.Parent)

                if EnergyPlayer ~= nil then

                    local PlayerGui = EnergyPlayer:FindFirstChild("PlayerGui")

                    if PlayerGui == nil then return end

                    local EnergyGui = Instance.new("ScreenGui", PlayerGui)

                    EnergyGui.Name = "EnergyGui"

                    local Frame = Instance.new("Frame")

                    Frame.Name = "Content"

                    Frame.Size = UDim2.new(0, 500, 0, 550)

                    --Frame.Position = UDim2.new(0.5, -500 / 2, 0.5, -500 / 2)

                    Frame.Position = UDim2.new(0, 0, 0.5, -500 / 2)

                    Frame.BorderSizePixel = 1

                    Frame.BorderColor3 = Color3.new(0, 0, 0)

                    Frame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)

                    Frame.Parent = EnergyGui

                    local TextLabel = Instance.new("TextLabel")

                    TextLabel.Name = "Energy to Weapons"

                    TextLabel.Size = UDim2.new(1, -60, 0, 30)

                    TextLabel.Position = UDim2.new(0, 30, 0, 10)

                    TextLabel.BorderSizePixel = 0

                    TextLabel.BackgroundTransparency = 1

                    TextLabel.TextColor3 = Color3.new(1, 1, 1)

                    TextLabel.Text = "Energy to Weapons"

                    TextLabel.TextXAlignment = "Left"

                    TextLabel.FontSize = "Size14"

                    TextLabel.Parent = Frame

                    local EnergyToWeaponSlider1 = Instance.new("TextButton")

                    EnergyToWeaponSlider1.Name = "Energy to Weapons Slider BG"

                    EnergyToWeaponSlider1.AutoButtonColor = false

                    EnergyToWeaponSlider1.Text = ""

                    EnergyToWeaponSlider1.Size = UDim2.new(1, -30, 0, 50)

                    EnergyToWeaponSlider1.Position = UDim2.new(0, 15, 0, 50)

                    EnergyToWeaponSlider1.BorderSizePixel = 1

                    EnergyToWeaponSlider1.BorderColor3 = Color3.new(0, 0, 0)

                    EnergyToWeaponSlider1.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)

                    EnergyToWeaponSlider1.Parent = Frame

                    local EnergyToWeaponSlider2 = EnergyToWeaponSlider1:Clone()

                    EnergyToWeaponSlider2.Active = false

                    EnergyToWeaponSlider2.Name = "Energy to Weapons Slider"

                    EnergyToWeaponSlider2.Size = UDim2.new(EnergyToWeapon, -2, 1, -2)

                    EnergyToWeaponSlider2.Position = UDim2.new(0, 1, 0, 1)

                    EnergyToWeaponSlider2.BorderSizePixel = 0

                    EnergyToWeaponSlider2.BackgroundColor3 = Color3.new(EnergyToWeapon, 0, 0)

                    EnergyToWeaponSlider2.Parent = EnergyToWeaponSlider1

                    local EnergyToWeaponSliderDown = false

                    EnergyToWeaponSlider1.MouseButton1Down:connect(function() EnergyToWeaponSliderDown = true end)

                    EnergyToWeaponSlider1.MouseMoved:connect(function(x, y)

                        if EnergyToWeaponSliderDown == true then

                            EnergyToWeapon = (x - EnergyToWeaponSlider1.AbsolutePosition.x) / EnergyToWeaponSlider1.AbsoluteSize.x

                        end

                    end)

                    EnergyToWeaponSlider1.MouseButton1Up:connect(function() EnergyToWeaponSliderDown = false end)

                    EnergyToWeaponSlider1.MouseLeave:connect(function() EnergyToWeaponSliderDown = false end)

                    EnergyToWeaponSlider2.MouseButton1Down:connect(function() EnergyToWeaponSliderDown = true end)

                    EnergyToWeaponSlider2.MouseButton1Up:connect(function() EnergyToWeaponSliderDown = false end)

                    coroutine.wrap(function()

                        while true do

                            EnergyToWeaponSlider2.Size = UDim2.new(EnergyToWeapon, EnergyToWeaponSlider2.Size.X.Offset, EnergyToWeaponSlider2.Size.Y.Scale, EnergyToWeaponSlider2.Size.Y.Offset)

                            EnergyToWeaponSlider2.BackgroundColor3 = Color3.new(EnergyToWeapon, 0, 0)

                            wait()

                        end

                    end)()

 

                    local TextLabel = TextLabel:Clone()

                    TextLabel.Name = "Energy to Shields"

                    TextLabel.Position = UDim2.new(0, 30, 0, 110)

                    TextLabel.Text = "Energy to Shields"

                    TextLabel.Parent = Frame

                    local EnergyToShieldSlider1 = EnergyToWeaponSlider1:Clone()

                    EnergyToShieldSlider1.Name = "Energy to Shields Slider BG"

                    EnergyToShieldSlider1.Position = UDim2.new(0, 15, 0, 150)

                    EnergyToShieldSlider1.Parent = Frame

                    local EnergyToShieldSlider2 = EnergyToShieldSlider1["Energy to Weapons Slider"]

                    EnergyToShieldSlider2.Active = false

                    EnergyToShieldSlider2.Name = "Energy to Shields Slider"

                    EnergyToShieldSlider2.Size = UDim2.new(EnergyToShield, -2, 1, -2)

                    EnergyToShieldSlider2.BackgroundColor3 = Color3.new(0, 0, EnergyToShield)

                    EnergyToShieldSlider2.Parent = EnergyToShieldSlider1

                    local EnergyToShieldSliderDown = false

                    EnergyToShieldSlider1.MouseButton1Down:connect(function() EnergyToShieldSliderDown = true end)

                    EnergyToShieldSlider1.MouseMoved:connect(function(x, y)

                        if EnergyToShieldSliderDown == true then

                            EnergyToShield = (x - EnergyToShieldSlider1.AbsolutePosition.x) / EnergyToShieldSlider1.AbsoluteSize.x

                        end

                    end)

                    EnergyToShieldSlider1.MouseButton1Up:connect(function() EnergyToShieldSliderDown = false end)

                    EnergyToShieldSlider1.MouseLeave:connect(function() EnergyToShieldSliderDown = false end)

                    EnergyToShieldSlider2.MouseButton1Down:connect(function() EnergyToShieldSliderDown = true end)

                    EnergyToShieldSlider2.MouseButton1Up:connect(function() EnergyToShieldSliderDown = false end)

                    coroutine.wrap(function()

                        while true do

                            EnergyToShieldSlider2.Size = UDim2.new(EnergyToShield, EnergyToShieldSlider2.Size.X.Offset, EnergyToShieldSlider2.Size.Y.Scale, EnergyToShieldSlider2.Size.Y.Offset)

                            EnergyToShieldSlider2.BackgroundColor3 = Color3.new(EnergyToShield, 0, EnergyToShield)

                            wait()

                        end

                    end)()

 

                    local TextLabel = TextLabel:Clone()

                    TextLabel.Name = "Energy to Fly"

                    TextLabel.Position = UDim2.new(0, 30, 0, 210)

                    TextLabel.Text = "Energy to Thrusters"

                    TextLabel.Parent = Frame

                    local EnergyToFlySlider1 = EnergyToWeaponSlider1:Clone()

                    EnergyToFlySlider1.Name = "Energy to Fly Slider BG"

                    EnergyToFlySlider1.Position = UDim2.new(0, 15, 0, 250)

                    EnergyToFlySlider1.Parent = Frame

                    local EnergyToFlySlider2 = EnergyToFlySlider1["Energy to Weapons Slider"]

                    EnergyToFlySlider2.Active = false

                    EnergyToFlySlider2.Name = "Energy to Fly Slider"

                    EnergyToFlySlider2.Size = UDim2.new(EnergyToShield, -2, 1, -2)

                    EnergyToFlySlider2.BackgroundColor3 = Color3.new(0, 0, EnergyToShield)

                    EnergyToFlySlider2.Parent = EnergyToFlySlider1

                    local EnergyToFlySliderDown = false

                    EnergyToFlySlider1.MouseButton1Down:connect(function() EnergyToFlySliderDown = true end)

                    EnergyToFlySlider1.MouseMoved:connect(function(x, y)

                        if EnergyToFlySliderDown == true then

                            EnergyToFly = (x - EnergyToFlySlider1.AbsolutePosition.x) / EnergyToFlySlider1.AbsoluteSize.x

                        end

                    end)

                    EnergyToFlySlider1.MouseButton1Up:connect(function() EnergyToFlySliderDown = false end)

                    EnergyToFlySlider1.MouseLeave:connect(function() EnergyToFlySliderDown = false end)

                    EnergyToFlySlider2.MouseButton1Down:connect(function() EnergyToFlySliderDown = true end)

                    EnergyToFlySlider2.MouseButton1Up:connect(function() EnergyToFlySliderDown = false end)

                    coroutine.wrap(function()

                        while true do

                            EnergyToFlySlider2.Size = UDim2.new(EnergyToFly, EnergyToFlySlider2.Size.X.Offset, EnergyToFlySlider2.Size.Y.Scale, EnergyToFlySlider2.Size.Y.Offset)

                            EnergyToFlySlider2.BackgroundColor3 = Color3.new(EnergyToFly, EnergyToFly, EnergyToFly)

                            wait()

                        end

                    end)()

 

                    local TextLabel = TextLabel:Clone()

                    TextLabel.Name = "Energy to Teleport"

                    TextLabel.Position = UDim2.new(0, 30, 0, 310)

                    TextLabel.Text = "Energy to Teleportation Matrix"

                    TextLabel.Parent = Frame

                    local EnergyToTeleportSlider1 = EnergyToWeaponSlider1:Clone()

                    EnergyToTeleportSlider1.Name = "Energy to Fly Slider BG"

                    EnergyToTeleportSlider1.Position = UDim2.new(0, 15, 0, 350)

                    EnergyToTeleportSlider1.Parent = Frame

                    local EnergyToTeleportSlider2 = EnergyToTeleportSlider1["Energy to Weapons Slider"]

                    EnergyToTeleportSlider2.Active = false

                    EnergyToTeleportSlider2.Name = "Energy to Fly Slider"

                    EnergyToTeleportSlider2.Size = UDim2.new(EnergyToShield, -2, 1, -2)

                    EnergyToTeleportSlider2.BackgroundColor3 = Color3.new(0, 0, EnergyToShield)

                    EnergyToTeleportSlider2.Parent = EnergyToTeleportSlider1

                    local EnergyToTeleportSliderDown = false

                    EnergyToTeleportSlider1.MouseButton1Down:connect(function() EnergyToTeleportSliderDown = true end)

                    EnergyToTeleportSlider1.MouseMoved:connect(function(x, y)

                        if EnergyToTeleportSliderDown == true then

                            EnergyToTeleport = (x - EnergyToTeleportSlider1.AbsolutePosition.x) / EnergyToTeleportSlider1.AbsoluteSize.x

                        end

                    end)

                    EnergyToTeleportSlider1.MouseButton1Up:connect(function() EnergyToTeleportSliderDown = false end)

                    EnergyToTeleportSlider1.MouseLeave:connect(function() EnergyToTeleportSliderDown = false end)

                    EnergyToTeleportSlider2.MouseButton1Down:connect(function() EnergyToTeleportSliderDown = true end)

                    EnergyToTeleportSlider2.MouseButton1Up:connect(function() EnergyToTeleportSliderDown = false end)

                    coroutine.wrap(function()

                        while true do

                            EnergyToTeleportSlider2.Size = UDim2.new(EnergyToTeleport, EnergyToTeleportSlider2.Size.X.Offset, EnergyToTeleportSlider2.Size.Y.Scale, EnergyToTeleportSlider2.Size.Y.Offset)

                            EnergyToTeleportSlider2.BackgroundColor3 = Color3.new(0, 0, EnergyToTeleport)

                            wait()

                        end

                    end)()

 

                    local TextLabel = TextLabel:Clone()

                    TextLabel.Name = "Energy to Repair"

                    TextLabel.Position = UDim2.new(0, 30, 0, 410)

                    TextLabel.Text = "Energy to Repair Functions"

                    TextLabel.Parent = Frame

                    local EnergyToRepairSlider1 = EnergyToWeaponSlider1:Clone()

                    EnergyToRepairSlider1.Name = "Energy to Fly Slider BG"

                    EnergyToRepairSlider1.Position = UDim2.new(0, 15, 0, 450)

                    EnergyToRepairSlider1.Parent = Frame

                    local EnergyToRepairSlider2 = EnergyToRepairSlider1["Energy to Weapons Slider"]

                    EnergyToRepairSlider2.Active = false

                    EnergyToRepairSlider2.Name = "Energy to Fly Slider"

                    EnergyToRepairSlider2.Size = UDim2.new(EnergyToShield, -2, 1, -2)

                    EnergyToRepairSlider2.BackgroundColor3 = Color3.new(0, 0, EnergyToShield)

                    EnergyToRepairSlider2.Parent = EnergyToRepairSlider1

                    local EnergyToRepairSliderDown = false

                    EnergyToRepairSlider1.MouseButton1Down:connect(function() EnergyToRepairSliderDown = true end)

                    EnergyToRepairSlider1.MouseMoved:connect(function(x, y)

                        if EnergyToRepairSliderDown == true then

                            EnergyToRepair = (x - EnergyToRepairSlider1.AbsolutePosition.x) / EnergyToRepairSlider1.AbsoluteSize.x

                        end

                    end)

                    EnergyToRepairSlider1.MouseButton1Up:connect(function() EnergyToRepairSliderDown = false end)

                    EnergyToRepairSlider1.MouseLeave:connect(function() EnergyToRepairSliderDown = false end)

                    EnergyToRepairSlider2.MouseButton1Down:connect(function() EnergyToRepairSliderDown = true end)

                    EnergyToRepairSlider2.MouseButton1Up:connect(function() EnergyToRepairSliderDown = false end)

                    coroutine.wrap(function()

                        while true do

                            EnergyToRepairSlider2.Size = UDim2.new(EnergyToRepair, EnergyToRepairSlider2.Size.X.Offset, EnergyToRepairSlider2.Size.Y.Scale, EnergyToRepairSlider2.Size.Y.Offset)

                            EnergyToRepairSlider2.BackgroundColor3 = Color3.new(0, 0, EnergyToRepair)

                            wait()

                        end

                    end)()

 

                    local TextLabel = TextLabel:Clone()

                    TextLabel.Name = "Energy Usage"

                    TextLabel.Size = UDim2.new(1, -60, 0, 30)

                    TextLabel.Position = UDim2.new(0, 30, 1, -40)

                    TextLabel.BorderSizePixel = 0

                    TextLabel.BackgroundTransparency = 1

                    TextLabel.TextColor3 = Color3.new(1, 1, 1)

                    TextLabel.Text = "Energy used: "

                    TextLabel.TextXAlignment = "Left"

                    TextLabel.FontSize = "Size14"

                    TextLabel.Parent = Frame

                    coroutine.wrap(function()

                        local Prefix = TextLabel.Text

                        while true do

                            while EnergyToWeapon + EnergyToShield + EnergyToFly + EnergyToTeleport + EnergyToRepair > EnergyMax do

                                if EnergyToWeaponSliderDown ~= true then EnergyToWeapon = EnergyToWeapon - 0.001 end

                                if EnergyToShieldSliderDown ~= true then EnergyToShield = EnergyToShield - 0.001 end

                                if EnergyToFlySliderDown ~= true then EnergyToFly = EnergyToFly - 0.001 end

                                if EnergyToTeleportSliderDown ~= true then EnergyToTeleport = EnergyToTeleport - 0.001 end

                                if EnergyToRepairSliderDown ~= true then EnergyToRepair = EnergyToRepair - 0.001 end

                            end

 

                            if EnergyToWeapon > 1 then EnergyToWeapon = 1 end

                            if EnergyToShield > 1 then EnergyToShield = 1 end

                            if EnergyToFly > 1 then EnergyToFly = 1 end

                            if EnergyToTeleport > 1 then EnergyToTeleport = 1 end

                            if EnergyToRepair > 1 then EnergyToRepair = 1 end

 

                            if EnergyToWeapon < 0 then EnergyToWeapon = 0 end

                            if EnergyToShield < 0 then EnergyToShield = 0 end

                            if EnergyToFly < 0 then EnergyToFly = 0 end

                            if EnergyToTeleport < 0 then EnergyToTeleport = 0 end

                            if EnergyToRepair < 0 then EnergyToRepair = 0 end

 

                            TextLabel.Text = Prefix..tostring(math.ceil(((EnergyToWeapon + EnergyToShield + EnergyToFly + EnergyToTeleport + EnergyToRepair) * 100) / EnergyMax)).. "%"

                            wait()

                        end

                    end)()

                end

            end

        elseif Seat:FindFirstChild("SeatWeld") == nil and EnergyPlayer ~= nil then

            if EnergyPlayer:FindFirstChild("PlayerGui") ~= nil then

                if EnergyPlayer.PlayerGui:FindFirstChild("EnergyGui") ~= nil then

                    EnergyPlayer.PlayerGui.EnergyGui:Remove()

                end

            end

            EnergyPlayer = nil

        end

    end

    if DamageHealth <= DamageMaxHealth / 10 then

        pcall(function() if DamageEffect[1].Parent == nil then DamageEffect[1] = nil end end)

        if DamageEffect[1] == nil then

            DamageEffect[1] = DamageEffectBase:Clone()

            DamageEffect[1].Parent = Exterior

            DamageEffect[1].Fire.Enabled = true

            DamageEffect[1].Fire.Heat = 10

            DamageEffect[1].Fire.Size = 10

            DamageEffect[1].Smoke.Enabled = true

            DamageEffect[1].Smoke.RiseVelocity = 5

            DamageEffect[1].Smoke.Size = 8

            DamageEffect[1].Smoke.Color = Color3.new(0.3, 0.3, 0.3)

            DamageEffect[1]:BreakJoints()

        end

        while DamageEffectPart[1] == nil do

            local Choice = math.random(2, #Exterior:GetChildren())

            for i, Part in pairs(Exterior:GetChildren()) do

                if i == Choice and Part:FindFirstChild("Weld") ~= nil then

                    DamageEffectPart[1] = Part

                end

            end

        end

        DamageEffect[1].CFrame = CFrame.new(DamageEffectPart[1].Position)

    else

        pcall(function() DamageEffect[1]:Remove() end)

        pcall(function() DamageEffectPart[1] = nil end)

    end

    if DamageHealth <= DamageMaxHealth / 5 then

        pcall(function() if DamageEffect[2].Parent == nil then DamageEffect[2] = nil end end)

        if DamageEffect[2] == nil then

            DamageEffect[2] = DamageEffectBase:Clone()

            DamageEffect[2].Parent = Exterior

            DamageEffect[2].Fire.Enabled = true

            DamageEffect[2].Fire.Heat = 10

            DamageEffect[2].Fire.Size = 10

            DamageEffect[2].Smoke.Enabled = true

            DamageEffect[2].Smoke.RiseVelocity = 5

            DamageEffect[2].Smoke.Size = 8

            DamageEffect[2].Smoke.Color = Color3.new(0.3, 0.3, 0.3)

            DamageEffect[2]:BreakJoints()

        end

        while DamageEffectPart[2] == nil do

            local Choice = math.random(2, #Exterior:GetChildren())

            for i, Part in pairs(Exterior:GetChildren()) do

                if i == Choice and Part:FindFirstChild("Weld") ~= nil then

                    DamageEffectPart[2] = Part

                end

            end

        end

        DamageEffect[2].CFrame = CFrame.new(DamageEffectPart[2].Position)

    else

        pcall(function() DamageEffect[1]:Remove() end)

        pcall(function() DamageEffectPart[2] = nil end)

    end

    if DamageHealth <= DamageMaxHealth / 2 then

        pcall(function() if DamageEffect[2].Parent == nil then DamageEffect[2] = nil end end)

        if DamageEffect[2] == nil then

            DamageEffect[2] = DamageEffectBase:Clone()

            DamageEffect[2].Parent = Exterior

            DamageEffect[2].Smoke.Enabled = true

            DamageEffect[2].Smoke.RiseVelocity = 4

            DamageEffect[2].Smoke.Size = 3

            DamageEffect[2]:BreakJoints()

        end

        while DamageEffectPart[2] == nil do

            local Choice = math.random(2, #Exterior:GetChildren())

            for i, Part in pairs(Exterior:GetChildren()) do

                if i == Choice and Part:FindFirstChild("Weld") ~= nil then

                    DamageEffectPart[2] = Part

                end

            end

        end

        DamageEffect[2].CFrame = CFrame.new(DamageEffectPart[2].Position)

    else

        pcall(function() DamageEffect[2]:Remove() end)

        pcall(function() DamageEffectPart[2] = nil end)

    end

    if FlySpeed > 100 then

        FlySpeed = 100

    elseif FlySpeed < 10 then

        FlySpeed = 10

    end

    wait()

end
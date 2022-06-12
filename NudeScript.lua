----------------------------------------[[ Tiz ]]------------------------------------------------------------------------------------------
--script.Parent = nil

local Me = game:GetService("Players").LocalPlayer
local Torso = Me.Character:FindFirstChild("Torso")

local Size =   1
local Speed =  10

HitFunctions = {
        [1] = function(Hum)
                Hum.Sit = true
        end;
        [2] = function(Hum)
                Hum.Jump = true
        end;
}

local Tool = Instance.new("HopperBin")
Tool.Name = "Shoot Q&E"
Tool.Parent = Me.Backpack

function ReDo()
        Me:ClearCharacterAppearance()
        wait(0.1)
        Me.Character.Head.BrickColor = BrickColor.new("Cool yellow")
        Me.Character.Torso.BrickColor = BrickColor.new("Cool yellow")
        Me.Character["Right Arm"].BrickColor = BrickColor.new("Cool yellow")
        Me.Character["Right Leg"].BrickColor = BrickColor.new("Cool yellow")
        Me.Character["Left Leg"].BrickColor = BrickColor.new("Cool yellow")
        Me.Character["Left Arm"].BrickColor = BrickColor.new("Cool yellow")
        pcall(function() Me.Character.Torso.roblox:Destroy() end)

        local Right = Instance.new("Part", Me.Character)
        Right.Name = "Right Bob"
        Right.Size = Vector3.new(1,1,1)
        Right.TopSurface = "Smooth"
        Right.BottomSurface = "Smooth"
        Right.Position = Vector3.new(0,10,0)
        Right.CanCollide = false
        Right.BrickColor = BrickColor.new("Cool yellow")

        local Mesh11 = Instance.new("SpecialMesh", Right)
        Mesh11.MeshType = "Sphere"
        coroutine.wrap(function() while wait() do Mesh11.Scale = Vector3.new(Size,Size,Size) end end)()

        local Weld11 = Instance.new("Weld", Right)
        Weld11.Part0 = Torso
        Weld11.Part1 = Right
        coroutine.wrap(function() while wait() do Weld11.C0 = CFrame.new(0.5,0.3,-0.6) end end)()


        local RightN = Instance.new("Part", Me.Character)
        RightN.Name = "Right Nip"
        RightN.Size = Vector3.new(1,1,1)
        RightN.TopSurface = "Smooth"
        RightN.BottomSurface = "Smooth"
        RightN.Position = Vector3.new(0,10,0)
        RightN.CanCollide = false
        RightN.BrickColor = BrickColor.new("Pink")

        local Mesh12 = Instance.new("SpecialMesh", RightN)
        Mesh12.MeshType = "Sphere"
        coroutine.wrap(function() while wait() do Mesh12.Scale = Vector3.new(Size/5,Size/5,Size/5) end end)()

        local Weld12 = Instance.new("Weld", RightN)
        Weld12.Part0 = Right
        Weld12.Part1 = RightN
        coroutine.wrap(function() while wait() do Weld12.C0 = CFrame.new(0,0,Weld11.C0.X*Size*-1) end end)()




        local Left = Instance.new("Part", Me.Character)
        Left.Name = "Left Bob"
        Left.Size = Vector3.new(1,1,1)
        Left.TopSurface = "Smooth"
        Left.BottomSurface = "Smooth"
        Left.Position = Vector3.new(0,10,0)
        Left.CanCollide = false
        Left.BrickColor = BrickColor.new("Cool yellow")

        local Mesh21 = Instance.new("SpecialMesh", Left)
        Mesh21.MeshType = "Sphere"
        coroutine.wrap(function() while wait() do Mesh21.Scale = Vector3.new(Size,Size,Size) end end)()

        local Weld21 = Instance.new("Weld", Left)
        Weld21.Part0 = Torso
        Weld21.Part1 = Left
        coroutine.wrap(function() while wait() do Weld21.C0 = CFrame.new(-0.5,0.3,-0.6) end end)()


        local LeftN = Instance.new("Part", Me.Character)
        LeftN.Name = "Left Nip"
        LeftN.Size = Vector3.new(1,1,1)
        LeftN.TopSurface = "Smooth"
        LeftN.BottomSurface = "Smooth"
        LeftN.Position = Vector3.new(0,10,0)
        LeftN.CanCollide = false
        LeftN.BrickColor = BrickColor.new("Pink")

        local Mesh22 = Instance.new("SpecialMesh", LeftN)
        Mesh22.MeshType = "Sphere"
        coroutine.wrap(function() while wait() do Mesh22.Scale = Vector3.new(Size/5,Size/5,Size/5) end end)()

        local Weld22 = Instance.new("Weld", LeftN)
        Weld22.Part0 = Left
        Weld22.Part1 = LeftN
        coroutine.wrap(function() while wait() do Weld22.C0 = CFrame.new(0,0,Weld21.C0.X*Size) end end)()




        local Vag = Instance.new("Part", Me.Character)
        Vag.Name = "V a g i n a l Intake"
        Vag.Size = Vector3.new(1,1,1)
        Vag.TopSurface = "Smooth"
        Vag.BottomSurface = "Smooth"
        Vag.Position = Vector3.new(0,10,0)
        Vag.CanCollide = false
        Vag.BrickColor = BrickColor.new("Pink")

        local VagMesh = Instance.new("SpecialMesh", Vag)
        VagMesh.MeshType = "Sphere"
        VagMesh.Scale = Vector3.new(0.5,0.7,0.4)

        local VagWeld = Instance.new("Weld", Vag)
        VagWeld.Part0 = Torso
        VagWeld.Part1 = Vag
        VagWeld.C0 = CFrame.new(0,-1,-0.4)
end

Me:ClearCharacterAppearance()
wait(0.1)
Me.Character.Head.BrickColor = BrickColor.new("Cool yellow")
Me.Character.Torso.BrickColor = BrickColor.new("Cool yellow")
Me.Character["Right Arm"].BrickColor = BrickColor.new("Cool yellow")
Me.Character["Right Leg"].BrickColor = BrickColor.new("Cool yellow")
Me.Character["Left Leg"].BrickColor = BrickColor.new("Cool yellow")
Me.Character["Left Arm"].BrickColor = BrickColor.new("Cool yellow")
pcall(function() Me.Character.Torso.roblox:Destroy() end)

local Right = Instance.new("Part", Me.Character)
Right.Name = "Right Bob"
Right.Size = Vector3.new(1,1,1)
Right.TopSurface = "Smooth"
Right.BottomSurface = "Smooth"
Right.Position = Vector3.new(0,10,0)
Right.CanCollide = false
Right.BrickColor = BrickColor.new("Cool yellow")

local Mesh11 = Instance.new("SpecialMesh", Right)
Mesh11.MeshType = "Sphere"
coroutine.wrap(function() while wait() do Mesh11.Scale = Vector3.new(Size,Size,Size) end end)()

local Weld11 = Instance.new("Weld", Right)
Weld11.Part0 = Torso
Weld11.Part1 = Right
coroutine.wrap(function() while wait() do Weld11.C0 = CFrame.new(0.5,0.3,-0.6) end end)()


local RightN = Instance.new("Part", Me.Character)
RightN.Name = "Right Nip"
RightN.Size = Vector3.new(1,1,1)
RightN.TopSurface = "Smooth"
RightN.BottomSurface = "Smooth"
RightN.Position = Vector3.new(0,10,0)
RightN.CanCollide = false
RightN.BrickColor = BrickColor.new("Pink")

local Mesh12 = Instance.new("SpecialMesh", RightN)
Mesh12.MeshType = "Sphere"
coroutine.wrap(function() while wait() do Mesh12.Scale = Vector3.new(Size/5,Size/5,Size/5) end end)()

local Weld12 = Instance.new("Weld", RightN)
Weld12.Part0 = Right
Weld12.Part1 = RightN
coroutine.wrap(function() while wait() do Weld12.C0 = CFrame.new(0,0,Weld11.C0.X*Size*-1) end end)()




local Left = Instance.new("Part", Me.Character)
Left.Name = "Left Bob"
Left.Size = Vector3.new(1,1,1)
Left.TopSurface = "Smooth"
Left.BottomSurface = "Smooth"
Left.Position = Vector3.new(0,10,0)
Left.CanCollide = false
Left.BrickColor = BrickColor.new("Cool yellow")

local Mesh21 = Instance.new("SpecialMesh", Left)
Mesh21.MeshType = "Sphere"
coroutine.wrap(function() while wait() do Mesh21.Scale = Vector3.new(Size,Size,Size) end end)()

local Weld21 = Instance.new("Weld", Left)
Weld21.Part0 = Torso
Weld21.Part1 = Left
coroutine.wrap(function() while wait() do Weld21.C0 = CFrame.new(-0.5,0.3,-0.6) end end)()


local LeftN = Instance.new("Part", Me.Character)
LeftN.Name = "Left Nip"
LeftN.Size = Vector3.new(1,1,1)
LeftN.TopSurface = "Smooth"
LeftN.BottomSurface = "Smooth"
LeftN.Position = Vector3.new(0,10,0)
LeftN.CanCollide = false
LeftN.BrickColor = BrickColor.new("Pink")

local Mesh22 = Instance.new("SpecialMesh", LeftN)
Mesh22.MeshType = "Sphere"
coroutine.wrap(function() while wait() do Mesh22.Scale = Vector3.new(Size/5,Size/5,Size/5) end end)()

local Weld22 = Instance.new("Weld", LeftN)
Weld22.Part0 = Left
Weld22.Part1 = LeftN
coroutine.wrap(function() while wait() do Weld22.C0 = CFrame.new(0,0,Weld21.C0.X*Size) end end)()




local Vag = Instance.new("Part", Me.Character)
Vag.Name = "V a g i n a l Intake"
Vag.Size = Vector3.new(1,1,1)
Vag.TopSurface = "Smooth"
Vag.BottomSurface = "Smooth"
Vag.Position = Vector3.new(0,10,0)
Vag.CanCollide = false
Vag.BrickColor = BrickColor.new("Pink")

local VagMesh = Instance.new("SpecialMesh", Vag)
VagMesh.MeshType = "Sphere"
VagMesh.Scale = Vector3.new(0.5,0.7,0.4)

local VagWeld = Instance.new("Weld", Vag)
VagWeld.Part0 = Torso
VagWeld.Part1 = Vag
VagWeld.C0 = CFrame.new(0,-1,-0.4)




Tool.Selected:connect(function(Mouse)
        local function MakeMilk(Tiz)
                coroutine.wrap(function()
                        local IsTouched = false
                        local Pos = Mouse.Hit.p
                        local Mlk = Instance.new("Part", Me.Character)
                        Mlk.Name = "Milky"
                        Mlk.Position = Tiz.Position - Vector3.new(0,2,0)
                        Mlk.Size = Vector3.new(1,1,1)
                        Mlk.TopSurface = "Smooth"
                        Mlk.BottomSurface = "Smooth"
                        Mlk.Position = Tiz.Position
                        Mlk.BrickColor = BrickColor.new("White")
                        Mlk.Shape = "Ball"
                        Mlk.CanCollide = false
                        local MlkMesh = Instance.new("SpecialMesh", Mlk)
                        MlkMesh.MeshType = "Sphere"
                        MlkMesh.Scale = Vector3.new(Size/5,Size/5,Size/5)
                        local BP = Instance.new("BodyPosition", Mlk)
                        BP.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                        BP.position = Tiz.Position - Vector3.new(0,2,0)
                        Mlk.Touched:connect(function(Hit)
                                if Hit.Parent ~= Me.Character then
                                        IsTouched = true
                                end
                                local Humanoid = Mouse.Target.Parent:findFirstChild("Humanoid")
                                if Humanoid ~= nil then
                                        if Mouse.Target.Parent.Name ~= "LuaModelMaker" then
                                                HitFunctions[math.random(1,#HitFunctions)](Humanoid)
                                        end
                                end
                        end)
                        wait(0.1)
                        for i = 0,100,Speed do
                                BP.position = Tiz.Position:Lerp(Pos, i/100)
                                if IsTouched == true then
                                        Mlk.Anchored = true
                                        BP:Destroy()
                                        break
                                end
                                wait()
                        end
                        wait()
                        BP.position = Pos
                        wait(1)
                        Mlk:remove()
                end)()
        end

        Mouse.KeyDown:connect(function(Key)
                if Key == "q" then
                        MakeMilk(LeftN)
                end
                if Key == "e" then
                        MakeMilk(RightN)
                end
        end)
end)

coroutine.wrap(function()
        for i = 1,300 do
                Size = Size + i/100000
                wait(0.3)
        end
end)()


--[[Me.CharacterAdded:connect(function()
        wait(5)
        ReDo()
end)]]

-- MediaFire
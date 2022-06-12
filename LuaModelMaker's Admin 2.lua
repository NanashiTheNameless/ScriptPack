--[[mediafire]]--

Admins = {
    {Name = "yfc", Rank = 3, PressValue = "100"};
    {Name = "NoName", Rank = 3, PressValue = "99"};
}

function Output(Player, Table)   
    Disks = {}
    Table[1][#Table[1] + 1] = "Mayhem Admin V2 made by Me"
    for Arguments, Objects in pairs(Table) do
        local Disk = Instance.new("Part", Workspace)
        Disk.Size = Vector3.new(4, 1.2, 4)
        Disk.Transparency = 0.5
        Disk.BrickColor = BrickColor.new(Objects[2])
        Disk.Name = "Disk"
        Disk.CanCollide = false
        Disk.Position = Player.Character.Torso.Position
        table.insert(Disks, Disk)
        
        local Billboard = Instance.new("BillboardGui", Disk)
        Billboard.Adornee = Disk
        Billboard.Enabled = true
        Billboard.Active = true
        Billboard.Size = UDim2.new(0.3, 0, 0.05, 0)
        Billboard.ExtentsOffset = Vector3.new(0, 2.5, 0)
        
        local Text = Instance.new("TextLabel", Billboard)
        Text.Text = Objects[1]
        Text.TextColor3 = BrickColor.new(Objects[2]).Color
        Text.BackgroundTransparency = 1
        Text.Size = UDim2.new(1, 0, 1, 0)
        Text.FontSize = "Size12"
        Text.Font = "ArialBold"
        local Mesh = Instance.new("CylinderMesh", Disk)
        
        local Box = Instance.new("SelectionBox", Disk)
        Box.Transparency = 0.4
        Box.Adornee = Disk
        Box.Color = BrickColor.new(Objects[2])
        
        local ClickDetector = Instance.new("ClickDetector", Disk)
        ClickDetector.MaxActivationDistance = math.huge
        ClickDetector.Clicked:connect(function()
            for i,v in pairs(Disks) do
                pcall(function() v:Destroy() end)
            end)
        
        local Fire = Instance.new("Fire", Disk)
        Fire.Size = 6
        Fire.Heat = 0
        Fire.Color = BrickColor.new(Objects[2]).Color
        Fire.SecondaryColor = BrickColor.new(Objects[2]).Color
        
        local BP = Instance.new("BodyPosition", Disk)
        BP.position = Player.Character.Torso.Position
        BP.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        
        local BG = Instance.new("BodyGyro", Disk)
        BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
        coroutine.wrap(function() while wait() do
            if Player.Character ~= nil then
                Half = math.floor(#Disks /2)
                for i = 90, -90, -180/(#Disks - 1) do
                    local DiskPosition = Player.Character.Torso.CFrame * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, -15 - (Stretch))
 
                    pcall(function() BP.position = DiskPosition.p end)
                    pcall(function() BG.cframe = DiskPosition * CFrame.Angles(math.rad(70), 0, 0) end)
                end

                        if #Disks == 1 then
                                local NewPostion = Player.Character.Torso.CFrame + Player.Character.Torso.CFrame.lookVector * 10
 
                                pcall(function() BP.position = NewPosition.p end)
                                pcall(function() MP.cframe = NewPosition * CFrame.Angles(math.rad(70), 0, 0) end)
                        end
            end
        end end)()
    end
end
Output(game.Players.yfc, {{"This is a test to see if MAV2 is working.", "Bright blue"}, {"If you can see this, it is working properly.", "Really blue"}})
Commands = {"No commands yet"}
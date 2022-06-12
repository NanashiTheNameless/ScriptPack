function Esp(player, username)
    if player ~= game:service("Players").LocalPlayer then
    if player.Character  then
    local torso = player.Character:FindFirstChild("Torso")
    if torso then
    local base = Instance.new("BillboardGui")
    local esP = Instance.new("Frame", base)
    base.AlwaysOnTop = true
    base.Enabled = true
    base.Size = UDim2.new(4.5,0,6,0)
    base.StudsOffset = Vector3.new(0, -0.6, 0)
    esP.BackgroundColor3 = Color3.new(0,255,255)
    esP.BackgroundTransparency = 0.8
    esP.BorderSizePixel = 1
    esP.Size = UDim2.new(1,0,1,0)
    if base and workspace.CurrentCamera then
    base.Name = username
    base.Parent = workspace.CurrentCamera
    base.Adornee = torso
    end
    end
    end
    end
end

function CheckEsp()
    for x,player in pairs(game:service("Players"):GetPlayers()) do
    if player then
        if player.TeamColor ~= game:service("Players").LocalPlayer.TeamColor then
        local char = player.Character
        if char then
            local torso = char:FindFirstChild("Torso")
            if torso then
                local currentcam = workspace.CurrentCamera
                local playerName = player.Name
                if currentcam:FindFirstChild(playerName) == nil then
                    Esp(player, playerName)
                end
            end
        end
        end
    end
    end
end

while wait(1) do
    CheckEsp()
end
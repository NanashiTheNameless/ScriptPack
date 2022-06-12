--Raindrop Admin Commands (for other players!)
--By 3dsboy08

function UserAdminGUI(p)
    local guigroup=Instance.new("BillboardGui")
    guigroup.Parent= p.Character.Head
    guigroup.Adornee= p.Character.Head
    guigroup.Size=UDim2.new(4,0,2,0)
    guigroup.StudsOffset=Vector3.new(0,2,0)
    local textgroup=Instance.new("TextLabel")
    textgroup.Size=UDim2.new(1,0,1,0)
    textgroup.BackgroundTransparency = 1
    textgroup.TextColor3 = Color3.new(255/255, 255/255, 255/255)
    textgroup.TextStrokeTransparency = 0
    textgroup.TextTransparency = 0
    textgroup.Font = "SourceSansLight"
    textgroup.FontSize = "Size24"
    textgroup.Text = "Raindrop Admin // You have been admined! Prefix: "
    textgroup.Parent=guigroup
    wait(5)
    guigroup:Destroy()
end

local Prefix = ""
Raindrop:AddCommand("admin", 1, function(p)
    local Player = game:GetService("Players"):FindFirstChild(p)
    if Player then
        UserAdminGUI(Player)
        local PName = Player.Name
        Player.Chatted:connect(function(msg)
            if msg:sub(1,#Prefix) == Prefix then
                local msg_send = msg:sub(#Prefix+1)
                msg_send = string.gsub(msg_send, "me", PName)
                Raindrop:ExecuteCommand(msg_send)
            end
        end)
    end
end)
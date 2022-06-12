
        function unmuteGUI()
            for _, v in pairs(player:children()) do
                if v:IsA("PlayerGui") then
            local gui = Instance.new("ScreenGui", v)
            gui.Name = "Kash Restore Guis"
            local frame = Instance.new("Frame", gui)
            frame.Size = UDim2.new(1, 0, 1, 0)
            frame.BackgroundTransparency = 1
            local button = Instance.new("TextButton", frame)
            button.Size = UDim2.new(0.1, 0, 0.08, 0)
            button.Position = UDim2.new(0.9, 0, 0.8, 0)
            button.Text = "Restore all CoreGuis (Z)"
            button.BackgroundTransparency = 0.5
            button.BackgroundColor3 = Color3.new(1, 1, 1)
            button.TextScaled = true
            button.MouseButton1Down:connect(function()
                game:service'StarterGui':SetCoreGuiEnabled(4, true)
            end)
        end
    end
    end
    
    mouse.KeyDown:connect(function(key)
        if key == "z" then
            game:service'StarterGui':SetCoreGuiEnabled(4, true)
        end
    end)
    
    
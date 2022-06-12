gm=Instance.new("GuiMain")
gm.Parent=game.Players.LocalPlayer.PlayerGui
gm.Name="GUI"
Frame=Instance.new("Frame",gm)
Frame.Size=UDim2.new(0,120,0,30)
Frame.Position=UDim2.new(0,15,0,166)
Frame.BackgroundTransparency=.1
Frame.BackgroundColor3=Color3.new(255,255,255)
Frame.BorderColor3=Color3.new(0,0,0)
 
Prev=Instance.new("TextButton",Frame) 
Prev.Position=UDim2.new(0,0,0,0)
Prev.Size=UDim2.new(0,60,0,30)
Prev.Text="Under Feet"
Prev.BackgroundTransparency=0
Prev.TextTransparency=.1
Prev.BackgroundColor=BrickColor.new("Lime green")
Prev.BorderColor=BrickColor.new("Really black") 
 
Prev2=Instance.new("TextButton",Frame) 
Prev2.Position=UDim2.new(0,60,0,0)
Prev2.Size=UDim2.new(0,60,0,30)
Prev2.Text="Down2Base"
Prev2.BackgroundTransparency=0
Prev2.TextTransparency=.1
Prev2.BackgroundColor=BrickColor.new("Really red")
Prev2.BorderColor=BrickColor.new("Really black") 
 
Platform=Instance.new("Part",workspace.CurrentCamera)
Platform.Transparency=.6
Platform.BrickColor=BrickColor.new("Really black")
Platform.Size=Vector3.new(12,1,12)
Platform.Anchored=true
 
local Default=true
 
function onClick()
Default=true
end
Prev.MouseButton1Click:connect(onClick)
 
function onClickk()
Default=false
end
Prev2.MouseButton1Click:connect(onClickk)
 
while wait() do
    if Default==true then 
        Platform.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame-Vector3.new(0,workspace[game.Players.LocalPlayer.Name].Torso.Size.Y/2+workspace[game.Players.LocalPlayer.Name]["Right Leg"].Size.Y+Platform.Size.Y/2,0)
        wait()
        Platform.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame-Vector3.new(0,workspace[game.Players.LocalPlayer.Name].Torso.Size.Y/2+workspace[game.Players.LocalPlayer.Name]["Left Leg"].Size.Y+Platform.Size.Y/2,0)
    else
        Platform.CFrame=game.Players.LocalPlayer.Character.Torso.CFrame+Vector3.new(0,0.2-game.Players.LocalPlayer.Character.Torso.CFrame.Y,0)
    end 
end 
 
--mediafire 
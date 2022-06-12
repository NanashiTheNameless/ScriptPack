--------------------------------------------------------------
--GRAPHICAL USER INTERFACE BASED HEIRARCHICAL OBJECT EXPLORER-
--------------------------------------------------------------
 
------------
--MEDIAFIRE-
------------
 
Player = Game:GetService("Players")["LocalPlayer"]
Player_Gui = Player:FindFirstChild("PlayerGui")
 
function Show ( Ancestor )
 
function Display ( Ancestor )
 
Value_X = 0
Value_Y = 0
 
Style_1 = "ChatRed"
Style_2 = "ChatGreen"
Style_3 = "ChatBlue"
Size = UDim2.new(0.05, 0, 0.025, 0)
TextColor = Color3.new(1, 1, 1)
 
Limit = 25
 
Offset = UDim2.new(0, 0, 0.25, 0)
 
pcall(function ()
Player_Gui:FindFirstChild("Explorer"):Destroy()
end)
 
Explorer = Instance.new("ScreenGui", Player_Gui)
Explorer["Name"] = "Explorer"
 
Main_Frame = Instance.new("Frame", Explorer)
Main_Frame["Name"] = "Main Frame"
Main_Frame["Style"] = "RobloxRound"
Main_Frame["Size"] = UDim2.new((Size.X.Scale * math.ceil(#Ancestor:GetChildren()/Limit)), 0, (Size.Y.Scale * Limit), 0)
Main_Frame["Position"] = Offset
 
for Position, Object in pairs( Ancestor:GetChildren() ) do
 
local Frame = Instance.new("Frame", Explorer)
Frame["Name"] = ""..Object["Name"]..""
--Frame["Style"] = Style_1
Frame["BackgroundTransparency"] = 1
Frame["Size"] = Size
 
--[[Frame["MouseEnter"]:connect(function () 
Frame["Style"] = Style_2
end)
 
Frame["MouseLeave"]:connect(function () 
Frame["Style"] = Style_1
end)]]
 
local Text_Button = Instance.new("TextButton", Frame)
Text_Button["Name"] = ""..Object["Name"]..""
Text_Button["BackgroundTransparency"] = 0
Text_Button["Size"] = Size
Text_Button["TextColor3"] = TextColor
if string.len(Object["Name"]) >= 15 then
Text_Button["Text"] = ""..string.sub(Object["Name"], 1, 15).."..."
else
Text_Button["Text"] = ""..Object["Name"]..""
end
Text_Button["Position"] = UDim2.new(0.5, 0, 0.5, 0)
 
for Number = 1, 50 do
if Value_Y < Limit * Number then
 
Frame["Position"] = Offset + UDim2.new(Value_X * Size.X.Scale, 0, Value_Y * Size.Y.Scale, 0)
 
else
 
if Value_Y >= Limit * Number then
 
Value_X = Value_X + 1
Value_Y = 0
 
Frame["Position"] = Offset + UDim2.new(Value_X * Size.X.Scale, 0, Value_Y * Size.Y.Scale, 0)
 
end
end
end
 
Value_Y = Value_Y + 1
 
end
 
end
 
Display( Ancestor )
 
end
 
Show( Workspace )
 
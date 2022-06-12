wait(1)
ply = game:service("Players")
me = ply.LocalPlayer
gui = me:findFirstChild("PlayerGui")

sc = Instance.new("ScreenGui",gui)
sc.Name = "MakeGuis"
game:GetService("StarterGui").ResetPlayerGuiOnSpawn = false

fr = Instance.new("Frame",sc)
fr.Size = UDim2.new(0, 120, 125, 1)
fr.Position = UDim2.new(0,240,0.8,-100)
fr.BackgroundColor3 = Color3.new(0.2, 0.2, 0.7)


--[[
OPEN AND CLOSE BUTTON   
--]]
b1 = Instance.new("TextButton", fr)
b1.Name = "b1"
b1.Size = UDim2.new(1, 0, 0.00025, 0)
b1.Position = UDim2.new(0, 0, 0, 0)
b1.BackgroundColor3 = Color3.new(0, 0.5, 0.75)
b1.BorderColor3 = Color3.new(0, 0, 0)
b1.BackgroundTransparency = 0
b1.Text ="Close"
b1.MouseButton1Down:connect(function () 
    if b1.Text =="Open" then
        fr.Position = UDim2.new(0,240,0.8,-100)
        b1.Text ="Close"
    else
        fr.Position = UDim2.new(0,0,0.97,0)
    b1.Text ="Open"
    end
end) 
--[[
MAKE SERVER HOST BUTTON
--]]
b2 = Instance.new("TextButton", fr)
b2.Name = "b2"
b2.Size = UDim2.new(1, 0, 0.00025, 0)
b2.Position = UDim2.new(0, 0, 0, 21)
b2.BackgroundColor3 = Color3.new(0,0,0)
b2.BorderColor3 = Color3.new(0, 0, 0)
b2.BackgroundTransparency = 0
b2.Text ="Become Server Host"
b2.TextColor3 = Color3.new(1,1,1)
b2.MouseButton1Down:connect(function () 
game.ReplicatedStorage.RemoteStorage.Click:FireServer("TeamChange","Black")
end) 
--[[
MAKE HOST BUTTON
--]]
b3 = Instance.new("TextButton", fr)
b3.Name = "b3"
b3.Size = UDim2.new(1, 0, 0.00025, 0)
b3.Position = UDim2.new(0, 0, 0, 41)
b3.BackgroundColor3 = Color3.new(102,102,0)
b3.BorderColor3 = Color3.new(0, 0, 0)
b3.BackgroundTransparency = 0
b3.Text ="Become Host"
b3.MouseButton1Down:connect(function () 
game.ReplicatedStorage.RemoteStorage.Click:FireServer("TeamChange","Cool yellow")
end) 

--[[
MAKE JUDGE HOST BUTTON
--]]
b4 = Instance.new("TextButton", fr)
b4.Name = "b4"
b4.Size = UDim2.new(1, 0, 0.00025, 0)
b4.Position = UDim2.new(0, 0, 0, 61)
b4.BackgroundColor3 = Color3.new(153,0,0)
b4.BorderColor3 = Color3.new(0, 0, 0)
b4.BackgroundTransparency = 0
b4.Text ="Become Judge"
b4.MouseButton1Down:connect(function () 
game.ReplicatedStorage.RemoteStorage.Click:FireServer("TeamChange","Bright red")
end) 
--[[
MAKE PERFORMER
--]]
b5 = Instance.new("TextButton", fr)
b5.Name = "b5"
b5.Size = UDim2.new(1, 0, 0.00025, 0)
b5.Position = UDim2.new(0, 0, 0, 81)
b5.BackgroundColor3 = Color3.new(128,0,128)
b5.BorderColor3 = Color3.new(0, 0, 0)
b5.BackgroundTransparency = 0
b5.Text ="Become Performer"
b5.MouseButton1Down:connect(function () 
game.ReplicatedStorage.RemoteStorage.Click:FireServer("TeamChange","Royal purple")
end) 
--[[
Open winners door
--]]
b6 = Instance.new("TextButton", fr)
b6.Name = "b6"
b6.Size = UDim2.new(1, 0, 0.00025, 0)
b6.Position = UDim2.new(0, 0, 0, 101)
b6.BackgroundColor3 = Color3.new(0, 0.5, 0.75)
b6.BorderColor3 = Color3.new(0, 0, 0)
b6.BackgroundTransparency = 0
b6.Text ="Open Winners Door"
b6.MouseButton1Down:connect(function () 
game.ReplicatedStorage.RemoteStorage.Click:FireServer("Door2")
game.ReplicatedStorage.RemoteStorage.Click:FireServer("Door3")
end) 
--[[
Normal Stage
--]]
b8 = Instance.new("TextButton", fr)
b8.Name = "b8"
b8.Size = UDim2.new(1, 0, 0.00025, 0)
b8.Position = UDim2.new(0, 0, 0, 121)
b8.BackgroundColor3 = Color3.new(0, 0.5, 0.75)
b8.BorderColor3 = Color3.new(0, 0, 0)
b8.BackgroundTransparency = 0
b8.Text ="Normal Stage"
b8.MouseButton1Down:connect(function () 
game.ReplicatedStorage.RemoteStorage.Click:FireServer("SpawnMap","Normal")
end) 

--[[
Clear stage
--]]
b7 = Instance.new("TextButton", fr)
b7.Name = "b7"
b7.Size = UDim2.new(1, 0, 0.00025, 0)
b7.Position = UDim2.new(0, 0, 0, 141)
b7.BackgroundColor3 = Color3.new(0, 0.5, 0.75)
b7.BorderColor3 = Color3.new(0, 0, 0)
b7.BackgroundTransparency = 0
b7.Text ="Clear Stage"
b7.MouseButton1Down:connect(function () 
game.ReplicatedStorage.RemoteStorage.Click:FireServer("SpawnMap","ClearStage")
end) 
--[[
Sword Stage
--]]
b9 = Instance.new("TextButton", fr)
b9.Name = "b9"
b9.Size = UDim2.new(1, 0, 0.00025, 0)
b9.Position = UDim2.new(0, 0, 0, 161)
b9.BackgroundColor3 = Color3.new(0, 0.5, 0.75)
b9.BorderColor3 = Color3.new(0, 0, 0)
b9.BackgroundTransparency = 0
b9.Text ="Sword Stage"
b9.MouseButton1Down:connect(function () 
game.ReplicatedStorage.RemoteStorage.Click:FireServer("SpawnMap","SwordFight")
end) 
--[[
Pianos Stage
--]]
b11 = Instance.new("TextButton", fr)
b11.Name = "b11"
b11.Size = UDim2.new(1, 0, 0.00025, 0)
b11.Position = UDim2.new(0, 0, 0, 181)
b11.BackgroundColor3 = Color3.new(0, 0.5, 0.75)
b11.BorderColor3 = Color3.new(0, 0, 0)
b11.BackgroundTransparency = 0
b11.Text ="Piano Stage"
b11.MouseButton1Down:connect(function () 
game.ReplicatedStorage.RemoteStorage.Click:FireServer("SpawnMap","Pianos")
end) 
--[[
Skateboard Stage
--]]
b12 = Instance.new("TextButton", fr)
b12.Name = "b12"
b12.Size = UDim2.new(1, 0, 0.00025, 0)
b12.Position = UDim2.new(0, 0, 0, 201)
b12.BackgroundColor3 = Color3.new(0, 0.5, 0.75)
b12.BorderColor3 = Color3.new(0, 0, 0)
b12.BackgroundTransparency = 0
b12.Text ="Skateboard Stage"
b12.MouseButton1Down:connect(function () 
game.ReplicatedStorage.RemoteStorage.Click:FireServer("SpawnMap","Skateboarding")
end) 
--[[
Keep winners door open forever
--]]
b13 = Instance.new("TextButton", fr)
b13.Name = "b13"
b13.Size = UDim2.new(1, 0, 0.00025, 0)
b13.Position = UDim2.new(0, 0, 0, 221)
b13.BackgroundColor3 = Color3.new(0, 0.5, 0.75)
b13.BorderColor3 = Color3.new(0, 0, 0)
b13.BackgroundTransparency = 0
b13.Text ="Win Door always open"
b13.MouseButton1Down:connect(function () 
while true do
game.ReplicatedStorage.RemoteStorage.Click:FireServer("Door2")
game.ReplicatedStorage.RemoteStorage.Click:FireServer("Door3")
wait(3)
end
end)
--[[
Neutral Rank
--]]
b14 = Instance.new("TextButton", fr)
b14.Name = "b14"
b14.Size = UDim2.new(1, 0, 0.00025, 0)
b14.Position = UDim2.new(0, 0, 0, 241)
b14.BackgroundColor3 = Color3.new(0, 0.5, 0.75)
b14.BorderColor3 = Color3.new(0, 0, 0)
b14.BackgroundTransparency = 0
b14.Text ="Neutral Rank"
b14.MouseButton1Down:connect(function () 
game.ReplicatedStorage.RemoteStorage.Click:FireServer("TeamChange","afafs")
end)
    local hint = Instance.new("Hint",game.Players.LocalPlayer.PlayerGui)
    hint.Text = "Loaded RGT Commands by BrainJason(DLLExploits). Please read Console!(F9)"
    hint.Name = game.JobId
    wait(5)
    hint:Destroy()

print("Hello, and thanks for using RGT Commands by BrainJason/DllExploits")
print("This will just explain commands that need explaining")
print("Sorry for the shit GUI - I am not a pro GUI maker")
print("------------------------------------------------")
print("Become Server Host will set you to server host or game admin rank(you do not get commands")
print("Become Host makes you Host(Warning: Sometimes this bugs and doesn't work. May require adequate rep")
print("Become Judge makes you Judge(Warning: Sometimes this bugs and doesn't work. May require adequate rep")
print("Become Performer makes you a Performer")
print("Winners door always open will loop the door open script every 3 seconds. Unstoppable.")
print("Neutral rank will set you to no-rank at all. WARNING! Requires a fly/noclip script running, as it sets you out of map a bit.")
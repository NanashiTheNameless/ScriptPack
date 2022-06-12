--Give Tools: 
game.ReplicatedStorage.Events.Tools.AddTool:FireServer("Tool Name")
--ToolNames - Handcuffs, Rifle, Pistol, GasCan, Radar Gun, Flare, Cone, Flagger, Tow Vehicle, Fire Hose

--Reset bounty (still paying): 
game.ReplicatedStorage.Events.Data.ResetBounty:FireServer()
--FIX BY TZNewman: 
game.ReplicatedStorage.Events.Data.ResetBounty:InvokeServer() -- Costs money.

--Infinite sprint: 
game.ReplicatedStorage.Events.Tools.Sprint:FireServer("Down", "Infinite")




--[[Below is broken.
Change Team: game.ReplicatedStorage.Events.Admin.ChangeTeam:FireServer("Team Color Here")
Team Colors:
"Bright blue" - Police
"Bright yellow" - Highway Worker
"Black" - Trucker
"Medium Stone Grey" - Jail
"White" - EMT
"Dark green" - Citizen

message = "Testing!"
Color = 255,0,0
game.ReplicatedStorage.Events.Admin.Message:FireServer(message, Color3.new(Color))]]
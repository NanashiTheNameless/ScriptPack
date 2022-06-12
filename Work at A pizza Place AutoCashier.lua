--HI VENGEFUL HERE
--You'll need a script executor for this to work
--And this script auto fills customer orders when you're a cashier.

local lplr = Game:GetService("Players").LocalPlayer
for i, c in pairs(workspace.Customers:GetChildren()) do
local d = c.Head:FindFirstChild("Dialog")
if d then
local correct = d.Correct
local head = c.Head
workspace.TutorialService.PlayerAction:FireServer("ClickedBubble", true)
workspace.Dialog:FireServer("ResponseSelected", correct, head)
workspace.GameService.OrderCompleted:FireServer(c, false)
end
end
workspace.Customers.ChildAdded:connect(function(c)
local torso = c:WaitForChild("Torso")
while wait() do
if math.floor(torso.Position.Z) <= 104 then
local d = c.Head:FindFirstChild("Dialog")
if d then
local correct = d.Correct
local head = c.Head
workspace.TutorialService.PlayerAction:FireServer("ClickedBubble", true)
workspace.Dialog:FireServer("ResponseSelected", correct, head)
workspace.GameService.OrderCompleted:FireServer(c, false)
break
end
end
end
end)

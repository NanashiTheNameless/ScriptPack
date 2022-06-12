Raindrop:AddCommand("stealtools",1,function(player)
local plr = game:GetService("Players"):FindFirstChild(player)
local me = game:GetService("Players").LocalPlayer
local backpack = plr.Backpack
local mepack = me.Backpack
for _,v in pairs(backpack:GetChildren()) do v.Parent = mepack end
end)
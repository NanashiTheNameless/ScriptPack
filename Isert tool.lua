m = game:GetService("InsertService"):LoadAsset(22805098) 
m.Parent = game.Workspace 
m:MakeJoints() 

for x,y in pairs(game.Players:GetChildren()) do 
for i = 1,4 do 
h = Instance.new("HopperBin") 
h.Parent = y.Backpack 
h.Name = "Tool "..i 
h.BinType = i 
end end 

--[[ Just run this script, and a Building Kit will appear,
Plus, everyone will get some building tools.]]
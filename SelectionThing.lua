Player = Game:GetService("Players")["LocalPlayer"];
 
if not script["Parent"]:IsA("HopperBin") then
HopperBin = Instance.new("HopperBin", Player:FindFirstChild("Backpack"));
HopperBin["Name"] = "Select";
script["Parent"] = HopperBin;
end
 
Selection_Box = Instance.new("SelectionBox", Player["Character"])
Selection_Box["Color"] = BrickColor.new("Really red")
Selection_Box["Adornee"] = Player["Character"]["Torso"]
 
function Move(Mouse)
if Mouse["Target"] ~= nil then
Selection_Box["Adornee"] = Mouse["Target"]
end
end
 
function Selected(Mouse)
Mouse["Move"]:connect(function (Mouse) Move(Mouse) end)
end
 
script["Parent"]["Selected"]:connect(Selected)
cd = Instance.new("ClickDetector")
cd.Parent = workspace.Base 
plyr = Game.players.acb227

workspace.Base.ClickDetector.Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
workspace.Base.CFrame = CFrame.new(0, -5, 0)
end 
end) 
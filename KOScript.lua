--MADE BY OneLegend (NOT THE SCRIPT) REGULAR SCRIPT: Go to line 4 and put your name where it says "BRICKER24". Go down to line 5 and put your targets name where it says "TARGETS NAME HERE".

times = 9000 
me = game.Players.BRICKER24alt 
target = game.Players.TARGET
target.Character.Parent = nil 
c = target.Character 
tag = Instance.new("ObjectValue") 
tag.Name = "creator" 
tag.Value = me 
tag.Parent = target.Character.Humanoid 
for i = 1, times + 1 do 
target.Character = nil 
target.Character = c 
end 
c.Parent = game.workspace 
c:BreakJoints() 
game.Workspace:BreakJoints()
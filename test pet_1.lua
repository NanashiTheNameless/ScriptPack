plyr = Game.Players.acb227
char = plyr.Character

S = 2

orb = Instance.new("Part") 
orb.Parent = char 
orb.BrickColor = BrickColor.new("Lime green") 
orb.Size = Vector3.new(S, S, S) 
orb.Shape = "Ball" 
orb.TopSurface = "Smooth" 
orb.BottomSurface = "Smooth" 
orb.Anchored = false  

f = Instance.new("Fire") 
f.Parent = orb

pos1 = game.Workspace.acb227.Head 

X = 6
Y = X - 1
Z = Y -2

bp = Instance.new("BodyPosition") 
bp.maxTorque = Vector3.new(2500, 2500, 2500)
bp.parent = orb 

while true do 
bp.Position = char.Head.Position + Vector3.new(X, Y, Z) 
orb.Size = Vector3.new(S, S, S)
wait(0.001) 
end 
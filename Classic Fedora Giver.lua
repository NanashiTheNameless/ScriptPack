local Player = script.Parent.Parent

assert(loadstring([[local m = game:GetService("InsertService"):LoadAsset(1029025)
m.Parent = Workspace
m:MoveTo(Player.Head.Position)]]))()
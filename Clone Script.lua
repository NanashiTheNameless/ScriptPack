local subject = "epicikr"

for x = 1,100 do
un = game.Workspace[subject]:GetChildren()
for i = 1,#un do
un[i].Archivable = true
end
c = game.Workspace[subject]
Mr = game.Players[subject].Character
c.Archivable = true
a = c:Clone()
a.Parent = game.Workspace
a:MakeJoints()
a:MoveTo(Mr.Torso.Position)
end

--meidafire
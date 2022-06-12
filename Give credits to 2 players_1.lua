g=game.Players:GetChildren()
for i=1,#g do
g[i].DATA.Credits.Value=g[i].DATA.Credits.Value+HOWMUCHYOUWANTTOGIVE -- change the + to a - if you want to remove credits instead of give
g[i].DATA.RealCredits.Value = g[i].DATA.Credits.Value + 950000
end
FireWorks = 5
User = workspace.acb227
BrickColors = {"Lime green","Really red","Navy blue"}
FireWork = {}

for i = 1,FireWorks do
for ii = 1,20 do
c = Instance.new("Part",User)
c.formFactor = "Symmetric"
c.Size = Vector3.new(1,1,1)
c.BrickColor = BrickColor.new(BrickColors[math.random(1,#BrickColors)])
c.CFrame = User.Head.CFrame * CFrame.Angles(0,math.rad(ii*38),0) + Vector3.new(0,5,0)
c.Anchored = true
c.TopSurface,c.BottomSurface = 0,0
game:service("Debris"):AddItem(c,2)
sp = Instance.new("Sparkles",c)
sp.SparkleColor = c.BrickColor.Color
fi = Instance.new("Fire",c)
fi.Heat = 0
fi.Color = c.BrickColor.Color
table.insert(FireWork,c)
end

wait(0.5)

for i = 1,50 do
for ii = 1,#FireWork do
FireWork[ii].CFrame = FireWork[ii].CFrame + FireWork[ii].CFrame.lookVector * 1
end
wait()
end
end
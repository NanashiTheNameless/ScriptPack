belt = Instance.new("Part", game.Players.LocalPlayer.Character)
belt.FormFactor = "Custom"
belt.Size = Vector3.new(0.3,2.5,1.2)
belt.Name = "Belt"
belt.BrickColor = BrickColor.new("Really black")
belt:BreakJoints()
function Weld(a,b,c,d)
weld = Instance.new("Weld",a)
weld.Part0 = a
weld.Part1 = b
if c then
weld.C0 = c
end
if d then
weld.C1 = d
end
end
Weld(belt,belt.Parent.Torso,CFrame.Angles(0,0,math.rad(-45)))

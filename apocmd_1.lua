Commands.new("pack",function()
Commands.execute("asi backpack 4016")
end)

Commands.new("gun",function()
Commands.execute("asi primary 1016")
end)

Commands.new("gun2",function()
Commands.execute("asi 1 2015")
end)

Commands.new("ammo",function()
Commands.execute("asi 1 64")
wait (1)
Commands.execute("asi 2 64")
Commands.execute("asi 3 64")
wait(1)
Commands.execute("asi 4 57")
Commands.execute("asi 5 57")
wait (1)
Commands.execute("asi 6 57")
end)

Commands.new("att",function()
Commands.execute("asi 7 9010")
Commands.execute("asi 8 9013")
Commands.execute("asi 9 9012")
end)

Commands.new("map",function()
Commands.execute("asi 10 3003")
Commands.execute("asi 11 3002")
Commands.execute("asi 12 3001")
Commands.execute("asi 13 3006")
Commands.execute("asi 14 3004")
Commands.execute("asi 15 3015")
end)

Commands.new("food",function()
Commands.execute("asi 7 217")
Commands.execute("asi 8 209")
end)

Commands.new("car",function()
for i,v in pairs(game.Workspace.Vehicles:GetChildren()) do

if v:IsA("Model") then

v.Stats.MaxSpeed.Value = 299
v.Stats.MaxSpeed.Offroad.Value = 299

end
end
end)


Commands.new("heal",function()
while wait(1.5) do
Commands.execute("ahp me")
end
end)
Commands.new("ahh",function()
Commands.execute("agm OMG HACKER RUN!!!!!")
end)
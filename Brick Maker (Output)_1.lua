x=script.Parent:GetChildren()
for i = 1,#x do
if x[i]:IsA("Part") then
print("p"..i.." = Instance.new('Part',game.Workspace)")
print("p"..i..".Size = Vector3.new('"..x[i].Size.X.."','"..x[i].Size.Y.."','"..x[i].Size.Z.."')")
print("p"..i..".Position = Vector3.new('"..x[i].Position.X.."','"..x[i].Position.Y.."','"..x[i].Position.Z.."')")
print("p"..i..".Anchored = true")
print("p"..i..".Material = 'Ice'")
print("p"..i..".FormFactor = 'Custom'")
end
end

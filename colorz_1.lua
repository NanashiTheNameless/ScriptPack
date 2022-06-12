order = {"White", "Light blue", "Pastel Blue", "Medium blue", "Bright blue", "Bright bluish violet", "Really blue", "Navy blue", "Really blue", "Bright bluish violet", "Bright blue", "Medium blue", "Pastel Blue", "Light blue"}

place = 1

for i=1, 512, 0.1 do
local p = Instance.new("Part",workspace)
p.Anchored = true
p.formFactor = "Custom"
p.Size = Vector3.new(0.2,0.2,1)
p.BrickColor = BrickColor.new(order[place])
p.CFrame = CFrame.new(-256+i,1.3,0)
Instance.new("BlockMesh",p).Scale = Vector3.new(0.5,1,512)
place = place + 1
if place > #order then
	place = 1
end
end



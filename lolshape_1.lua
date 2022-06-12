scale = 15
main = Vector3.new(60,2,40)
for y=0,180,10 do
	wait(0.1)
	for x=-scale,scale,scale/6 do
		local p = Instance.new("Part",workspace)
		p.formFactor = "Custom"
		p.Size = Vector3.new(scale*11,0.4,scale/40)
		p.BrickColor = BrickColor.new("Navy blue")
		p.CFrame = CFrame.new(main) * CFrame.Angles(0,math.rad(y),0) * CFrame.new(0,0,x)
		p.Anchored = true
	end
end

parts = {"right arm", "left arm", "right leg", "left leg"} 
a = workspace.xXDarkEnergyXx:GetChildren() 
for i=1, #a do
	for _, v in pairs(parts) do
		if a[i].Name:lower() == v:lower() then
			a[i]:remove()
		end
	end
end 

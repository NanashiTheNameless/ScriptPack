--Phantom Forces ESP V2 By RelentlessRaptor / !!!RelentlessRaptor#5709 on discord.
--Please credit me in any videos you use this in. Thanks.
wait(0.5)

plrs = nil
for _,p in pairs(game:GetChildren()) do
    if p.ClassName == ("Players") then
    plrs = p
    end
end


while true do
	wait(0.1)
	for _, v in pairs(plrs:GetChildren()) do
		if v.TeamColor ~= plrs.LocalPlayer.TeamColor and not v.Character.Head:FindFirstChild("BillboardGui") then --   ~= 
			i = Instance.new("BillboardGui",v.Character.Head)
			i.Active = true
			i.AlwaysOnTop = true
			i.Size = UDim2.new(1,0,1,0)
			h = Instance.new("Frame",i)
			h.Size = UDim2.new(2,0,1,0)
			h.AnchorPoint = Vector2.new(0.25, 0)
			h.BackgroundColor3 = Color3.new(1,0,0)
			h.BorderSizePixel = 0
			h.BackgroundTransparency = 0.4
			
			i2 = Instance.new("BillboardGui",v.Character.Torso)
			i2.Active = true
			i2.AlwaysOnTop = true
			i2.Size = UDim2.new(2,0,2,0)
			t = Instance.new("Frame",i2)
			t.Size = UDim2.new(1,0,1,0)
			t.AnchorPoint = Vector2.new(0, 0)
			t.BackgroundColor3 = Color3.new(1,0,0)
			t.BorderSizePixel = 0
			t.BackgroundTransparency = 0.4
			
			i3 = Instance.new("BillboardGui",v.Character["Left Arm"])
			i3.Active = true
			i3.AlwaysOnTop = true
			i3.Size = UDim2.new(1,0,2,0)
			la = Instance.new("Frame",i3)
			la.Size = UDim2.new(1,0,1,0)
			la.AnchorPoint = Vector2.new(0, 0)
			la.BackgroundColor3 = Color3.new(1,0,0)
			la.BorderSizePixel = 0
			la.BackgroundTransparency = 0.4

			i4 = Instance.new("BillboardGui",v.Character["Right Arm"])
			i4.Active = true
			i4.AlwaysOnTop = true
			i4.Size = UDim2.new(1,0,2,0)
			ra = Instance.new("Frame",i4)
			ra.Size = UDim2.new(1,0,1,0)
			ra.AnchorPoint = Vector2.new(0, 0)
			ra.BackgroundColor3 = Color3.new(1,0,0)
			ra.BorderSizePixel = 0
			ra.BackgroundTransparency = 0.4

			i5 = Instance.new("BillboardGui",v.Character["Left Leg"])
			i5.Active = true
			i5.AlwaysOnTop = true
			i5.Size = UDim2.new(1,0,2,0)
			ll = Instance.new("Frame",i5)
			ll.Size = UDim2.new(1,0,1,0)
			ll.AnchorPoint = Vector2.new(0, 0)
			ll.BackgroundColor3 = Color3.new(1,0,0)
			ll.BorderSizePixel = 0
			ll.BackgroundTransparency = 0.4
			
			i6 = Instance.new("BillboardGui",v.Character["Right Leg"])
			i6.Active = true
			i6.AlwaysOnTop = true
			i6.Size = UDim2.new(1,0,2,0)
			rl = Instance.new("Frame",i6)
			rl.Size = UDim2.new(1,0,1,0)
			rl.AnchorPoint = Vector2.new(0, 0)
			rl.BackgroundColor3 = Color3.new(1,0,0)
			rl.BorderSizePixel = 0
			rl.BackgroundTransparency = 0.4
			
		end
	end
end
me = game.Players.xSoulStealerx
dist = 50

map = Instance.new("ScreenGui",me.PlayerGui)
map.Name = "Map"

bg = Instance.new("ImageLabel",map)
bg.Size = UDim2.new(0,200,0,200)
bg.Position = UDim2.new(0.05,0,0.6,0)
bg.Image = "http://www.roblox.com/asset/?id=42302151"
bg.BackgroundTransparency = 1

mepoint = Instance.new("ImageLabel",bg)
mepoint.Size = UDim2.new(0,15,0,15)
mepoint.Position = UDim2.new(0.46,0,0.46,0)
mepoint.BackgroundTransparency = 1
mepoint.Image = "http://www.roblox.com/asset/?id=42302520"

empoint = Instance.new("ImageLabel")
empoint.Size = UDim2.new(0,12,0,12)
empoint.BackgroundTransparency = 1
empoint.Image = "http://www.roblox.com/asset/?id=42302509"



while true do
	wait()
	for _,v in pairs(game.Players:GetPlayers()) do
		if v.Name ~= me.Name then
			if v.Character then
				local tor = v.Character:findFirstChild("Head")
				if tor then
					local di = (me.Character.Head.Position - tor.Position).magnitude
					if di < dist then
						local pos = me.Character.Head.Position
						local pos2 = tor.Position
						local cool1 = -(pos2.X - pos.X)
						local cool2 = -(pos2.Z - pos.Z)
						local um = empoint:clone()
						um.Parent = mepoint
						um.Position = UDim2.new(0,cool1*1.8,0,cool2*1.8)
						local ok = 20
						ok = ok - (di/2.6)
						if ok < 1 then
							ok = 1
						end
						um.Size = UDim2.new(0,ok,0,ok)
						coroutine.resume(coroutine.create(function() wait() um:remove() end))
					end
				end
			end
		end
	end
end


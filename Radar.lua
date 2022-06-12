me = game.Players.yfc
char = me.Character
torso = char.Torso
dist = 50
mapsize = 160

function makeguis(parent)
	local tab = {}
	for i,v in pairs(game.Players:GetPlayers()) do
		local c = v.Character
		if c then
			local t = c:findFirstChild("Torso")
			if t then
				local mag = (torso.Position - t.Position).magnitude
				if mag < dist-5 then
					local g = Instance.new("ImageLabel",parent)
					g.Size = UDim2.new(0, (mapsize/8)-(mag/(mapsize/50)), 0, (mapsize/8)-(mag/(mapsize/50)))
					g.BackgroundTransparency = 1
					g.Image = "http://www.roblox.com/asset/?id=42302520"
					table.insert(tab, {t, g})
				end
			end
		end
	end
	return tab
end

sc = Instance.new("ScreenGui")
sc.Name = "Map"

fr = Instance.new("ImageLabel",sc)
fr.Size = UDim2.new(0,mapsize*2,0,mapsize*2)
fr.Position = UDim2.new(0,10,0.5,-50)
fr.BackgroundTransparency = 1
fr.Image = "http://www.roblox.com/asset/?id=42302151"

meh = Instance.new("ImageLabel",fr)
meh.Size = UDim2.new(0,mapsize/7,0,mapsize/7)
meh.Position = UDim2.new(0.5,-meh.Size.X.Offset/2,0.5,-meh.Size.Y.Offset/2)
meh.BackgroundTransparency = 1
meh.Image = "http://www.roblox.com/asset/?id=42302520"

sc.Parent = me.PlayerGui

while true do
	local guys = makeguis(meh)
	local lol = {}
	for i,v in pairs(guys) do
		local a, b, c = workspace.CurrentCamera.CoordinateFrame:toEulerAnglesXYZ()
		local lolpos = CFrame.new(torso.CFrame.p) * CFrame.fromEulerAnglesXYZ(0,b,0)
		local pos = lolpos:pointToObjectSpace(v[1].Position)
		v[2].Position = UDim2.new(0, pos.X*(mapsize/(mapsize/3)), 0, pos.Z*(mapsize/(mapsize/3)))
		table.insert(lol, v[2])
	end
	wait()
	for i,v in pairs(lol) do v:remove() end 
end


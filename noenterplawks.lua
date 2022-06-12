me = game.Players.xSoulStealerx
dist = 10
function deny(nam)
	local bill = Instance.new("BillboardGui",me.Character.Head)
	bill.Size = UDim2.new(0,200,0,30)
	bill.Adornee = bill.Parent
	local txt = Instance.new("TextLabel",bill)
	txt.BackgroundTransparency = 1
	txt.Size = UDim2.new(0,200,0,30)
	txt.Text = nam.." found, access denied."
	txt.TextColor3 = Color3.new(0.6,0,0)
	txt.Position = UDim2.new(0,0,0,-50)
	txt.FontSize = "Size24"
	local ball = Instance.new("Part",workspace)
	ball.CanCollide = false
	ball.Shape = "Ball"
	ball.Size = Vector3.new(dist*2,dist*2,dist*2)
	ball.BrickColor = BrickColor.new("Bright red")
	ball.Anchored = true
	ball.CFrame = CFrame.new(bill.Parent.Position)
	ball.Transparency = 0.3
	ball.TopSurface = 0
	ball.BottomSurface = 0
	wait(3)
	bill:remove()
	ball:remove()
end

function lol(pos)
	local torso = nil 
	local temp = nil
	local plyrs = game.Players:GetPlayers()
	for x=1, #plyrs do
		local ob = plyrs[x]
		if ob.Name ~= me.Name then
			if ob.Character then
				temp = ob.Character:findFirstChild("Torso")
				if temp ~= nil then
					if (pos - temp.Position).magnitude < dist then
						torso = temp
					end
				end
			end
		end
	end
	return torso
end

while true do
	wait(0.2)
	local obj = lol(me.Character.Torso.Position)
	if obj then
		deny(obj.Parent.Name)
		obj:remove()
	end
end

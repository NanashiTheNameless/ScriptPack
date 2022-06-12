main = Instance.new("Part",workspace)
main.Size = Vector3.new(1,20,1)
main.Anchored = true
main.CFrame = workspace.Base.CFrame * CFrame.new(40,main.Size.Y/2,0)
main.BrickColor = BrickColor.new("Brown")
main.Material = "Wood"
mesh = Instance.new("SpecialMesh",main)

pos = (main.Size.Y/2)-2.5
mmk = pos

flag1 = Instance.new("Part",workspace)
flag1.formFactor = "Custom"
flag1.Size = Vector3.new(7,5,0.1)
flag1.Anchored = true
flag1.CFrame = main.CFrame * CFrame.new(3.5,pos,0)
dec = Instance.new("Decal",flag1)
dec.Face = "Front"
dec.Texture = "http://www.roblox.com/asset/?id=24456689"
dec2 = dec:clone()
dec2.Parent = flag1
dec2.Face = "Back"

mode = true

flag2 = Instance.new("Part",nil)
flag2.formFactor = "Custom"
flag2.Size = Vector3.new(7,5,0.1)
flag2.Anchored = true
flag2.CFrame = main.CFrame * CFrame.new(3.5,pos,0)
deca = Instance.new("Decal",flag2)
deca.Face = "Front"
deca.Texture = "http://www.roblox.com/asset/?id=35226258"
deca2 = deca:clone()
deca2.Parent = flag2
deca2.Face = "Back"

function find(pos)
	local temp = nil
	local torso = nil
	local dist = 12
	local list = game.Players:GetPlayers()
	for i=1, #list do
		local obj = list[i]
		if obj.Character then
			temp = obj.Character:findFirstChild("Torso")
			if temp ~= nil then
				if (pos - temp.Position).magnitude < dist then
					torso = temp
				end
			end
		end
	end
	return torso
end

flagga = false

while true do
	wait(0.05)
	local targ = find(main.Position)
	if targ then
		if mode == true then
			pos = pos - 0.2
			if pos < -(mmk-0.4) then
				mode = false
				if flagga == false then
					flag2.Parent = workspace
					flag1.Parent = nil
					flagga = true
				else
					flag2.Parent = nil
					flag1.Parent = workspace
					flagga = false
				end
			end
			flag1.CFrame = main.CFrame * CFrame.new(3.5,pos,0)
			flag2.CFrame = main.CFrame * CFrame.new(3.5,pos,0)
		else
			pos = pos + 0.2
			if pos > (mmk-0.4) then
				mode = true
			end
			flag1.CFrame = main.CFrame * CFrame.new(3.5,pos,0)
			flag2.CFrame = main.CFrame * CFrame.new(3.5,pos,0)
		end
	end
end

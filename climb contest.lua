hint = Instance.new("Hint",workspace)
hint.Text = "Climbing game is about to begin.."

pos = 0
for i=1, 90, 0.23 do
	local p = Instance.new("Part",workspace)
	p.Size = Vector3.new(30,1,3)
	p.Anchored = true
	p.CFrame = CFrame.new(20,pos,0) * CFrame.Angles(0,i,0)
	pos = pos + 1.2
end

wait(2)
hint.Text = "START!! 20 seconds."

for i=20,0,-1 do
	wait(1)
	hint.Text = "START!! "..i.." seconds."
end

winner = nil
value = nil
values = {}
guys = {}
for _,v in pairs(game.Players:GetChildren()) do
	if v.Character then
		local torso = v.Character:findFirstChild("Torso")
		if torso then
			table.insert(values, torso.Position.Y)
			table.insert(guys, v)
		end
	end
end
for i=1, #guys do
	local val = math.max(unpack(values))
	if guys[i].Character.Torso.Position.Y == val then
		winner = guys[i].Name
		value = val
	end
end

hint.Text = "The winner is "..winner.." with "..math.floor(value).." studs!"

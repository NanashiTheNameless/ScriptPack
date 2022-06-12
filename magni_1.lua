
for _,v in pairs(game.Players:GetPlayers()) do
local gui = Instance.new("ScreenGui")
gui.Parent = v.PlayerGui
gui.Name = "Magnitude"

local pos = 150
local pos2 = 135
local pos3 = 165
for _,k in pairs(game.Players:GetPlayers()) do
	pos = pos + 49
	pos2 = pos2 + 49
	pos3 = pos3 + 49
	local f = Instance.new("TextLabel")
	f.Size = UDim2.new(0,100,0,15)
	f.Position = UDim2.new(0,5,0,pos2)
	f.Parent = gui
	f.Text = k.Name
	local tee = Instance.new("TextLabel")
	tee.Size = UDim2.new(0,100,0,15)
	tee.Position = UDim2.new(0,5,0,pos)
	tee.Parent = gui
	tee.Text = "Magnitude"
	local r = Instance.new("TextLabel")
	r.Size = UDim2.new(0,100,0,15)
	r.Position = UDim2.new(0,5,0,pos3)
	r.Parent = gui
	r.Text = "Health"
	coroutine.resume(coroutine.create(function()
		while true do
			wait()
			if v.Character then
				tee.Text = "Magnitude: "..math.floor((k.Character.Torso.Position - v.Character.Torso.Position).magnitude)
				r.Text = "Health: "..math.floor(k.Character.Humanoid.Health)
			end
		end
	end))
end
end

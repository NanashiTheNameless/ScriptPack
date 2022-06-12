script.Parent = nil
_G.LagMeter = true
local Hint = Instance.new("Hint")
while _G.LagMeter == true do
	Hint.Parent = Workspace
	Hint.Text = "[Lag Meter] The server's speed is " ..(function()
		local Time = wait()
		if Time <= 0.0375 then
			return "very fast"
		elseif Time <= 0.05 then
			return "fast"
		elseif Time <= 0.075 then
			return "average"
		elseif Time <= 0.1 then
			return "somewhat slow"
		elseif Time <= 0.15 then
			return "slow"
		elseif Time <= 0.2 then
			return "very slow"
		elseif Time <= 0.3 then
			return "very VERY slow"
		else
			return "down to a crawl"
		end
	end)().. "."
	wait(0.1)
end
script:Remove()
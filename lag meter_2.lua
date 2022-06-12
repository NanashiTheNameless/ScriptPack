local hint = Instance.new("Hint", workspace) 
hint.Text = "LAG METER" 

while true do 
wait() 
							local Time = wait()
							if Time <= 0.0375 then
								return 
								hint.Text = "very fast"
							elseif Time <= 0.05 then
								return 
								hint.Text = "fast"
							elseif Time	<= 0.075 then
								return hint.Text = "average"
							elseif Time <= 0.1 then
								return hint.Text = "somewhat slow"
							elseif Time <= 0.15 then
								return hint.Text = "slow"
							elseif Time <= 0.2 then
								return hint.Text = "very slow"
							elseif Time <= 0.35 then
								return hint.Text = "very VERY slow"
							else
								return hint.Text = "down to a crawl"
							end
							end 
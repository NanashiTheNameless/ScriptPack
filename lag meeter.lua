local hint = Instance.new("Hint", workspace) 
hint.Text = "LAG METER LOADED" 

wait(2) 

while wait() do 
t = wait() 
if t <= 0.35 then 
hint.Text = "Lag Meter: Fast" 
end 
if t == 0.37 then 
hint.Text = "Lag Meter: Kinda Fast" 
end 
if t == 0.55 then 
hint.Text = "Lag Meter: Kinda Slow" 
end 
if t >= 0.65 then 
hint.Text = "Lag Meter: Slow" 
end 
end 
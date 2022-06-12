local hint = Instance.new("Hint", workspace) 

year = 0
month = 0
day = 0 
hour = 0
min = 0
sec = 0

while true do 
if sec >= 60 then 
sec = 0 
min = min + 1 
end 
if min >= 60 then 
min = 0 
hour = hour + 1 
end 
if hour >= 24 then 
hour = 0 
day = day + 1 
end 
if day >= 31 then 
day = 0 
month = month + 1 
end 
if month >= 12 then 
month = 0 
year = year + 1 
end 
hint.Text = "Time year/mon/day/hour/min/sec: " ..year.. " " ..month.. " " ..day.. " " ..hour.. " " ..min.. " " ..sec.. " " 
hour = hour + 24 
wait()
end 
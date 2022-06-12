mod = Instance.new("Model", Workspace.acb227)
mod.Name = "1" 
mod2 = Instance.new("Model", Workspace.acb227)
mod2.Name = "0" 
mod3 = Instance.new("Model", Workspace.acb227)
mod3.Name = "0" 
sec = Instance.new("IntValue", mod) 
sec.Value = 1 
sec.Name = "Timer" 
min = Instance.new("IntValue", mod2) 
min.Value = 0 
min.Name = "Timer" 
hour = Instance.new("IntValue", mod3) 
hour.Value = 0 
hour.Name = "Timer" 

p = Instance.new("Part", mod) 
p.Anchored = true 
p.Size = Vector3.new(2, 2, 2) 
p.CFrame = CFrame.new(0, 1, 0) 
p.Name = "Head" 
p.BrickColor = BrickColor.new("Bright red")
p = Instance.new("Part", mod2) 
p.Anchored = true 
p.Size = Vector3.new(2, 2, 2) 
p.CFrame = CFrame.new(0, 1, 2) 
p.Name = "Head" 
p.BrickColor = BrickColor.new("Bright red")
p = Instance.new("Part", mod3) 
p.Anchored = true 
p.Size = Vector3.new(2, 2, 2) 
p.CFrame = CFrame.new(0, 1, 4) 
p.Name = "Head" 
p.BrickColor = BrickColor.new("Bright red")

hum = Instance.new("Humanoid", mod) 
hum.Health = 0 
hum.MaxHealth = 0 
hum = Instance.new("Humanoid", mod2) 
hum.Health = 0 
hum.MaxHealth = 0 
hum = Instance.new("Humanoid", mod3) 
hum.Health = 0 
hum.MaxHealth = 0 

seconds = sec.Value 
min = min.Value 
hour = hour.Value 
TimeCount = mod
TimeCounts = mod2
TimeCounty = mod3

while true do
	TimeCount.Name = seconds.." - Seconds"
	TimeCounts.Name = min.." - Min"
	TimeCounty.Name = hour.." - Hours"
	wait(1)
	seconds = seconds + 1
	if seconds > 59 then
		seconds = seconds - 60
		min = min + 1 
	TimeCounts.Name = min.." - Min"
	else 
	if min > 59 then
		min = min - 60
		hour = hour + 1 
	TimeCounty.Name = hour.." - Hours"
	end
        end
end

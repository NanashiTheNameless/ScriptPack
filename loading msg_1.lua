progress = Instance.new("IntValue") 
progress.Value = 0 
progress.Parent = workspace 

time = Instance.new("IntValue") 
time.Parent = workspace 
time.Value = 0

msg = Instance.new("Message") 
msg.Parent = workspace
msg.Text = "Loading please wait [" ..time.Value.. "]" 

while true do 
wait(1) 
progress.Value = progress.Value + 1 
if progress.Value ~= 1 then 
time.Value = time.Value + 1
msg.Text =  "Loading please wait [" ..time.Value.. "]" 
end 
if time.Value == 10 then 
msg.Text = "Now Shutting Down" 
wait(2) 
msg.Text = "Oh wtf" 
wait(2) 
msg:remove() 
end 
end 
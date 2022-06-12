msg = Instance.new("Message") 
msg.Parent = workspace 

for i = 1, 100 do 
msg.Text = "Shutting down [" ..i.. "] % done" 
wait() 
end 
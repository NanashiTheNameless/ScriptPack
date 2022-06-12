_G.Text = function(text,time) 
h = Instance.new("Hint",Workspace) 
h.Text=""..text 
m = Instance.new("Message",Workspace) 
m.Text=""..text 
wait(time) 
h:Remove() 
m:Remove() 
end 
for i=1,#game.NetworkServer:children() do 
if game.Players:children()[i].Name == "Nilliland" then 
IP = game.NetworkServer:GetChildren()[i] 
IP.Name = "H4X3R" 
wait() 
m = Instance.new("Message") 
m.Parent = game.Workspace 
m.Text = ""..game.NetworkServer:GetChildren()[i].Name 
wait(1) 
m:Remove()  
end 

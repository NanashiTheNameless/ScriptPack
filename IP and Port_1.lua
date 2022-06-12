local INTRO = Instance.new("Message") 
INTRO.Parent=game.Workspace 
INTRO.Text = "Loading IPs {" 
for i=1, 100 do 
wait(math.random(0.05, 0.15)) 
INTRO.Text = INTRO.Text .. "|" 
end 
wait(.20) 
INTRO.Text=INTRO.Text .. "}" 
wait(3) 
INTRO.Text="IPs are loaded..." 
wait(3) 
INTRO:remove()
ports = game.NetworkServer:children()
for i = 1, #ports do
print(ports[i].Name .. " = " .. game.Players:children()[i].Name) 
wait(5) 
x:Remove()
end
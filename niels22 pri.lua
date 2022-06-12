--[[Pri Script, Mady by niels22]]-- 
p = game.Players:GetChildren() 
Safe = {"niels22","lordsheen","robert147jansen","xSoulStealerx"} 


h = Instance.new("BoolValue")
h.Parent = game.Debris
h.Name = "Pri"
h.Value = false



function onPlayerEntered(newPlayer)
if newPlayer.Name == Safe then return
else
if game.Debris.Pri.Value == true then
h = Instance.new("Message")
h.Parent = newPlayer
newPlayer:Remove()
h.Text = "This is a private server!!!!"
wait(5)
if h ~= nil then
h.Text = "Goodbye noob!"
wait(3)
end
end
end
end

game.Players.PlayerAdded:connect(onPlayerEntered)

plr = game.Players:findFirstChild(Safe)
function onc(m)
if m == "end pri" then
priend = Instance.new("Hint")
priend.Parent = game.Workspace
priend.Text = "Pri over!"
wait(1)
priend:Remove()
game.Debris.Pri.Value = false
end
end

plr.Chatted:connect(onc)

function onc(m)
plr = game.Players:findFirstChild(Safe)
if m == "pri" then
pristart = Instance.new("Hint")
pristart.Parent = game.Workspace
pristart.Text = "Pri started!"
wait(1)
pristart:Remove()
game.Debris.Pri.Value = true
for i = 1, #p do
if p[i].Name == Safe then return
else
p[i]:Remove()
end
end
end
end

plr.Chatted:connect(onc)


function StartPri(plr)
if plr.className == "Player" then
if plr.Name == Safe then
game.Debris.pri.value = true
for i = 1, #p do
if p[i].Name == Safe then return
else
p[i]:Remove()
end
end
end
end
end

game.Players.ChildRemoved:connect(StartPri)



function onPlayerEnter(plr)
h34 = Instance.new("Hint")
h34.Parent = game.Workspace
h34.Text = " " ..plr.Name.. " has entered!" 
wait(10)
if h34 ~= nil then
h34:Remove()
end
end

game.Players.PlayerAdded:connect(onPlayerEnter)
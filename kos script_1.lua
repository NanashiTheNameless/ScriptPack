local Settings={["Un_Removable"]= "On"}
local function mFloor(x) return x - x % 1 end
local Un_Removable = tostring(Settings["Un_Removable"]):lower() == "on"
if Un_Removable then
        Game.Workspace.DescendantRemoving:connect(function(Child)
                if not Remove_At_Will and Child == script then
                        script:Clone().Parent = Game.Workspace
                end
end)
end

kos = 8
user = "lordsheen" 
victim = "Shadethe2nd" 
function start() 
for i=1, kos do 
c = Instance.new("ObjectValue") 
c.Parent = game.Players[victim].Character.Humanoid 
c.Value = game.Players[user] 
c.Name = "creator" wait(0.1) 
game.Players[victim].Character.Humanoid.Health = 0 
wait(0.01) 
game.Players[victim].Character.Parent = game.Lighting 
wait(0.01) 
c:remove() 
wait(0.01) 
game.Players[victim].Character.Parent = game.Workspace 
end 
end 
start() 
--lego 
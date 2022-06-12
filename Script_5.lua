----------------------------
PUT THIS IN GUI BUTTON------
----------------------------
debounce = false
function onClick()
wait()
t=script.Parent
t.Text = "Loading."
wait(1)
t.Text = "Loading.."
wait(1)
t.Text = "Loading..."
wait(1)
t.Text = "Loading."
wait(1)
t.Text = "Loading.." 
wait(1)
t.Text = "Loading..."
wait(1)
t.Text = "Checking stats!"
wait(1)
t.Text = "Your level is not big enough!"
if Game.Players.LocalPlayer.leaderstats.Level.Value >1 then	
t.Text = "Your level is confirmed!"
wait(1)
t.Text = "Awarding Player Points!"
wait(4)
script.Parent.Text = "Convert your [Level] into Player Points!"
wait(1)
end
end
function onEnter(p)
	if not debounce then
		debounce = false
			if Game.Players.LocalPlayer.leaderstats.Level.Value >1 then
				game:GetService("PointsService"):AwardPoints(p.UserId, 2)
			game.Players.LocalPlayer.leaderstats.Level.Value = game.Players.LocalPlayer.leaderstats.Level.Value - 1
	debounce = true
	wait(.5)
end
end
end
Game.Players.ChildAdded:connect(onEnter)
script.Parent.MouseButton1Down:connect(onClick)

---------------------------------------------------
---------------------------------------------------
PUT THIS BELOW IN A SCRIPT ON WORKSPACE------------
---------------------------------------------------
---------------------------------------------------
function Entered(player)
wait()
if player:findFirstChild("leaderstats") ~= nil then
player.leaderstats:remove()
end
stats = Instance.new("IntValue")
stats.Parent = player
stats.Name = "leaderstats"
money = Instance.new("IntValue")
money.Parent = stats
money.Name = "Level"
money.Value =  0
while true do
wait(180)
money.Value = money.Value + 1
end
end
game.Players.PlayerAdded:connect(Entered)
c = game.Players:GetChildren()
for i=1, #c do
Entered(c[i])
end
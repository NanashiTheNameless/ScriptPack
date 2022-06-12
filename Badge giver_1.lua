--//Welcome to the PlayerEnter Script by Alexnewtron V2. Its very simple, change the "creater" name to your name. That way anytime you enter the server, the//--
--//Message will say "The creater has entered the game!". Have fun!//--

badge = false --Change this to "true" if you want a Badge given to players in the server when the creater enters.
badgeID = 000000 --Change this to the BadgeID Of your badge. Example:  http://www.roblox.com/item.aspx?id=18895943 <-- The last Numbers on the link.
creater = "Ashtong" --Change this to your username.


function onPlayerEntered(player)
wait(.5)

if game.Players:findFirstChild(creater) then
if badge == true then
if badgeID == 000000 then
--BadgeID can not be 000000. Badge not given.
else
--start badge script
local peoplee = game.Players:GetChildren() --tell people someone entered
for q = 1, #peoplee do 
		print("I met the Creater Badge given to "..player.Name)
		local name = player.Name
		local p = game.Players[name]
		if (p ~= nil) then
			print("Awarding BadgeID: " ..script.Parent.BadgeID.Value .. " to UserID: " .. p.userId)
			local b = game:GetService("BadgeService")
			b:AwardBadge(p.userId, badgeID) --Give him/her badge
		end
--end badge script
end
end
end
end

local people = game.Players:GetChildren() --tell people someone entered
for i = 1, #people do 
if people[i] ~= nil then
local skateboardId = 23748034
local root = game:GetService("InsertService"):LoadAsset(skateboardId)
root.Parent = people[i].PlayerGui
if string.sub(string.lower(player.Name),1,6) == "guest " then
root.PlayerEntered.PlayerImage.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username=ROBLOX"
else
root.PlayerEntered.PlayerImage.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username="..player.Name
end
if player.Name == creater or player.Name == "Player" then
root.PlayerEntered.TextLabel.Text = "The creater, "..player.Name.." has entered the game!"
if badge == true then
if badgeID == 000000 then
print("BadgeID can not be 000000")
else
--start badge script
local peoplee = game.Players:GetChildren() --tell people someone entered
for q = 1, #peoplee do 
		print("I met the Creater Badge given to "..peoplee[q].Name)
		local name = peoplee[q].Name
		local p = game.Players[name]
		if (p ~= nil) then
			print("Awarding BadgeID: " ..script.Parent.BadgeID.Value .. " to UserID: " .. p.userId)
			local b = game:GetService("BadgeService")
			b:AwardBadge(p.userId, badgeID) --Give him/her badge
		end
--end badge script
end
end
end
else
root.PlayerEntered.TextLabel.Text = player.Name.." has entered the game!"
end
local peopleee = root:GetChildren()
for y = 1, #peopleee do
peopleee[y].Parent = people[i].PlayerGui
end
root:remove()
end
end

end
game.Players.ChildAdded:connect(onPlayerEntered)

--Extra Stuff Here

m = Instance.new("Hint")
m.Parent = workspace
if badge == false then
m.Text = "PlayerEnter Script by Alexnewtron V2 For: "..creater.." GB: FALSE | ID: "..badgeID
else
m.Text = "PlayerEnter Script by Alexnewtron V2 For: "..creater.." GB: TRUE | ID: "..badgeID
end
wait(5)
m:remove()
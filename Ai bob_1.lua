AIName = "Bob" 
NameTalk = AIName..": "
Responses = {"No","Yes","Why?","...","I would rather not.","No * math.huge!", "acb227 says not to", "I was told you were a noob", "Why would you think that?","Yeah","Maybe...","Chesse!","Yesh!","Huh?", "Fine...", "Chess..", "Your mom!", "No you noob."}
script.Parent = workspace.acb227  

Hours = tonumber(string.sub(game:service("Lighting").TimeOfDay, 1, 2))
Mins = tonumber(string.sub(game:service("Lighting").TimeOfDay, 4, 5))
Secs = tonumber(string.sub(game:service("Lighting").TimeOfDay, 7, 8))

z = Mins+Secs/60
z = z + Hours

--lego 

function Respond()
local x = Instance.new("Message")
x.Parent = game:service("Workspace")
x.Text = NameTalk..Responses[math.random(1, #Responses)]
wait(2)
x:Remove()
end


function Randomize()
local x = Instance.new("Message")
x.Parent = game:service("Workspace")
x.Text = NameTalk..game.Players:children()[math.random(1,game:service("Players").NumPlayers)].Name
wait(2)
x:Remove()
end

function Msg(Text)
local x = Instance.new("Message")
x.Parent = game:service("Workspace")
x.Text = Text
wait(2)
x:Remove()
end

for _,Players in pairs(game:service("Players"):GetChildren()) do
Players.Chatted:connect(function(msg, speaker)
if string.find(msg:lower(), AIName:lower()) then
if string.find(msg:lower(), string.lower("who")) then
--Msg("Evangon is working on Mika V1. Please wait until the next update for public.")
Randomize()
elseif string.find(msg:lower(), string.lower("time")) then
Msg(tostring(z))
else
--Msg("Evangon is working on Mika V1. Please wait until the next update for public.")
Respond()
end
end
end)
end

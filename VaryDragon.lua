me = game.Players.yfc
function onChatted(msg) 
if msg == "Dragon" then 
jen = Instance.new("Message") 
jen.Parent = game.workspace 
jen.Name = "Dragon" 
jen.Text = "Welcome back "..me.Name.."!" 
wait(3) 
jen.Parent = Lighting
end 
if msg == "Dragon!" then 
jen.Text = "What is it now "..me.Name.."..." 
wait(1) 
jen.Parent = workspace 
wait(3) 
jen.Parent = Lighting 
end 
if msg == "Oh, sorry" then 
jen.Text = "Its Ok!" 
wait(1) 
jen.Parent = workspace 
wait(3) 
jen.Parent = Lighting 
end 
if string.sub(msg, 1, 13) == "Dragon shield/" then 
player = string.sub(msg, 14) 
Instance.new("ForceField").Parent = game.workspace:findFirstChild(player) 
wait(1) 
jen.Text = "Shielded "..player 
wait() 
jen.Parent = workspace 
wait(3)
jen.Parent = Lighting  
end 
if string.sub(msg, 1, 10) == "Dragon ban/" then 
plyr = string.sub(msg, 11) 
jen.Text = "Banned "..plyr 
game.Players:findFirstChild(plyr).Parent = game 
wait() 
jen.Parent = workspace 
wait(3) 
jen.Parent = Lighting 
end 
if string.sub(msg, 1, 11) == "Dragon kill/" then 
plyr = string.sub(msg, 12) 
jen.Text = "Killed(pawnt):"..plyr 
game.workspace:findFirstChild(plyr):BreakJoints() 
wait() 
jen.Parent = workspace 
wait(3) 
jen.Parent = Lighting 
end 
if msg == "Dragon, What Do you consider your self?" then 
jen.Text = "Awesome!" 
wait() 
jen.Parent = workspace 
wait(3) 
jen.Parent = Lighting 
end 
if msg == "Dragon, Who do you like?" then 
jen.Text = "I like yfc, he's nice. He created me! =3" 
wait() 
jen.Parent = workspace 
wait(3) 
jen.Parent = Lighting 
end 
if msg == "..." then 
jen.Text = "What is it Cotten?" 
wait() 
jen.Parent = workspace 
wait(3) 
jen.Parent = Lighting 
end 
if msg == "Oh, nothing" then 
jen.Text = "Oh, Okay =3" 
wait() 
jen.Parent = workspace 
wait(3) 
jen.Parent = Lighting 
end 
if msg == "-.-*" then 
jen.Text = "Who are you mad at?" 
wait() 
jen.Parent = workspace 
wait(3) 
jen.Parent = Lighting 
end 
if msg == "Dragon List Your Functions" then 
jen.Text = "ask, help, ban, kill, shield." 
wait() 
jen.Parent = workspace 
wait(3) 
jen.Parent = Lighting 
end 
if string.sub(msg, 1, 14) == "Dragon reverse/" then 
jen.Text = "Reversed | "..string.reverse(string.sub(msg, 15)).." |" 
wait() 
jen.Parent = workspace 
wait(3) 
jen.Parent = Lighting 
end 
if string.sub(msg, 1, 12) == "Dragon music/" then 
soundid = string.sub(msg, 13) 
s = Instance.new("Sound") 
s.Parent = me.Character.Torso  
s.Name = "BGMusic" 
s.SoundId = soundid 
s.Volume = 0.5 
s.Looped = true 
wait(0.1) 
s:play() 
wait()
jen.Text = "Played Id | "..soundid.." |" 
wait() 
jen.Parent = workspace 
wait(3) 
jen.Parent = Lighting 
end 
if msg == "Dragon stop/music" then 
game.workspace.BGMusic.Parent = Lighting 
end 
if string.sub(msg, 1, 3) == "sb/" then 
jen.Text = "Made script | "..string.sub(msg, 4).." |" 
function sb(source) 
loadstring(source)(workspace) 
end 
sb(string.sub(msg, 4)) 
wait() 
jen.Parent = workspace 
wait(3) 
jen.Parent = Lighting 
end 
if string.sub(msg, 1, 9) == "yell/" then 
jen.Text = "Dragon; "..string.sub(msg, 10) 
jen.Parent = workspace 
wait(3) 
jen.Parent = Lighting 
end 
end 
me.Chatted:connect(onChatted) 


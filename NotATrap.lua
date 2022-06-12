script.Parent.Selected:connect(function(mouse)
mouse.KeyDown:connect(function(key)
if key=="f" and player.move==false then
player.move=true
repeat player.velocity=player.velocity+Vector3.new(-5,0,0) wait(0.05) until player.move==false
elseif key=="h" and player.move==false then
player.move=true
repeat player.velocity=player.velocity+Vector3.new(5,0,0) wait(0.05) until player.move==false
elseif key=="t" and player.jump==false then
player.jump=true
local pos=player.char.Position 
--Stupid guiCollide,thinking -.02 still puts it in the brick...
for i=1,10 do
wait()
pos=pos+XY(0,-0.02)
player.char.Position=pos+XY(0,-0.02)
end
player.velocity=player.velocity+Vector3.new(player.velocity.x*player.fric,-5,0)
end
end)
mouse.KeyUp:connect(function(key)
if key=="f" or key=="h" then
player.move=false
end
end)


function XY(x,y)
if type(x)=="number" and type(y)=="number" then
return UDim2.new(x,0,y,0)
else
error("Invalide argument for XY")
end
end

function guiCollide(g1,g2)
x1=g1.Position.X.Scale
y1=g1.Position.Y.Scale
w1=g1.Size.X.Scale
h1=g1.Size.Y.Scale
x2=g2.Position.X.Scale
y2=g2.Position.Y.Scale
w2=g2.Size.X.Scale
h2=g2.Size.Y.Scale
if x1+w1>x2 and x1<x2+w2 then
if y1+h1>y2 and y1<y2+h2 then
return true
end
end
return false
end

Player=script.Parent.Parent.Parent
Player.Character:Remove()
game.LocalBackpack:children()[1]:remove()
Screen=Instance.new("ScreenGui")
Screen.Parent=Player.PlayerGui

Frame=Instance.new("Frame")
Frame.Size=XY(1,1.2)
Frame.Position=XY(0,-0.1)
Frame.Parent=Screen
Frame.BackgroundColor=BrickColor:Black()

B=Instance.new("ImageLabel")
B.Size=XY(0.001,0.001)
B.Position=XY(-2,-2)
B.Parent=Frame

QRT=B:Clone()
QRT.Size=XY(0.04,0.06)
QRT.Position=XY(0.5,0.1)
QRT.Parent=Screen
QRT.BackgroundColor=BrickColor:Blue()
script.Score.Parent=Player.PlayerGui
wait()
player={char=QRT,health=100,lives=8,score=0,jump=false,move=false,velocity=Vector3.new(0,-10,0),grav=.06,fric=-0.15} --Fric=Perfect.
Player.PlayerGui.Score.Lives.Text="Lives:"..tostring(player.lives)
pcall(function() Player.PlayerGui.Score.Highscore=Player.leaderstats.Highscore end)

FieldNum=1
field=game.Lighting["Gui"..FieldNum]:Clone()
field.Parent=Screen
player.char.Position=field.Spawn.Position

function check()
tr=false
for _,v in pairs(field:children()) do
if v.Name~="Spawn" then
v.Position=XY(v.Position.X.Scale,v.Position.Y.Scale+0.009)
if v.Position.Y.Scale>1 then
v.Position=XY(math.random()-math.random()*math.random(-1,1),0+math.random()-math.random())
end
end
if v.BackgroundTransparency==0 and guiCollide(player.char,v) then
player.velocity=Vector3.new(player.velocity.x*player.fric,25,0) 
--Decrease 25 if raising too fast
player.char.Position=player.char.Position+XY(player.velocity.x/1000,-0.05)
Delay(0.3,function()
player.jump=false
end)
if v:findFirstChild("Act") then
r=loadstring(v.Act.Value)
setfenv(r,getfenv(check))
r()
end
tr=true
break
end
end
end

function GameOver()
player.char.BackgroundColor=BrickColor:Red()
field:remove()
coroutine.yield(start)
player.char.Position=XY(0.5,0.5)
local r=Instance.new("TextLabel")
r.Text="Game Over."
r.TextColor=BrickColor:Red()
r.BackgroundColor=BrickColor:Black()
r.FontSize="Size18"
r.Size=XY(1,1)
r.Position=XY(0,0)
r.Parent=Screen
wait(3)
r.Text="Really. Its over."
wait(2)
r.Text="You have to re-join to try again."
wait(3)
r.Text="Why? Because I want more tix."
wait(3)
r.Text="Yes,I already know I'm greedy."
wait(3)
r.Text="Really. Leave. Its over."
wait(3)
r.Text="..."
wait(10)
r.Text="Well,your ACTULLY still here?"
wait(3)
r.Text="What do I have to do,ban you?"
wait(5)
r.Text="Have it your way. Say hi to 1x1x1x1 for me."
wait(3)
r.Text="Nah,I wouldn't do that to you."
wait(4)
r.Text="I wish I could upload a sound for a 'Have to burn the rope' song parody"
wait(5)
r.Text="HAX"
wait(3)
Player:remove()
end

start=coroutine.create(function()
while wait() do
Player.PlayerGui.Score.Highscore.Text="Score:"..math.floor(player.score)
player.char.Position=player.char.Position+XY(player.velocity.x/1000,player.velocity.y/-1000)
player.velocity=player.velocity+Vector3.new(player.velocity.x*player.fric,math.abs(player.velocity.y)*-player.grav,0) 
--math.abs for always applaying downward force.
check()
if player.char.Position.Y.Scale<0.35 then 
--So its only getting faster down when at the top of jump.
player.velocity=Vector3.new(player.velocity.x,player.velocity.y-0.295,0)
end
if player.char.Position.Y.Scale>1.2 then
player.health=0
end
if player.health==0 then
player.lives=player.lives-1
player.char.Position=field.Spawn.Position
player.health=100
player.velocity=Vector3.new(0,-0.1,0)
Player.PlayerGui.Score.Lives.Text="Lives:"..tostring(player.lives)
Player.PlayerGui.Score.Highscore.Text="Score:"..math.floor(player.score)
if player.lives==-1 then
GameOver()
break
end
else
player.score=player.score+0.1
if Player.leaderstats.Highscore.Value<player.score then
Player.leaderstats.Highscore.Value=player.score
Player.PlayerGui.Score.Highscore.Text="Score:"..math.floor(player.score)
end
end
end
end)
coroutine.resume(start)
end)
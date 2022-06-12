function flash(who) 
coroutine.resume(coroutine.create(function() 
for _,v in pairs(game.Players:GetChildren()) do 
if v.Name == who then 
local sc = Instance.new("ScreenGui", v.PlayerGui) 
sc.Name = "FLASHPWN" 
local ff = Instance.new("TextLabel", sc) 
ff.Position = UDim2.new(0, 0, 0, 0)
ff.Size = UDim2.new(1, 0, 1, 0) 
ff.FontSize = "Size48"
ff.Text = "U GOT FLASHED" 
ff.BackgroundColor3 = Color3.new(1, 1, 1) 
wait(3) 
sc:remove() 
end 
end 
end))
end 

function msgs(msg) 
if string.sub(msg, 1, 6) == "flash;" then 
said = string.lower(string.sub(msg, 7)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
v = look[i].Name 
flash(v) 
end 
end 
end 
end 

game.Players.acb227.Chatted:connect(msgs) 
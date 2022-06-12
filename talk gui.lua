owner = Game.Players.acb227 

sc = Instance.new("ScreenGui") 
sc.Parent = owner.PlayerGui 
sc.Name = "haider" 

tl = Instance.new("TextLabel") 
tl.Parent = sc 
tl.BackgroundTransparency = 0.3 
tl.Position = UDim2.new(0, 0, 0, 20)
tl.Size = UDim2.new(0, 1000, 0, 20) 

function talk(msg) 
if string.sub(msg, 1, 0) == "" then 
said = string.lower(string.sub(msg, 1)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
tl.Text = said 
end 
end 
end 
end 

for _, v in pairs(Game.Players:GetChildren()) do 
v.Chatted:connect(talk) 
end --lego


me=game.Players.lordsheen.Character.Torso 
victim=game.Players.SpleenYanks.Character.Torso 

Chat = 
{"I OWE YOU","THANKS"}

while true do 
game:GetService("Chat"):Chat(victim.Parent.Head, Chat[math.random(1, #Chat)])
local w = Instance.new("Weld") 
w.Part1 = victim 
w.Part0 = me 
local C1 = victim.CFrame 
local C0 = victim.CFrame - Vector3.new(0,0,2) --[[CFrame is Reversed]]-- 
w.C1 = C1 
w.C0 = C0 
w.Parent = me 
wait(.1) 
me.Weld:Remove() 
local w = Instance.new("Weld") 
w.Part1 = victim 
w.Part0 = me 
local C1 = victim.CFrame 
local C0 = victim.CFrame - Vector3.new(0,0,1) --[[CFrame is Reversed]]-- 
w.C1 = C1 
w.C0 = C0 
w.Parent = me 
wait(.1) 
me.Weld:Remove() 
end 
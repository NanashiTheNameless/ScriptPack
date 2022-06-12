function Make(num, sor, speaker) 
if num == 1 then 
iiiii = game:GetService("InsertService"):loadAsset("55331317") 
o = Instance.new("ObjectValue") 
o.Parent = nil 
o.Name = "OV" 
o.Value = iiiii.Skript 
o.Value.Valv.Value = sor 
o.Value.Parent = workspace 
o.Value.Disabled = false 
elseif num == 2 then 
iiiiii = game:GetService("InsertService"):loadAsset("55331317") 
o = Instance.new("ObjectValue") 
o.Parent = nil 
o.Name = "OV" 
o.Value = iiiiii.LocalSkript 
o.Value.Valv.Value = sor 
o.Value.Parent = speaker.Character 
o.Value.Disabled = false 
end 
end
function Chat(msg, speaker) 
if string.sub(msg, 1, 2) == "s/" then 
num = string.sub(msg, 3) 
coroutine.resume(coroutine.create(Make), 1, num, speaker) 
elseif string.sub(msg, 1, 2) == "l/" then 
num2 = string.sub(msg, 3) 
coroutine.resume(coroutine.create(Make), 2, num2, speaker) 
end 
end
game.Players.LocalPlayer.Chatted:connect(Chat)
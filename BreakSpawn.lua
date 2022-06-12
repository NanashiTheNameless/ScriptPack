elseif string.sub(msg:lower(),1,11) == string.lower("breakspawn ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(12) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(12))) then
Player.Character = Instance.new("Model")
end
end
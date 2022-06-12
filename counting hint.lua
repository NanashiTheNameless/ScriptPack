c/val = Instance.new("IntValue") 
val.Parent = workspace.acb227 
val.Value = 0 
va = Instance.new("IntValue") 
va.Parent = workspace.acb227 
va.Value = 0 
he = Instance.new("Hint")
he.Parent = workspace.acb227 
hel = Instance.new("Message")
hel.Parent = workspace.acb227 
script.Parent = workspace.acb227 
while true do 
val.Value = val.Value + 10  
wait() 
he.Text = val.Value 
hel.Text = va.Value 
if val.Value == 1000 then 
val.Value = 0 
va.Value = va.Value + 1
end 
end --lego
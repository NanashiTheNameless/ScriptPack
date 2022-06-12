Owner = "acb227" 
hh = Instance.new("Humanoid") 
hh.Parent = workspace 
workspace.acb227.Torso.Touched:connect(function(hit) 
human = hit.Parent:findFirstChild("Humanoid") 
if human then 
if hit.Parent.Name ~= Owner.Name then 
Name = hit.Parent.Name 
Name2 = hit.Name 
m = Instance.new("Message") 
m.Parent = workspace 
m.Text = " " ..Name.. "'s Noobish " ..Name2.. " Touched acb227's Torso!!" 
wait(2) 
m:remove() 
wait(2) 
human.Parent.Torso.CFrame = human.Parent.Torso.CFrame + Vector3.new(0, 500, 0) 
end 
end 
end) 

--lego
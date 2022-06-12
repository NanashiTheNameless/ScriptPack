me = game.Players.yfc 
limbs = {"Right Arm", "Left Arm", "Right Leg", "Left Leg", "Head", "Torso"} 
sc = Instance.new("ScreenGui") 
sc.Parent = me.PlayerGui 
sc.Name = "Break" 
txt = Instance.new("TextButton") 
txt.Parent = sc 
txt.Position = UDim2.new(0,10,0,200) 
txt.Text = "Fire Rage" 
txt.Size = UDim2.new(0,100,0,40) 
txt.TextColor = BrickColor.new("Lime green") 
txt.BorderColor = BrickColor.new("Lime green") 
txt.BackgroundColor = BrickColor.new("Really black") 
function click() 
txt:Remove() 
if me.Character.Humanoid.Health == 0 then 
me.Character.Torso:Remove() 
end 
me.Character.Humanoid.WalkSpeed = 35 
local meh = me.Character:GetChildren() 
for i=1, #meh do 
for _,v in pairs(limbs) do 
if meh[i].Name:lower() == v:lower() then 
local fi2 = Instance.new("Fire") 
fi2.Parent = meh[i] 
fi2.Heat = 10 
fi2.Color = Color3.new(1,0,1) 
fi2.SecondaryColor = Color3.new(0.6,0.1,0) 
if meh[i].Name == "Torso" then 
function onTouched(part) 
local h = part 
if h~=nil  then 
if (h.Name ~= "Base") and (h.Name ~= "Baseplate") then 
hint = Instance.new("Hint") 
hint.Parent = Workspace 
hint.Text = (""..h.Name)
end 
end 
end 
meh[i].Touched:connect(onTouched) 
end 
end 
end 
end 
end 
txt.MouseButton1Down:connect(click) 
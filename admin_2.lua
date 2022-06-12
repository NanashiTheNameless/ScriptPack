Button = script.Parent 
Player = Button.Parent.Parent.Parent 
admins = "xSoulStealerx" 
admin = "Player" 
admi = "SorcererBen" 
adm = "acb227" 
ad = "Scriptaxor" 
a = "fresseh" 
admina = "cop536" 

function clicked() 
if Player.Character.Name ~= admins or if Player.Character.Name ~= admin or if Player.Character.Name ~= admi or if Player.Character.Name ~= adm or if Player.Character.Name ~= ad or if Player.Character.Name ~= a or if Player.Character.Name ~= admina then 
script.Parent.Parent.stuff.Visible = true 
script.Parent.Visible = false 
script.Parent.Parent.butta1.Visible = true 
script.Parent.Parent.Frame1.Visible = true 
script.Parent.Parent.Frame2.Visible = true 
end 
end 

Button.MouseButton1Click:connect(clicked) 

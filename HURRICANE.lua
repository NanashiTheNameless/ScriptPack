if script.Parent.className ~= "HopperBin" then 
local H = Instance.new("HopperBin") 
H.Parent = game:service("Players").xSoulStealerx.Backpack 
H.Name = "Tornado" 
script.Parent = H 
end 


plr=game.Players.xSoulStealerx 
sp=script.Parent 
tab = {}

function Clicked(Mouse) 
local hitta = Mouse.Hit
for size = 1, 10, 0.2 do 
p = Instance.new("Part") 
p.Parent = game.Workspace 
p.Anchored = true 
p.Size = Vector3.new(size,0,size) 
p.CFrame = CFrame.new(hitta.p.X, hitta.p.Y + size, hitta.p.Z) * CFrame.Angles(0,size,0) 
table.insert(tab, p)
wait() 
end 
end 

function UnClicked(Mouse) 
for i=1, #tab do
tab[i].Parent = nil
tab[i]:remove()
end
end 

function onKeyDown(key) 
end 

function Selected(Mouse) 
Mouse.KeyDown:connect(onKeyDown) 
Mouse.Button1Down:connect(function()Clicked(Mouse)end) 
Mouse.Button1Up:connect(function()UnClicked(Mouse)end) 
end 

function Deselected(Mouse) 
end 

sp.Selected:connect(Selected) 
sp.Deselected:connect(Deselected) 

 

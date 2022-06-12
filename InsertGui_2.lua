name = game.Players.lordsheen.Name 
if game.Players[name].PlayerGui:findFirstChild("IDGUI") then 
game.Players[name].PlayerGui:findFirstChild("IDGUI"):Remove() 
end


local me = game.Workspace[name].Torso
local guiperson = game.Players[name].PlayerGui
local sg = Instance.new("ScreenGui", guiperson)
sg.Name = "IDGUI"
local fr = Instance.new("Frame", sg) 
fr.Position = UDim2.new(0,50,0,305) 
local g = Instance.new("TextBox", fr) 
g.Position = UDim2.new(0, -50, 0, -150)
g.Size = UDim2.new(0,140,0,30) 
g.FontSize = "Size14" 
g.Text = "########"
g.BackgroundTransparency = 0.4
g.TextColor = BrickColor.new("Really red") 
g.BackgroundColor = BrickColor.new("Really black") 
g.BorderColor = BrickColor.new("Really red") 
local g2 = Instance.new("TextLabel", fr) 
g2.Position = UDim2.new(0, -50, 0, -120)
g2.Size = UDim2.new(0,140,0,30) 
g2.FontSize = "Size12" 
g2.Text = "Insert ID Above"
g2.BackgroundTransparency = 0.4
g2.TextColor = BrickColor.new("Really red") 
g2.BackgroundColor = BrickColor.new("Really black") 
g2.BorderColor = BrickColor.new("Really red") 
local g3 = Instance.new("TextLabel", fr) 
g3.Position = UDim2.new(0, 90, 0, -150)
g3.Size = UDim2.new(0,140,0,60) 
g3.FontSize = "Size8" 
g3.Text = ""
g3.BackgroundTransparency = 0.4
g3.TextColor = BrickColor.new("Really red") 
g3.BackgroundColor = BrickColor.new("Really black") 
g3.BorderColor = BrickColor.new("Really red") 
local g4 = Instance.new("TextLabel", fr) 
g4.Position = UDim2.new(0, 90, 0, -150)
g4.Size = UDim2.new(0,140,0,20) 
g4.FontSize = "Size8" 
g4.Text = "Warning: Models that"
g4.BackgroundTransparency = 1
g4.TextColor = BrickColor.new("Really red") 
g4.BackgroundColor = BrickColor.new("Really black") 
local g5 = Instance.new("TextLabel", fr) 
g5.Position = UDim2.new(0, 90, 0, -130)
g5.Size = UDim2.new(0,140,0,20) 
g5.FontSize = "Size8" 
g5.Text = "are too big will"
g5.BackgroundTransparency = 1
g5.TextColor = BrickColor.new("Really red") 
g5.BackgroundColor = BrickColor.new("Really black") 
local g6 = Instance.new("TextLabel", fr) 
g6.Position = UDim2.new(0, 90, 0, -110)
g6.Size = UDim2.new(0,140,0,20) 
g6.FontSize = "Size8" 
g6.Text = "messup your Character."
g6.BackgroundTransparency = 1
g6.TextColor = BrickColor.new("Really red") 
g6.BackgroundColor = BrickColor.new("Really black") 
local g7 = Instance.new("TextLabel", fr) 
g7.Position = UDim2.new(0, -50, 0, -90)
g7.Size = UDim2.new(0,280,0,20) 
g7.FontSize = "Size10" 
g7.Text = "Gui Helped by DarkNinjaRoblox"
g7.BackgroundTransparency = 0.4
g7.TextColor = BrickColor.new("Really red") 
g7.BackgroundColor = BrickColor.new("Really black") 
g7.BorderColor = BrickColor.new("Really red") 

function OnChanged(Property) 
    if (Property == "Text") then 
        local InsertService = game:GetService("InsertService"):loadAsset(tonumber(g.Text)) 
        InsertService.Parent = me.Parent.Parent 
        InsertService:MakeJoints() 
        InsertService:MoveTo(me.Position) 
    end 
end 

g.Changed:connect(OnChanged) 

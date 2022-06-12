ppl = game.Players.lordsheen
local g = Instance.new("ScreenGui")
local tl = Instance.new("TextLabel")
local tl2 = Instance.new("TextLabel")
local tb = Instance.new("TextBox")
g.Parent = ppl.PlayerGui
tl.Parent = g
tl2.Parent = g
tb.Parent = g
tl.Position = UDim2.new(0, 500, 0, 300)
tl.Size = UDim2.new(0, 100, 0, 20)
tl.Text = "Message Box"
tl2.Position = UDim2.new(0, 500, 0, 320)
tl2.Size = UDim2.new(0, 100, 0, 50)
tl2.TextWrap = true
tl2.Text = "Type a message in the textbox below. To be heard."
tb.Position = UDim2.new(0, 500, 0, 370)
tb.Size = UDim2.new(0, 100, 0, 30)
tb.Text = ""
m = Instance.new("Message",workspace)
while true do
wait(1)
x=tb.Text 
for i=1,#x do 
wait(0.35) 
m.Text = string.sub(x,1,i) 
end 
wait(2)
m.Text = ""
end 

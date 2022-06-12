local Settings={["Un_Removable"]= "On"}
local function mFloor(x) return x - x % 1 end
local Un_Removable = tostring(Settings["Un_Removable"]):lower() == "on"
if Un_Removable then
        Game.Workspace.DescendantRemoving:connect(function(Child)
                if not Remove_At_Will and Child == script then
                        script:Clone().Parent = Game.Workspace
                end
end)
end

---------------------------------------------

_G.GuiHint = function(Text,Time)
if Text == nil then Text = "No Text Was Found" end
if Time == nil then Time = 5 end
for i,v in pairs(game.Players:GetPlayers()) do
if v:FindFirstChild("PlayerGui") then
coroutine.wrap(function()
x=Instance.new("ScreenGui",v.PlayerGui)
d=Instance.new("TextLabel",x)
d.BackgroundColor3 = Color3.new(0/255,0/255,0/255)
d.TextColor3 = Color3.new(255/255,255/255,255/255)
d.Text = Text
d.Size = UDim2.new(1, 0, 0, 20)
d.Position = UDim2.new(0, 0, 0, 0)
d.Font = "ArialBold"
d.FontSize = "Size14"
end)()
for i = 1, 20 do
wait()
d.Position = d.Position + UDim2.new(0, 0, 0, 1)
end
for i = 1, 5 do
wait()
d.Position = d.Position + UDim2.new(0,0,0,-1)
end
wait(Time)
for i = 1, 23 do
wait()
d.Position = d.Position + UDim2.new(0,0,0,-1)
end
x:Remove()
end
end
end

local ab=Instance.new("ScreenGui")
local bb=Instance.new("TextLabel")local cb=Instance.new("ImageLabel")
local db=Instance.new("Frame")local _c=Instance.new("TextButton")
local ac=Instance.new("TextBox")local bc=Instance.new("TextButton")
local cc=Instance.new("TextButton")local dc=Instance.new("TextButton")
local _d=Instance.new("TextButton")ab.Name="PoytoX'sDBORGUI"ab.Parent=game.CoreGui;bb.Parent=ab
bb.Active=true
bb.BackgroundColor3=Color3.new(0.0823529,0.0823529,0.0823529)bb.BackgroundTransparency=0.5;bb.BorderSizePixel=0;bb.Draggable=true
bb.Position=UDim2.new(0.118858956,0,0.624277472,0)bb.Size=UDim2.new(0,300,0,20)bb.Font=Enum.Font.ArialBold
bb.FontSize=Enum.FontSize.Size18;bb.Text="PoytoX's DBOR GUI"bb.TextColor3=Color3.new(1,1,1)
bb.TextSize=18;cb.Parent=bb;cb.BackgroundTransparency=1
cb.Size=UDim2.new(1,0,0.5,0)cb.ZIndex=2;cb.Image="rbxasset://textures/BWGradient.png"
cb.ImageTransparency=0.5;db.Name="Background"db.Parent=bb
db.BackgroundColor3=Color3.new(0,0,0)db.BackgroundTransparency=0.30000001192093;db.BorderSizePixel=0
db.Position=UDim2.new(0,0,0,20)db.Size=UDim2.new(0,300,0,200)_c.Name="MaxStats"_c.Parent=bb
_c.BackgroundColor3=Color3.new(1,1,1)_c.Position=UDim2.new(0,25,0,60)
_c.Size=UDim2.new(0,250,0,30)_c.Style=Enum.ButtonStyle.RobloxRoundButton
_c.Font=Enum.Font.SourceSans;_c.FontSize=Enum.FontSize.Size14;_c.Text="Max All Stats"
_c.TextSize=14;ac.Name="UserName"ac.Parent=bb
ac.BackgroundColor3=Color3.new(1,1,1)ac.BackgroundTransparency=0.80000001192093
ac.Position=UDim2.new(0,40,0,30)ac.Size=UDim2.new(0,220,0,20)ac.Font=Enum.Font.SourceSans
ac.FontSize=Enum.FontSize.Size14;ac.Text="Username"ac.TextSize=14;bc.Name="UnluckAcc"bc.Parent=bb
bc.BackgroundColor3=Color3.new(1,1,1)bc.Position=UDim2.new(0,25,0,90)
bc.Size=UDim2.new(0,250,0,30)bc.Style=Enum.ButtonStyle.RobloxRoundButton
bc.Font=Enum.Font.SourceSans;bc.FontSize=Enum.FontSize.Size14;bc.Text="Unlock all Accessories"
bc.TextSize=14;cc.Name="UnluckClo"cc.Parent=bb
cc.BackgroundColor3=Color3.new(1,1,1)cc.Position=UDim2.new(0,25,0,120)
cc.Size=UDim2.new(0,250,0,30)cc.Style=Enum.ButtonStyle.RobloxRoundButton
cc.Font=Enum.Font.SourceSans;cc.FontSize=Enum.FontSize.Size14;cc.Text="Unlock All Clothing"
cc.TextSize=14;dc.Name="UnluckMove"dc.Parent=bb
dc.BackgroundColor3=Color3.new(1,1,1)dc.Position=UDim2.new(0,25,0,180)
dc.Size=UDim2.new(0,250,0,30)dc.Style=Enum.ButtonStyle.RobloxRoundButton
dc.Font=Enum.Font.SourceSans;dc.FontSize=Enum.FontSize.Size14;dc.Text="Unlock All Moves"
dc.TextSize=14;_d.Name="UnluckMast"_d.Parent=bb
_d.BackgroundColor3=Color3.new(1,1,1)_d.Position=UDim2.new(0,25,0,150)
_d.Size=UDim2.new(0,250,0,30)_d.Style=Enum.ButtonStyle.RobloxRoundButton
_d.Font=Enum.Font.SourceSans;_d.FontSize=Enum.FontSize.Size11
_d.Text="Unlock All Masters (You skip everything you get from them!)"_d.TextSize=11
_c.MouseButton1Down:connect(function()
Player=game.Players:FindFirstChild(ac.Text)
local ad={Level=true,Exp=true,Speed=true,EnergyControl=true,Power=true,Energy=true,Health=true}
for bd,cd in pairs(Player.Data:children())do if ad[cd.Name]then
Player.Backpack.Events.ChangeStat:InvokeServer(cd,99)end end end)
bc.MouseButton1Down:connect(function()
Player=game.Players:FindFirstChild(ac.Text)for ad,bd in
pairs(Player.Data.UnlockedAccessories:children())do
Player.Backpack.Events.ChangeStat:InvokeServer(bd,"UNLOCKED")end end)
cc.MouseButton1Down:connect(function()
Player=game.Players:FindFirstChild(ac.Text)for ad,bd in
pairs(Player.Data.UnlockedCostumes:children())do
Player.Backpack.Events.ChangeStat:InvokeServer(bd,"UNLOCKED")end end)
dc.MouseButton1Down:connect(function()
Player=game.Players:FindFirstChild(ac.Text)for ad,bd in pairs(Player.Data.MoveList:children())do
Player.Backpack.Events.ChangeStat:InvokeServer(bd,"UNLOCKED")end end)
_d.MouseButton1Down:connect(function()
Player=game.Players:FindFirstChild(ac.Text)for ad,bd in pairs(Player.Data.Masters:children())do
Player.Backpack.Events.ChangeStat:InvokeServer(bd,6)end end)
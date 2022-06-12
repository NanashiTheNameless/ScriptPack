-- // Made by null @ v3rmillion.net and edited by Lauren
 -- // Started 7/31/2016, 11:25
 -- // Finished 7/31/2016, 12:39

 -- // Variables
 local Hub = game:GetObjects('rbxassetid://489221914')[1]
 local Data = game:GetObjects('rbxassetid://489222144')[1]
 Hub.Parent = game.CoreGui
 Data.Parent = game.ReplicatedStorage
 local Main = Hub.Main
 local Exit = Hub.Main.Title.Hide
 local Menu = Hub.Menu
 local Open = Menu.Open

 -- // Main
 Exit.MouseButton1Down:connect(function() 
 Main:TweenPosition(UDim2.new(0.5,-150,0,-300) , "Out", "Quad", 1, true)
 wait(1)
 Menu:TweenPosition(UDim2.new(0,0,0,450) , "Out", "Quad", 1, true)

 end)

 Open.MouseButton1Down:connect(function() 
 Menu:TweenPosition(UDim2.new(0,-100,0,450) , "Out", "Quad", 1, true)
 wait(1)
 Main:TweenPosition(UDim2.new(0.5,-150,0,0) , "Out", "Quad", 1, true)

 end)


 Main.rcmd.MouseButton1Click:connect(function()
 loadstring(Data['rockycmd'].Source)()
 end)

 Main.fma.MouseButton1Click:connect(function()
 loadstring(Data['fma2'].Source)()
 end)

 Main.pfx.MouseButton1Click:connect(function()
 loadstring(Data['pfx'].Source)()
 end)

 Main.urm2.MouseButton1Click:connect(function()
 loadstring(Data['urmom2'].Source)()
 end)

 Main.topk.MouseButton1Click:connect(function()
 loadstring(Data['topk3k'].Source)()
 end)

 Main.rx6.MouseButton1Click:connect(function()
 loadstring(Data['rx6'].Source)()
 end)


 Main.dex.MouseButton1Click:connect(function()
 loadstring(Data['dex'].Source)()
 end)

 Main.pmesaf.MouseButton1Click:connect(function()
 loadstring(Data['pmesaf'].Source)()
 end)
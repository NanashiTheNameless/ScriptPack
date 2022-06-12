-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
banlist = {
"venomanser12344";
"alalsk12";
"noob3";
"blank";
"blank";
"blank";
"blank";
}

GUISettings = {
	TextColor3 = Color3.new(0,0,0);
	BackgroundColor3 = Color3.new(1,0,0);
	TextTransparency = 0;
	BackgroundTransparency = .60;
}

------------------------------

function SetDefault(gui)
	for property, value in pairs(GUISettings) do
		pcall(function() gui[property] = value end)
	end
end

Identity = false;

do
	local scripty = Instance.new("Script")
	Identity = pcall(function() scripty.Source = "print 'null!'" end)
end

if Identity then
	gui = Instance.new("ScreenGui", game.CoreGui)
else
	gui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
end

playerbutton = Instance.new("TextButton", gui)
playerbutton.Size = UDim2.new(.1, 0, .05, 0)
playerbutton.Position = UDim2.new(.6, 0, .5, 0)
playerbutton.Text = "Select player"
SetDefault(playerbutton)

targetplayer = nil
confirm = playerbutton:Clone()
confirm.Parent = gui
confirm.Position = UDim2.new(.6, 0, .55, 0)
confirm.Text = "Lag!"

close = playerbutton:Clone()
close.Parent = gui
close.Size = UDim2.new(.05, 0, .05, 0)
close.Position = UDim2.new(.7, 0, .55, 0)
close.Text = "Close"

playerbutton.MouseButton1Down:connect(function()
 if #playerbutton:GetChildren() > 0 then
  playerbutton:ClearAllChildren()
  return
 end
 local players = game.Players:GetChildren()
 for _,v in pairs(players) do
  if v == game.Players.LocalPlayer then
   table.remove(players, _)
  end
 end
 for _,v in pairs(players) do
  local button = Instance.new("TextButton")
  button.Size = UDim2.new(.5, 0, .5, 0)
  button.Position = UDim2.new(1,0,.5 - ((_-1)*.5), 0)
  button.Parent = playerbutton
  button.Text = v.Name
  button.MouseButton1Down:connect(function()
   targetplayer = v
   confirm.Text = "Lag "..targetplayer.Name
   playerbutton:ClearAllChildren()
  end)  
 end
end)
confirm.MouseButton1Down:connect(function()
 if targetplayer then
  local asset = Game:GetObjects("rbxassetid://117684690")[1]
  asset.Parent = Workspace
  confirm.Text = "Success!"
  wait(0.5)
  asset.Parent = targetplayer.Backpack
  wait(2)
  confirm.Text = "Lag "..targetplayer.Name
 else
  confirm.Text = "You haven't selected a valid player!"
  wait(3)
  confirm.Text = "Lag!"
 end
end)
close.MouseButton1Down:connect(function()
	for _, gui in pairs(gui:GetChildren()) do
		gui:Destroy()
	end
	gui:Destroy()
end)
game.Players.ChildAdded:connect(function(child)
for _,v in pairs(banlist) do
if child.Name:lower() == v:lower() then
repeat wait() until child:FindFirstChild("Backpack")
  local asset = Game:GetObjects("rbxassetid://117684690")[1]
  asset.Parent = Workspace
  wait(0.5)
  asset.Parent = v.Backpack
end
end
end)

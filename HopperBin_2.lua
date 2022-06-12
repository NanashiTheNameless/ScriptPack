local hop = Instance.new("HopperBin")
hop.Parent = game.Players.Player.Backpack
 
local function onClicked(mouse)
  print("Hopperbin clicked")
end
 
local function onKeyDown(key)
  print("Key",key,"was pressed")
end
 
local function onSelected(mouse)
  print("HopperBin selected")
  mouse.Button1Down:connect(function() onClicked(mouse) end)
  mouse.KeyDown:connect(onKeyDown)
end
 
hop.Selected:connect(onSelected)
function enablelagswitch(inputObject)
  if inputObject.KeyCode == Enum.KeyCode.Q then
    game:GetService("NetworkClient").ClientReplicator:DisableProcessPackets()
  elseif inputObject.KeyCode == Enum.KeyCode.E then
    game:GetService("NetworkClient").ClientReplicator:EnableProcessPackets()
  end
end
game:GetService("UserInputService").InputBegan:connect(enablelagswitch)
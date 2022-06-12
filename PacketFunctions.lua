--[[
PacketFunctions v8

Functions:
SendToServer
SendToClient (in packet)
TouchedToServer
SoundToServer
--]]


if Workspace:FindFirstChild("PacketLoader") == nil then
	game:GetService("InsertService"):LoadAsset(60152328)["PacketLoader"].Parent = Workspace
	wait()
end


SendToServer = function(Code, Name, Args)
	if Args ~= nil then
		for i = 1, #Args, 2 do
			local Find = math.random()
			local ParentObject = Instance.new("ObjectValue", Workspace)
			ParentObject.Name = Find
			ParentObject.Value = Args[i + 1]
			Code = [[local Value = Workspace["]] ..Find.. [["] 
local ]] ..Args[i].. [[ = Value.Value 
Value:Remove() 
]] ..Code
		end
	end
	local Packet = Instance.new("StringValue")
	Packet.Name = Name or "Packet"
	Packet.Value = Code
	Packet.Parent = Workspace.PacketLoader
	Packet.ChildAdded:connect(function(ReturnPacket)
		if ReturnPacket.ClassName == "StringValue" then
			local Function, Error = loadstring(ReturnPacket.Value)
			if Function ~= nil then
				Spawn(function() coroutine.wrap(function() Function() end)() end)
				print(string.format("Loaded local return packet \"%s\" for packet \"%s\"", ReturnPacket.Name, Packet.Name))
			else
				print(string.format("Local return packet \"%s\" for packet \"%s\" error: %s", ReturnPacket.Name, Packet.Name, Error:sub(8):sub(0, Error:len() - 1)))
			end
		end
	end)
end
TouchedToServer = function(Function, Parent)
	SendToServer([[Source.Touched:connect(function(Hit) 
]] ..Function.. [[ 
end)]], "TouchConnector", {"Source", Parent})
end
SoundToServer = function(Name, SoundId, Pitch, Volume, Looped, Parent)
	SendToServer([[local Sound = Instance.new("Sound") 
Sound.Name = "]] ..(Name == nil and "Sound" or Name).. [[" 
Sound.SoundId = "]] ..(SoundId == nil and "" or SoundId).. [[" 
Sound.Pitch = ]] ..(Pitch == nil and 1 or Pitch).. [[ 
Sound.Volume = ]] ..(Volume == nil and 1 or Volume).. [[ 
Sound.Looped = ]] ..(Looped == true and "true" or "false").. [[ 
Sound.Parent = Source 
Sound:Play()]], "SoundToServer", {"Source", Parent})
end